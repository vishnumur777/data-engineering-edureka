Here's a complete breakdown of what you need to do for the Big Data Assessment Part II based on the PDF you provided. It's split into two major parts: HDFS File Management and Hive Data Analysis.


---

🗂️ Part 1: HDFS File Management (Using Hadoop CLI)

Assumptions:

Your username is varunm15t38hedu (replace this in the commands).

Local path: /home/hadoop/call_logs/ contains the .csv and readme.txt.


✅ Tasks with Hadoop Commands:

1. Create raw data directory

hdfs dfs -mkdir -p /user/varunm15t38hedu/telecom/data/raw/


2. Upload only .csv files

hdfs dfs -put data/*.csv /user/varunm15t38hedu/telecom/data/raw/


3. Verify the upload with human-readable sizes

hdfs dfs -ls -h /user/varunm15t38hedu/telecom/data/raw/


4. Display first 5 lines of calls_jan.csv

hdfs dfs -cat /user/varunm15t38hedu/telecom/data/raw/calls_jan.csv | head -n 5


5. Move calls_mar.csv to archive

hdfs dfs -mkdir -p /user/varunm15t38hedu/telecom/data/archive/
hdfs dfs -mv /user/varunm15t38hedu/telecom/data/raw/calls_mar.csv /user/varunm15t38hedu/telecom/data/archive/


6. Set replication factor for calls_feb.csv to 2

hdfs dfs -setrep -w 2 /user/varunm15t38hedu/telecom/data/raw/calls_feb.csv


7. Count total files and total bytes in raw folder

hdfs dfs -count -h /user/varunm15t38hedu/telecom/data/raw/


8. Delete only the HDFS version of calls_jan.csv

hdfs dfs -rm /user/varunm15t38hedu/telecom/data/raw/calls_jan.csv


9. Copy and rename readme.txt

hdfs dfs -mkdir -p /user/varunm15t38hedu/telecom/docs/
hdfs dfs -cp /user/varunm15t38hedu/telecom/data/raw/readme.txt /user/varunm15t38hedu/telecom/docs/data_description.txt


10. Check HDFS disk usage



hdfs dfs -du -h /user/varunm15t38hedu/telecom/


---

🐝 Part 2: Hive Sales Data Analysis

Assumptions:

CSV files: customers.csv, products.csv, orders.csv, order_items.csv


✅ Tasks and Queries:

1. Create External Tables (Example: customers)

CREATE EXTERNAL TABLE customers (
    customer_id INT,
    customer_name STRING,
    state STRING,
    email STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/varunm15t38hedu/ecommerce/customers/';

(Repeat for all 4 datasets with correct schemas and locations)


---

2. Load CSV data

If its external, files must be placed in HDFS at the specified location. Use:

hdfs dfs -put customers.csv /user/varunm15t38hedu/ecommerce/customers/


---

3. Partitioning and Bucketing

Partition Orders by Year:

CREATE TABLE orders_partitioned (
    order_id INT,
    customer_id INT,
    order_date DATE,
    status STRING
)
PARTITIONED BY (year INT)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

Then load data using:

ALTER TABLE orders_partitioned ADD PARTITION (year=2023) LOCATION '/user/...';

Bucket Customers by State:

CREATE TABLE customers_bucketed (
    customer_id INT,
    customer_name STRING,
    state STRING,
    email STRING
)
CLUSTERED BY (state)
INTO 4 BUCKETS
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;


---

4. Analytical Queries

Top 5 Customers by Total Spend

SELECT c.customer_id, c.customer_name, SUM(oi.item_price*oi.quantity) AS total_spent FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

Monthly Sales Summary (2023)

SELECT MONTH(o.order_date) AS month, SUM(oi.item_price*oi.quantity) AS total_sales
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE YEAR(o.order_date) = 2023
GROUP BY MONTH(o.order_date)
ORDER BY month;

Most Popular Products

SELECT p.product_id, p.product_name, COUNT(*) AS order_count
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY order_count DESC
LIMIT 5;

Cumulative Sales by Product Category (Using Window Function)

SELECT category, product_id, product_name, SUM(total_price) OVER (PARTITION BY category ORDER BY product_id) AS cumulative_sales
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id;

Cancelled Orders Percentage

SELECT 
  (COUNT(CASE WHEN status = 'Cancelled' THEN 1 END) * 100.0 / COUNT(*)) AS cancelled_percentage
FROM orders;



---

Let me know if you want the exact schema of each CSV or help running these in Hive or Hadoop.

