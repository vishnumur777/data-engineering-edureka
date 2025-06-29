#!/bin/bash

hdfs dfs -mkdir -p /user/ravurisat11dedu/banking/
hdfs dfs -put banking_transaction.csv /user/ravurisat11dedu/banking/
hdfs dfs -ls /user/ravurisat11dedu/banking/