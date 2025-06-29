from pyspark import SparkContext, SparkConf
import sys

sconf = SparkConf().setAppName("VarunWord").setMaster('local[4]')
sc = SparkContext(conf=sconf)
sc.setLogLevel("ERROR")

pc = sc.textFile(sys.argv[1])

pc_words = pc.flatMap(lambda x: x.split())

word_kv = pc_words.map(lambda x: (x, 1))

word_kv_final = word_kv.reduceByKey(lambda x,y: x+y)

print(word_kv_final.collect())

sc.stop()
