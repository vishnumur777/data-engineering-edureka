import sys
from pyspark import SparkConf, SparkContext

sconf=SparkConf().setAppName("prajwalspark").setMaster("local[3]")
sc=SparkContext(conf=sconf)
counts=sc.textFile(r'tuesday/purplecow.txt').flatMap(lambda line:line.split()).map(lambda w:(w,1)).reduceByKey(lambda v1,v2:v1+v2)

for pair in counts.take(5):
    print(pair)
sc.stop()
