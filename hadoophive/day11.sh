#!/bin/bash

hdfs dfs -mkdir tcs
 
hdfs dfs -ls

hdfs dfs -copyFromLocal frostroad.txt tcs

hdfs dfs -ls tcs/

hdfs dfs -mkdir tcs/varun

hdfs dfs -ls tcs/

head -n 2 frostroad.txt | hdfs dfs -put - frost.txt

hdfs dfs -get frost.txt

hdfs dfs -D dfs.replication=4 -copyFromLocal frostroad.txt frost.txt

hdfs -fsck -blocks -files frostroad.txt

jps (only for checkpointing)
1284711 Jps