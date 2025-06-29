from pyspark import SparkConf, SparkContext
from pyspark.streaming import StreamingContext

conf = SparkConf().setMaster('local[5]').setAppName("VarunStreamingData")

sc = SparkContext(conf=conf)

ssc = StreamingContext(sc, 10)

ds = ssc.socketTextStream("localhost",9941)

words = ds.flatMap(lambda x:x.split()).map(lambda x: (x,1))

wc = words.reduceByKey(lambda x,y: x+y)

wc.pprint()

ssc.start()
ssc.awaitTermination()