from pyspark import SparkConf, SparkContext
from pyspark.streaming import StreamingContext

conf = SparkConf().setMaster('local[5]').setAppName("VarunStreamingData")

sc = SparkContext(conf=conf)

ssc = StreamingContext(sc, 10)

ds1 = ssc.socketTextStream("localhost",9941)

ds2 = ssc.socketTextStream("localhost",9952)

words1 = ds1.flatMap(lambda x:x.split()).map(lambda x: (x,1))

words2 = ds2.flatMap(lambda x:x.split()).map(lambda x: (x,1))

pair1 = words1.window(30)

pair2 = words2.window(30)

j1 = pair1.join(pair2)

# ssc.checkpoint('vcheck')

# wc = words.reduceByKeyAndWindow(lambda x,y: x+y,None,30)

j1.pprint()

ssc.start()
ssc.awaitTermination()