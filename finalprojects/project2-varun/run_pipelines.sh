#!/bin/bash

hdfs dfs -mkdir -p /user/varunm15t38hedu/insurancedata/

hdfs dfs -put -f insurance_claims.csv /user/varunm15t38hedu/insurancedata/

hive -f hive_ddl_queries.hql

spark-submit --properties-file insurance.conf insclaim_analysis.py
