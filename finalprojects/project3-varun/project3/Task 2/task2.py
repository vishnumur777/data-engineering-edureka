from pyspark.sql import SparkSession
from pyspark.sql.types import *
from pyspark.sql.functions import *

spark = SparkSession.builder.appName("BankingTransactionETL-kushi").enableHiveSupport() \
    .getOrCreate()

spark

# Load the HDFS data into a PySpark DataFrame.

df_banking = spark.read.option("header",True).option("inferSchema",True).\
csv("/user/ravurisat11dedu/banking/banking_transaction.csv")

df_banking.printSchema()

# Total Number of Records.

df_banking.count()

# Dropping rows having null values.

df_banking = df_banking.dropna()

df_banking.count() # No Null values

df_banking.select('transaction_type','channel').show(2)

df_banking.show(5)

df_clean = df_banking \
    .withColumn("transaction_type", lower(col("transaction_type"))) \
    .withColumn("channel", lower(col("channel"))) \
    .filter(col("status") == "success") \
    .withColumn("txn_day", dayofmonth("timestamp")) \
    .withColumn("txn_hour", hour("timestamp")) \
    .withColumn("high_value_flag", when(col("amount") > 500, 1).otherwise(0))

df_clean.count() # After removing Failed transactions.

df_clean.show(10)


