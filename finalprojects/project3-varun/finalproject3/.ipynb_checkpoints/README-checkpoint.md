<h1 align="center">Bank transaction monitoring and fraud detection pipeline</h1>

## Contributors
- Ayush Jee (Streaming)
- Varun M (Visualization)
- Viswa Pranav, Satya Sai (Batch Data analysis)


### Use `airflow_dag.py` to run all scripts in Airflow
### Task 1: Data Ingestion to HDFS

1. CREATE FOLDER IN HDFS
***************************************************************************************************
As per the project requirement, create necessary folders in HDFS:

hdfs dfs -mkdir -p /user/ravurisat11dedu/banking/

To upload local files to HDFS:
hdfs dfs -put banking_transaction.csv /user/ravurisat11dedu/banking/
hdfs dfs -ls /user/ravurisat11dedu/banking/

### Task 2: Data Transformation with PySpark

2. RUN PYSPARK FILE
***************************************************************************************************

Run: spark-submit data_transformation.py

### Task 3: Hive-Based Reporting (Batch Analytics)

3. OPEN HIVE SHELL AND RUN HIVE COMMANDS
***************************************************************************************************

Open shell and Execute the following commands:

For Table creation purpose:
>hive -f task3_table_creation.txt

For data Insertion purpose:
>spark-submit task3_data_insertion.py

For Queries Execution purpose:
>spark-submit task3_queries.py


### 4. Real-Time Fraud Detection Pipeline

4. real-time transactions using Kafka producer (send events from the CSV file).
***************************************************************************************************
• “If a customer performs more than two withdrawals over ₹400 within a 1-minute window,
flag the behavior as suspicious.”
• Output suspicious transaction records as alerts.

> spark-submit real_time_fraud.py

### 5. Real-Time Alert Storage (HBase Integration)
***************************************************************************************************

• Store flagged records into an HBase table.
• Each record should include: transaction_id, customer_id, timestamp, amount, channel, and
reason.

> spark-submit store_in_hbase.py


### Visualization - 
***************************************************************************************************
- Go to visualization folder
- Check our plots in visualization.ipynb file

### Performance Tuning
***************************************************************************************************
- Go to Performance_tuning.txt for more info.