#!/bin/bash

hdfs dfs -mkdir tcs
 
hdfs dfs -ls

hdfs dfs -copyFromLocal frostroad.txt tcs

hdfs dfs -ls tcs/

hdfs dfs -mkdir tcs/varun

hdfs dfs -ls tcs/