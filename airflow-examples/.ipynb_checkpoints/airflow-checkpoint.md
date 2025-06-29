## Creating first Dag

```python
from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from datetime import datetime,timedelta

default_args={
        'owner':'airflow',
        'depends_on_past':False,
        'start_date':datetime(2025,6,18),
        'email':['airflow@airflow.com'],
        'email_on_failure':False,
        'email_on_retry':False,
        'retries':1,
        'retry_delay':timedelta(minutes=5),
        }

dag=DAG('anandusdag',default_args=default_args,schedule_interval=timedelta(1))

t1=BashOperator(task_id='print_date',bash_command='date',dag=dag)

t2=BashOperator(task_id='sleep',bash_command='sleep 5',retries=3,dag=dag)

t3=BashOperator(task_id='myname',bash_command='echo TCS',dag=dag)
```



##  Postgrace changing permission and login

(myenv) labuser@MLEAccerlator:~$ sudo cat /etc/postgresql/14/main/pg_hba.conf

(myenv) labuser@MLEAccerlator:~$ sudo vi /etc/postgresql/14/main/pg_hba.conf

change local peer to md5


(myenv) labuser@MLEAccerlator:~$ sudo systemctl restart postgresql
(myenv) labuser@MLEAccerlator:~$ sudo -u postgres psql



##  Creating user and password
postgres=# create user airflow with password 'airflow';

#Granting privilege
postgres=# grant ALL PRIVILEGES on postgres to airflow;

##  By default user is postgrace
    IN aiflow it is airflow
    so new user airflow create in postgrace with all permissions
postgres=# grant ALL PRIVILEGES on ALL TABLES IN schema public to airflow;
GRANT



##  Creating postgres dag Inserting values into new table

```python
from airflow import DAG
from datetime import datetime,timedelta
from airflow.operators.python_operator import PythonOperator
from airflow.hooks.postgres_hook import PostgresHook
from psycopg2.extras import execute_values

default_args={
        'owner':'airflow',
        'retries':1,
        'retry_delay':timedelta(minutes=5),
        'start_date':datetime(2025,6,18),
        }

dag=DAG('hooks_demo',default_args=default_args,schedule_interval='@daily')


def transfer_functions(ds,**kwargs):
    query='select * from source_table'

    source_hook = PostgresHook(postgres_conn_id='postgres_conn',schema='postgres')
    source_conn=source_hook.get_conn()


    #destination hook
    destination_hook = PostgresHook(postgres_conn_id='postgres_conn',schema='postgres')
    destination_conn=source_hook.get_conn()



    source_cursor=source_conn.cursor()
    destination_cursor=destination_conn.cursor()

    source_cursor.execute(query)
    records=source_cursor.fetchall()

    if records:
        execute_values(destination_cursor, "insert into target_table values %s",records)
        destination_conn.commit()


    source_cursor.close()
    destination_cursor.close()
    source_conn.close()
    destination_conn.close()
    print("Data transferred successfully")


t1=PythonOperator(task_id='transfer',python_callable=transfer_functions,provide_context=True,dag=dag)
```


##  check whether file exists in a directory

- create connection `file_conn`
- give File in connection
- then write the code below


```python
from airflow import DAG
from datetime import datetime, timedelta
from airflow.contrib.sensors.file_sensor import FileSensor
from airflow.operators.bash_operator import BashOperator

default_args = {
    "owner": "airflow",
    "depends_on_past":False,
    "start_date": datetime(2025, 6,18),
    "retries": 1,
    "retry_delay": timedelta(minutes=5)
}

dag = DAG("varun_file_sensors", default_args=default_args, schedule_interval=timedelta(1))

f1 = FileSensor(task_id="file1", filepath="/opt/airflow/dags/source.txt", fs_conn_id="file_conn", poke_interval=10, timeout=100, dag=dag)

t1 = BashOperator(task_id="print_date", bash_command="date",dag=dag)

f1>>t1
```

## Run spark code in airflow

### 1. Spark Code

```python
from pyspark import SparkContext, SparkConf

sconf = SparkConf().getMaster("local[5]").getAppName("VarunApp")

sc = SparkConf(conf=sconf)

l1 = [ x for x in range(1,1000)]

rdd1 = sc.parallelize(l1)

print(rdd1.collect())
```

### 2. Airflow DAG

```python
import airflow
from datetime import datetime, timedelta
from airflow.models import DAG
from airflow.operators.bash_operator import BashOperator

default_args = {"owner":"airflow", "start_date": airflow.utils.dates.days_ago(1)}

DAG = DAG(dag_id="spark_rdd_app", default_args=default_args, schedule_interval="@daily")

t1 = BashOperator(task_id="sparkcode", bash_command="/opt/spark/bin/spark-submit /opt/airflow/dags/mysparkcode.py", dag=DAG)
```