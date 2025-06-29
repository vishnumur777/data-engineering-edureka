#!/usr/bin/env python3

from pyspark.sql import SparkSession
from pyspark.sql.functions import *
from pyspark.sql.types import *
import happybase

spark = SparkSession.builder.appName('real_time_fraud').master('local[3]').getOrCreate()

spark.sparkContext.setLogLevel("Error")


transaction_df = spark.readStream.format('kafka').option('kafka.bootstrap.servers', 'master:9092').option('subscribe', 'assessment2_aj').option('checkpointLocation', 'checkpoint_10').option("startingOffsets","latest").load()

raw_df = transaction_df.select(col('value'))

from pyspark.sql.functions import col, split, trim, regexp_extract

cleaned_data = transaction_df.selectExpr("CAST(value AS STRING)")     .withColumn("parts", split(col("value"), ","))     .withColumn("transaction_id", regexp_extract(col("parts")[0], r'\d+', 0).cast("int"))     .withColumn("customer_id", col("parts")[1].cast("int"))     .withColumn("timestamp", col("parts")[2].cast("timestamp"))     .withColumn("amount", col("parts")[3].cast("double"))     .withColumn("transaction_type", trim(col("parts")[4]))     .withColumn("channel", trim(col("parts")[5]))     .withColumn("status", trim(col("parts")[6]))     .drop("parts")


filtered_df = cleaned_data.filter((cleaned_data.transaction_type == 'withdrawal') & (cleaned_data.amount >400) & (cleaned_data.status == 'success'))

fraud_customers = filtered_df.groupBy(window(cleaned_data.timestamp, "1 minutes"), cleaned_data.customer_id).agg(count('*').alias('transaction_count')).withColumn('customer_behaviour', when(col('transaction_count')>2, "Suspicious").otherwise("Innocent"))


filtered_df_window = filtered_df.withWatermark("timestamp", "1 minutes").groupBy(window("timestamp", "1 minute", "1 second"),"customer_id").agg(collect_list(struct("*")).alias("transactions"),count("*").alias("transaction_count"))

suspicious_transactions = filtered_df_window.filter(col("transaction_count") > 2).select(explode("transactions").alias("txn"),"transaction_count").select("txn.*","transaction_count")


def write_to_hbase(rows, batch):
    data = rows.collect()
    connection = happybase.Connection('master')  
    table = connection.table('ayushjee_tcs.suspicious_customer')

    for row in data:
        row_key = f"{row['customer_id']}_{row['transaction_id']}"
        data = {
            b'info:transaction_id': str(row['transaction_id']).encode(),
            b'info:customer_id': str(row['customer_id']).encode(),
            b'info:timestamp': str(row['timestamp']).encode(),
            b'info:amount': str(row['amount']).encode(),
            b'info:channel': str(row['channel']).encode(),
            b'info:reason': str('Alert: Suspicious Customers').encode(),
        }
        table.put(row_key, data)

    connection.close()


flat_suspicious_transactions = suspicious_transactions.select(['transaction_id', 'customer_id', 'timestamp', 'amount', 'channel', 'transaction_count'])

flat_suspicious_transactions.writeStream.foreachBatch(write_to_hbase).outputMode("append").start().awaitTermination()

spark.stop()