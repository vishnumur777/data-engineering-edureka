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



df_banking.write.mode("overwrite").format("parquet").saveAsTable("kushi.raw_transactions")
df_clean.write.mode("overwrite").format("parquet").saveAsTable("kushi.clean_transactions")

# View for raw transactions

df_banking.createOrReplaceTempView("rawtransactionsview")

# View for cleaned transactions

df_clean.createOrReplaceTempView("cleantransactionsview")


spark.sql("select * from rawtransactionsview").show(2)

spark.sql("select * from cleantransactionsview").show(5)

# 1. Top 5 customers by number of transactions

spark.sql("SELECT customer_id, COUNT(*) as txn_count FROM cleantransactionsview GROUP BY customer_id  \
ORDER BY txn_count DESC LIMIT 5").show()

# 2. Customer with the highest total withdrawal amount

spark.sql("SELECT customer_id, SUM(amount) AS total_withdrawal_amount FROM cleantransactionsview WHERE transaction_type = 'withdrawal' \
GROUP BY customer_id ORDER BY total_withdrawal_amount DESC  LIMIT 2").show()

#3. Monthly transaction volume per customer
spark.sql("SELECT customer_id, month(timestamp) AS month, COUNT(*) AS txn_count FROM cleantransactionsview \
GROUP BY customer_id, month(timestamp) order by customer_id").show()

spark.sql("select distinct channel from cleantransactionsview").show()

# 1. Average transaction amount by channel

spark.sql("SELECT channel, AVG(amount) AS avg_amount FROM cleantransactionsview \
GROUP BY channel").show()

# 2. Success rate of transactions by channel(raw transactions)

spark.sql("select channel,COUNT(*) AS total, \
(SUM(CASE WHEN status = 'success' THEN 1 ELSE 0 END)*100)/count(*) AS success_rate \
from rawtransactionsview GROUP BY channel").show()
          
         

# 1. Hourly transaction trend (peak hours)

spark.sql("SELECT txn_hour, COUNT(*) AS txn_count FROM cleantransactionsview \
GROUP BY txn_hour ORDER BY txn_hour").show()

# 2. Day-wise total transaction volume and amount

spark.sql("SELECT txn_day, COUNT(*) AS txn_volume, SUM(amount) AS total_txn_amount \
FROM cleantransactionsview GROUP BY txn_day ORDER BY txn_day").show()

# 1. Number of high-value transactions (> ₹500) per customer per day

spark.sql("SELECT customer_id, txn_day, COUNT(*) AS high_value_txns_per_customer FROM cleantransactionsview \
WHERE high_value_flag = 1 GROUP BY customer_id, txn_day ").show()

#2. Customers with more than 3 failed transactions in a day

spark.sql("select customer_id,day(timestamp) as txn_day,count(*) as failed_count from rawtransactionsview \
where status = 'failed' group by customer_id,day(timestamp) having count(*) > 3 ").show()


spark.sql("SELECT customer_id,channel FROM cleantransactionsview \
WHERE (timestamp >= current_timestamp() - interval 7 days) group by customer_id,channel order by customer_id").show()

# 3. Customers who used all three channels (ATM, Online, Branch) in the last 7 days

spark.sql(" SELECT customer_id FROM (SELECT customer_id, channel FROM cleantransactionsview \
WHERE timestamp >= current_timestamp() - interval 7 days) GROUP BY customer_id HAVING COUNT(DISTINCT channel) = 3 ").show()          
