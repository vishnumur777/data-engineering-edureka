from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from datetime import datetime, timedelta
from airflow.operators.dummy_operator import DummyOperator

default_args = {
    "owner": "airflow",
    "depends_on_past": False,
    "start_date": datetime(2025, 06, 26),
    "retries": 1,
    "retry_delay": timedelta(minutes=5),
}

dag = DAG("Bank-Transactions", default_args=default_args, schedule_interval=timedelta(1))

t1 = BashOperator(task_id="hdfs-folder-creation", bash_command="hdfs dfs -mkdir -p /user/ravurisat11dedu/banking/", dag=dag)

t2 = BashOperator(task_id="hdfs-data-upload", bash_command="hdfs dfs -put banking_transaction.csv /user/ravurisat11dedu/banking/", dag=dag)

t3 = BashOperator(task_id="data-transformation", bash_command="spark-submit data_transformation.py", dag=dag)

t3 = BashOperator(task_id="hive_table_creation", bash_command="hive -f task3_table_creation.txt", dag=dag)

t4 = BashOperator(task_id="data_ingestion_hive", bash_command="spark-submit task3_data_insertion.py", dag=dag)

t5 = BashOperator(task_id="hive_table_check", bash_command="hive -f hive_table_check.hql", dag=dag)

t6 = BashOperator(task_id="hive_analytic_queries", bash_command="spark-submit task3_queries.py", dag=dag)

t7 = BashOperator(task_id="real_time_fraud", bash_command="spark-submit real_time_fraud.py", dag=dag)

t8 = BashOperator(task_id="kafka_to_hbase", bash_command="spark-submit store_in_hbase.py", dag=dag)

t1>> t2>> [t3,t4]>> t5>> t6>> t7>> t8
