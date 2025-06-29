#!/usr/bin/env pyhton

from pyspark.sql import SparkSession
from pyspark.sql.functions import col, to_date, expr, date_format

spark = SparkSession.builder.appName("EcomETLProject").enableHiveSupport().getOrCreate()
spark.sparkContext.setLogLevel("ERROR")

df = spark.read.option("header", True).csv('/user/amirsufre14kedu/ecommerce/raw/e_commerce_transactions.csv')

df.show(5)

df_cleaned=(df.withColumn("InvoiceDate", to_date(col("InvoiceDate"), "MM/dd/yyyy")).withColumn("Quantity", col("Quantity").cast("int")).withColumn("UnitPrice", col("UnitPrice").cast("double")).withColumn("CustomerID", col("CustomerID").cast("string")).withColumn("total_amount", expr("Quantity * UnitPrice")).dropna())

df_cleaned.show(7)

df_cleaned.printSchema()

df_cleaned.write.partitionBy("Country").mode("overwrite").parquet("hdfs:///user/amirsufre14kedu/ecommerce/parquet/")

spark.sql("MSCK REPAIR TABLE amir.ecom_transactions")

dt=spark.read.table("amir.ecom_transactions")

spark.sql("SELECT * FROM amir.ecom_transactions LIMIT 10").show()

import happybase

connection = happybase.Connection('master')
table = connection.table('amirtcs:ecom_txn')

for row in df_cleaned.limit(10).collect():
    row_key = f"{row.InvoiceNo}_{row.StockCode}"
    table.put(row_key.encode(), {
        b'info:InvoiceNo': str(row.InvoiceNo).encode(),
        b'info:StockCode': str(row.StockCode).encode(),
        b'info:Quantity': str(row.Quantity).encode(),
        b'info:UnitPrice': str(row.UnitPrice).encode(),
        b'info:CustomerID': str(row.CustomerID).encode(),
        b'info:InvoiceDate': str(row.InvoiceDate).encode(),
        b'info:total_amount': str(row.total_amount).encode(),
        b'info:Country': str(row.Country).encode()
    })
sample_key = f"{row.InvoiceNo}_{row.StockCode}".encode()
print(table.row(sample_key))

df_cleaned.createOrReplaceTempView("ecom")

spark.sql("SELECT Country, ROUND(SUM(total_amount), 2) AS total_sales FROM ecom GROUP BY Country ORDER BY total_sales DESC").show()

spark.sql("SELECT DATE_FORMAT(InvoiceDate, 'yyyy-MM') AS month, ROUND(SUM(total_amount), 2) AS monthly_sales FROM ecom GROUP BY month ORDER BY month").show()

spark.sql("SELECT Description, SUM(Quantity) AS total_quantity FROM ecom GROUP BY Description ORDER BY total_quantity DESC LIMIT 10").show()

spark.sql("SELECT ROUND(SUM(total_amount), 2) AS total_revenue FROM ecom").show()

spark.sql("SELECT ROUND(AVG(qty_per_invoice), 2) AS avg_basket_size FROM ( SELECT InvoiceNo, SUM(Quantity) AS qty_per_invoice FROM ecom GROUP BY InvoiceNo )").show()
