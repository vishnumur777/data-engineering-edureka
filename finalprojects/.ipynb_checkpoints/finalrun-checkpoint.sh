#!/bin/bash

hive -f hive_table_create_script.hql

bash hbase_create.sh

spark-submit --properties-file ecom.conf ecommerce_analysis.py

hive -f hive_ddl_script.hql

bash hbase_scripts.bash