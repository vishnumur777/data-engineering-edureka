#!/usr/bin/env python

from pyspark.sql import SparkSession
from pyspark.sql.functions import *
from pyspark.sql.types import *
from pyspark.ml.stat import Correlation

spark = SparkSession.builder.appName("VarunInsClaim").master("local[5]").enableHiveSupport().getOrCreate()

sc = spark.sparkContext

sc.setLogLevel("ERROR")

insurance = spark.read.csv("insurancedata/insurance_claims.csv",sep=',',header=True, inferSchema=True)

null_counts = insurance.select([sum(col(c).isNull().cast('int')).alias(c) for c in insurance.columns])
null_counts.show()


insurance.count()

insurance = insurance.na.drop()

insurance.count()

insurance = insurance.withColumn("incident_date", to_date(insurance.incident_date))

insurance = insurance.withColumn("incident_year",year(insurance.incident_date))

insurance.write.mode("overwrite").partitionBy("incident_year").parquet("insurancedata/parquet")

spark.sql("msck repair table varunmdb.insurance_claim")

spark.sql("select * from varunmdb.insurance_claim limit 10").show()

insurance.select(["incident_year", "fraud_reported"]).filter(insurance.fraud_reported=="Y").groupBy(col("incident_year")).count().alias("count").orderBy(col("count").desc()).show()

insurance.select(["incident_severity","fraud_reported","total_claim_amount"]).groupBy(col("incident_severity"),col("fraud_reported")).avg("total_claim_amount").show()

insurance.select(["auto_make", "total_claim_amount"]).orderBy(col("total_claim_amount").desc()).show(5)

fr_cust = insurance.select(['months_as_customer','fraud_reported'])

fr_cust = fr_cust.withColumn("fraud_reported", when(col("fraud_reported")=="Y",1).when(col("fraud_reported")=="N",0))

correlation=fr_cust.stat.corr('months_as_customer','fraud_reported')
print(correlation)

insurance.agg(count('injury_claim')).show()


insurance=insurance.withColumn('injury',when(col('injury_claim')>0,1).otherwise(0)).withColumn('property',when(col('property_claim')>0,1).otherwise(0)).withColumn('vehicle',when(col('vehicle_claim')>0,1).otherwise(0))
claim_type=insurance.groupBy('fraud_reported').agg(sum('injury').alias('injury'),sum('property').alias('property'),sum('vehicle').alias('vehicle'))
claim_type.show()

spark.stop()