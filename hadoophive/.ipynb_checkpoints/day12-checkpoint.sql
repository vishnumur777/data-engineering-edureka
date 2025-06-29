hive> create database varunmdb;
OK
Time taken: 0.038 seconds

hive> use varunmdb;
OK
Time taken: 0.029 seconds

hive> create table xdata(
    > name varchar(10),
    > code int
    > )
    > Row format delimited fields terminated by ',';
OK
Time taken: 0.318 seconds

hive> show tables;
OK
xdata
Time taken: 0.039 seconds, Fetched: 1 row(s)

hive> desc xdata;
OK
name                    varchar(10)                                 
code                    int                                         
Time taken: 0.049 seconds, Fetched: 2 row(s)

hive> show create table xdata;
OK
CREATE TABLE `xdata`(
  `name` varchar(10), 
  `code` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES ( 
  'field.delim'=',\n', 
  'serialization.format'=',\n') 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://master:9000/user/hive/warehouse/varunmdb.db/xdata'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1748951296')
Time taken: 0.067 seconds, Fetched: 17 row(s)

hive> select * from xdata;
OK
Time taken: 5.896 seconds

hive> load data inpath 'hiveasset/x1.txt' into table xdata;
Loading data to table varunmdb.xdata
OK
Time taken: 4.153 seconds

hive> select * from xdata;
OK
a       12
b       24
c       36
d       48
a       13
b       27
c       36
d       49
a       11
b       21
c       31
d       41
c       30
d       40
Time taken: 3.485 seconds, Fetched: 14 row(s)

hive> drop table xdata;
OK
Time taken: 0.098 seconds


hive> show tables;
OK
Time taken: 0.021 seconds


-- Note: while dropping table, Both Data and Table got lost.

-- for that we use external tables in hive

hive> create external table xdata(
    > name varchar(10),
    > code int
    > )
    > row format delimited fields terminated by ',';
OK
Time taken: 0.062 seconds

hive> load data inpath 'hiveasset/x1.txt' into table xdata;
Loading data to table varunmdb.xdata
OK
Time taken: 4.026 seconds

hive> show create table xdata;
OK
CREATE EXTERNAL TABLE `xdata`(
  `name` varchar(10), 
  `code` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES ( 
  'field.delim'=',', 
  'serialization.format'=',') 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://master:9000/user/hive/warehouse/varunmdb.db/xdata'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1748952875')
Time taken: 0.044 seconds, Fetched: 17 row(s)

hive> select * from xdata;
OK
a       12
b       24
c       36
d       48
a       13
b       27
c       36
d       49
a       11
b       21
c       31
d       41
c       30
d       40
Time taken: 3.402 seconds, Fetched: 14 row(s)

hive> drop table xdata;
OK
Time taken: 0.09 seconds

hive> show tables;
OK
Time taken: 0.028 seconds

-- Now table is dropped successfully, but data not lost it must be their with /user/hive/warehouse/varunmdb.db/xdata

hive> load data local inpath 'hadoophive/assets/x1.txt' into table xdata;
Loading data to table varunmdb.xdata
OK
Time taken: 4.032 seconds
