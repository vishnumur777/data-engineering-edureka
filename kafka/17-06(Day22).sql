ananduatc85pedu@ip-172-31-32-182:~$ zookeeper-shell.sh master:2181
Connecting to master:2181
Welcome to ZooKeeper!
JLine support is disabled

WATCHER::

WatchedEvent state:SyncConnected type:None path:null



ls /brokers/ids
[1]

|| Help
ananduatc85pedu@ip-172-31-32-182:~$ kafka-topics.sh



||Listing topics
ananduatc85pedu@ip-172-31-32-182:~$ kafka-topics.sh --bootstrap-server master:9092 --list | grep -i anan


||Error replication factor should be less than number of brockers && replication factore should not be 0
ananduatc85pedu@ip-172-31-32-182:~$ kafka-topics.sh --bootstrap-server master:9092 --create --topic Ananduog --partitions 4 --replication-factor 3
Error while executing topic command : Replication factor: 3 larger than available brokers: 1.
[2025-06-17 07:04:22,162] ERROR org.apache.kafka.common.errors.InvalidReplicationFactorException: Replication factor: 3 larger than available brokers: 1.
 (kafka.admin.TopicCommand$)
 
 ||As brockers is 1 replication factor should be 1
 ananduatc85pedu@ip-172-31-32-182:~$ kafka-topics.sh --bootstrap-server master:9092 --create --topic Ananduog --partitions 4 --replication-factor 1
 
 
 
 ||Describing
 ananduatc85pedu@ip-172-31-32-182:~$ kafka-topics.sh --bootstrap-server master:9092 --topic Ananduog --describe
Topic: Ananduog TopicId: vWatx6QKRtqb1IYSJ51UhA PartitionCount: 4       ReplicationFactor: 1    Configs: segment.bytes=1073741824
        Topic: Ananduog Partition: 0    Leader: 1       Replicas: 1     Isr: 1
        Topic: Ananduog Partition: 1    Leader: 1       Replicas: 1     Isr: 1
        Topic: Ananduog Partition: 2    Leader: 1       Replicas: 1     Isr: 1
        Topic: Ananduog Partition: 3    Leader: 1       Replicas: 1     Isr: 1
        
        
        
||Creating Consumer
ananduatc85pedu@ip-172-31-32-182:~$ kafka-console-consumer.sh 

ananduatc85pedu@ip-172-31-32-182:~$ kafka-console-consumer.sh --bootstrap-server master:9092 --topic Ananduog


||Creating producer 
ananduatc85pedu@ip-172-31-32-182:~$ kafka-console-producer.sh --bootstrap-server master:9092 --topic Ananduog


||Creating consumer that can get data from begining
ananduatc85pedu@ip-172-31-32-182:~$ kafka-console-consumer.sh --bootstrap-server master:9092 --topic Ananduog --from-beginning



||Creating group

kafka-console-consumer.sh --bootstrap-server master:9092 --group den --topic ananduog

||Describing group 
 kafka-consumer-groups.sh --bootstrap-server master:9092 --group den --describe
 
 
 
 
 
 
 
 ||Python file
 ananduatc85pedu@ip-172-31-32-182:~$ ls .ivy2
cache  jars





-------------------------------------------
Batch: 0
-------------------------------------------
+-----+--------------------+
|  msg|           timestamp|
+-----+--------------------+
|  456|2025-06-17 11:49:...|
|hello|2025-06-17 11:49:...|
|  123|2025-06-17 11:49:...|
|  789|2025-06-17 11:49:...|
+-----+--------------------+