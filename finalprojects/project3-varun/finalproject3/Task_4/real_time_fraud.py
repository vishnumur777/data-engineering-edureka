from pyspark.sql.functions import col, split, trim, regexp_extract
from pyspark.sql import SparkSession
from pyspark.sql.functions import *
from pyspark.sql.types import *
import happybase

spark = SparkSession.builder.appName('real_time_fraud').master('local[3]').getOrCreate()

spark.sparkContext.setLogLevel("Error")

transaction_df = spark.readStream.format('kafka').option('kafka.bootstrap.servers', 'master:9092').option('subscribe', 'assessment2_aj').option('checkpointLocation', 'checkpoint_10').option("startingOffsets","latest").load()

raw_df = transaction_df.select(col('value'))


cleaned_data = transaction_df.selectExpr("CAST(value AS STRING)")     .withColumn("parts", split(col("value"), ","))     .withColumn("transaction_id", regexp_extract(col("parts")[0], r'\d+', 0).cast("int"))     .withColumn("customer_id", col("parts")[1].cast("int"))     .withColumn("timestamp", col("parts")[2].cast("timestamp"))     .withColumn("amount", col("parts")[3].cast("double"))     .withColumn("transaction_type", trim(col("parts")[4]))     .withColumn("channel", trim(col("parts")[5]))     .withColumn("status", trim(col("parts")[6]))     .drop("parts")

filtered_df = cleaned_data.filter((cleaned_data.transaction_type == 'withdrawal') & (cleaned_data.amount >400) & (cleaned_data.status == 'success'))

fraud_customers = filtered_df.groupBy(window(cleaned_data.timestamp, "1 minutes"), cleaned_data.customer_id).agg(count('*').alias('transaction_count')).withColumn('customer_behaviour', when(col('transaction_count')>2, "Suspicious").otherwise("Innocent"))

fraud_customers.writeStream.format('console').outputMode('update').start().awaitTermination()

spark.stop()