#!/bin/bash

hive -f hive_ddl_queries.hql

spark-submit --properties-file insurance.conf insclaim_analysis.py
