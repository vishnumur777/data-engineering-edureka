from pyspark.sql import SparkSession
from pyspark.sql.types import *
from pyspark.sql.functions import *

spark = SparkSession.builder.appName("BankingTransactionETL-kushi").enableHiveSupport() \
    .getOrCreate()
df_banking = spark.read.option("header",True).option("inferSchema",True).\
csv("/user/ravurisat11dedu/banking/banking_transaction.csv")
# Dropping rows having null values.
df_banking = df_banking.dropna()
df_banking.count() # No Null values
df_banking.select('transaction_type','channel').show(2)
df_clean = df_banking \
    .withColumn("transaction_type", lower(col("transaction_type"))) \
    .withColumn("channel", lower(col("channel"))) \
    .filter(col("status") == "success") \
    .withColumn("txn_day", dayofmonth("timestamp")) \
    .withColumn("txn_hour", hour("timestamp")) \
    .withColumn("high_value_flag", when(col("amount") > 500, 1).otherwise(0))

# Data Ingestion
df_banking.write.mode("overwrite").format("parquet").saveAsTable("kushi.raw_transactions")
df_clean.write.mode("overwrite").format("parquet").saveAsTable("kushi.clean_transactions")
