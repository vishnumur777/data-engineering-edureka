from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

default_args = {
    'owner': 'airflow',
    'start_date': datetime(2025, 6, 25),
    'retries': 3,
}

with DAG("insurance_etl",
         default_args=default_args,
         schedule_interval='@daily',
         catchup=False) as dag:
    
    create_hive_table = BashOperator(
        task_id="create_hive_table",
        bash_command="hive -f hive_ddl_queries.hql"
    )
    
    run_etl = BashOperator(
        task_id="run_etl_transformation",
        bash_command="bash run_pipelines.sh"
    )
    
    create_hive_table >> run_etl