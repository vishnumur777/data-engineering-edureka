
### Task 1: Data Ingestion to HDFS

1. CREATE FOLDER IN HDFS
****************************************************************************************************************************************************
As per the project requirement, create necessary folders in HDFS:

hdfs dfs -mkdir -p /user/ravurisat11dedu/banking/



To upload local files to HDFS:

hdfs dfs -put banking_transaction.csv /user/ravurisat11dedu/banking/

hdfs dfs -ls /user/ravurisat11dedu/banking/


### Task 2: Data Transformation with PySpark

2. RUN PYSPARK FILE
****************************************************************************************************************************************************


Use the following command to run the PySpark file: spark-submit task2.py


### Task 3: Hive-Based Reporting (Batch Analytics)

3. OPEN HIVE SHELL AND RUN HIVE COMMANDS
****************************************************************************************************************************************************

Open shell and Execute the following commands:


For Table creation purpose:

>hive -f task3_table_creation.txt

For data Insertion purpose:

>spark-submit task2.py

For Queries Execution purpose:

>hive -f task3_queries.txt


