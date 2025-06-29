from pyspark.sql import SparkSession
from pyspark.streaming import StreamingContext

spark = SparkSession.builder.appName("VarunSteam").master("local[4]").getOrCreate()

df = spark.readStream.format("socket").option("host","localhost").option("port",9942).load()

df.writeStream.format("console").start().awaitTermination()
