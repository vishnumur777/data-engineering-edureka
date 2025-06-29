from pyspark.sql import SparkSession


spark = SparkSession.builder.appName("varunSQLConnect").master("local[4]").getOrCreate()

job = spark.read.format('jdbc').option('url','jdbc:mysql://master:3306/varunm15t38hedu')\
        .option('user','varunm15t38hedu')\
        .option('password','PlumWaspbca52@')\
        .option('dbtable','jobs')\
        .option('driver','com.mysql.cj.jdbc.Driver').load()


print(job.printSchema())
print(job.show(5))
