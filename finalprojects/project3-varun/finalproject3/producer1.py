import csv
import time
from kafka import KafkaProducer

producer  = KafkaProducer(bootstrap_servers = 'master:9092', value_serializer = lambda v:str(v).encode('utf-8'))

topic_n = 'assessment2_aj'

with open('demo1.csv', 'r')as f:
    reader = csv.DictReader(f)
    for row in reader:
        msg = ','.join([row['transaction_id'], row['customer_id'], row['timestamp'], row['amount'], row['transaction_type'], row['channel'],row['channel'], row['status']])
        producer.send(topic_n, value=msg)
        producer.flush()
        time.sleep(0.5)
producer.close()
