use varunmdb;
CREATE EXTERNAL TABLE `varunmdb.ecom_transactions`(
  InvoiceNo integer,
  StockCode string,
  Description string,
  Quantity integer,
  UnitPrice double,
  InvoiceDate date,
  CustomerID integer,
  total_amount DOUBLE)
partitioned by (Country string)
stored as PARQUET
LOCATION 'hdfs:///user/varunm15t38hedu/ecommerce/parquet';