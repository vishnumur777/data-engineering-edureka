#!/usr/bin/env python3

from pyspark.sql import SparkSession
from pyspark.sql.types import *
from pyspark.sql.functions import *


spark = SparkSession.builder.master("local[5]").enableHiveSupport().getOrCreate()

sc = spark.sparkContext
sc.setLogLevel("ERROR")

ecommerce = spark.read.csv("ecommerce/ecommerce.csv", header=True, sep=',', inferSchema=True)

ecommerce.show(5)

ecommerce = ecommerce.withColumn("InvoiceDate", to_date(col("InvoiceDate"), "MM/dd/yyyy"))

ecommerce = ecommerce.withColumn("total_amount", ecommerce.Quantity*ecommerce.UnitPrice)

ecommerce.describe().show()

# null_counts = ecommerce.select([sum(col(c).isNull().cast('int')).alias(c) for c in ecommerce.columns])
# null_counts.show()

# ecommerce = ecommerce.dropna()

ecommerce.printSchema()

ecommerce.show(10)

ecommerce.write.mode('overwrite').partitionBy('Country').parquet("hdfs:///user/varunm15t38hedu/ecommerce/parquet")

spark.sql("msck repair table varunmdb.ecom_transactions")

df = spark.read.table("varunmdb.ecom_transactions")

spark.sql("select * from varunmdb.ecom_transactions limit 10").show()

import happybase

connection = happybase.Connection('master')
table = connection.table('varuntcs:ecom_txn')

for row in ecommerce.limit(10).collect():
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

ecommerce.groupBy("Country").count().alias("count").orderBy(col("count").desc()).show()

ecommerce.select(concat(year(col("InvoiceDate")),lit(" / "),month(col("InvoiceDate"))).alias("month"),col("total_amount")).groupBy("month").agg(round(sum(col("total_amount")),2).alias("total_amount")).orderBy(col("month").desc()).show()

ecommerce.select(["Description","Quantity"]).groupBy("Description").agg(sum(col("Quantity")).alias("Quantity")).orderBy(col("Quantity").desc()).show(10)

ecommerce.select(round(sum("total_amount"),2).alias("total_amount")).show()

ecommerce.select(col("InvoiceNo"),col("Quantity")).groupBy("InvoiceNo").agg(avg(col("Quantity")).alias("Quantity")).show()

spark.stop()