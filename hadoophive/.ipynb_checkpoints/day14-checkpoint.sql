hive> add jar hive-json-serde.jar;
Added [hive-json-serde.jar] to class path
Added resources: [hive-json-serde.jar]

hive> add jar json-serde-1_3_6-SNAPSHOT-jar-with-dependencies_zfyc1.jar
    > ;
Added [json-serde-1_3_6-SNAPSHOT-jar-with-dependencies_zfyc1.jar] to class path
Added resources: [json-serde-1_3_6-SNAPSHOT-jar-with-dependencies_zfyc1.jar]

hive> create table people(name varchar(30) comment 'from deserializer', age int comment 'from deserializer', pcode varchar(30) comment 'from deserializer') row format serde 'org.apache.hive.hcatalog.data.JsonSerDe';
OK
Time taken: 0.342 seconds

hive> load data local inpath 'people.json' into table people;
Loading data to table varunmdb.people
OK
Time taken: 4.108 seconds

hive> select * from people;
OK
Alice   NULL    94304
Brayden 30      94304
Carla   19      10036
Diana   46      NULL
Etienne NULL    94104
Time taken: 3.44 seconds, Fetched: 5 row(s)

hive> select department_id,row_number() over(partition by department_id), max(salary) over(partition by department_id order by salary),dense_rank() over(partition by department_id order by salary) from employee;
Query ID = varunm15t38hedu_20250605053304_1d5249ff-205a-4236-bf08-325c3040c053
Total jobs = 2
Launching Job 1 out of 2
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_15812, Tracking URL = http://master:6318/proxy/application_1741226523923_15812/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_15812
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 4
2025-06-05 05:33:17,872 Stage-1 map = 0%,  reduce = 0%
2025-06-05 05:33:27,045 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.99 sec
2025-06-05 05:33:33,154 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 3.55 sec
2025-06-05 05:33:34,171 Stage-1 map = 100%,  reduce = 50%, Cumulative CPU 5.18 sec
2025-06-05 05:33:35,192 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 8.88 sec
MapReduce Total cumulative CPU time: 8 seconds 880 msec
Ended Job = job_1741226523923_15812
Launching Job 2 out of 2
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_15817, Tracking URL = http://master:6318/proxy/application_1741226523923_15817/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_15817
Hadoop job information for Stage-2: number of mappers: 2; number of reducers: 4
2025-06-05 05:33:46,691 Stage-2 map = 0%,  reduce = 0%
2025-06-05 05:33:50,842 Stage-2 map = 50%,  reduce = 0%, Cumulative CPU 1.41 sec
2025-06-05 05:33:51,864 Stage-2 map = 100%,  reduce = 0%, Cumulative CPU 2.93 sec
2025-06-05 05:33:55,939 Stage-2 map = 100%,  reduce = 25%, Cumulative CPU 4.8 sec
2025-06-05 05:33:56,957 Stage-2 map = 100%,  reduce = 75%, Cumulative CPU 8.59 sec
2025-06-05 05:33:57,977 Stage-2 map = 100%,  reduce = 100%, Cumulative CPU 10.73 sec
MapReduce Total cumulative CPU time: 10 seconds 730 msec
Ended Job = job_1741226523923_15817
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 4   Cumulative CPU: 8.88 sec   HDFS Read: 45593 HDFS Write: 2758 SUCCESS
Stage-Stage-2: Map: 2  Reduce: 4   Cumulative CPU: 10.73 sec   HDFS Read: 45770 HDFS Write: 3069 SUCCESS
Total MapReduce CPU Time Spent: 19 seconds 610 msec
OK
0       1       7000    1
20      1       6000    1
20      2       13000   2
40      1       6500    1
60      1       4200    1
60      3       4800    2
60      5       4800    2
60      2       6000    3
60      4       9000    4
80      20      6100    1
80      15      6200    2
80      26      6200    2
80      27      6400    3
80      28      6800    4
80      32      7000    5
80      13      7000    5
80      29      7200    6
80      21      7300    7
80      22      7400    8
80      12      7500    9
80      33      7500    9
80      34      8000    10
80      11      8000    10
80      16      8400    11
80      17      8600    12
80      18      8800    13
80      10      9000    14
80      1       9000    14
80      30      9500    15
80      9       9500    15
80      2       9500    15
80      23      9600    16
80      14      10000   17
80      8       10000   17
80      24      10000   17
80      31      10500   18
80      7       10500   18
80      6       11000   19
80      19      11000   19
80      25      11500   20
80      5       12000   21
80      4       13500   22
80      3       14000   23
100     3       6900    1
100     1       7700    2
100     2       7800    3
100     6       8200    4
100     5       9000    5
100     4       12000   6
10      1       0       1
10      2       4400    2
30      2       2500    1
30      3       2600    2
30      4       2800    3
30      5       2900    4
30      6       3100    5
30      1       11000   6
50      25      2100    1
50      29      2200    2
50      21      2200    2
50      30      2400    3
50      22      2400    3
50      12      2500    4
50      26      2500    4
50      13      2500    4
50      3       2500    4
50      17      2500    4
50      45      2600    5
50      14      2600    5
50      44      2600    5
50      18      2700    6
50      31      2700    6
50      4       2800    7
50      41      2800    7
50      27      2800    7
50      23      2900    8
50      11      2900    8
50      43      3000    9
50      8       3000    9
50      42      3100    10
50      15      3100    10
50      2       3100    10
50      19      3200    11
50      32      3200    11
50      1       3200    11
50      40      3200    11
50      24      3300    12
50      28      3300    12
50      7       3400    13
50      16      3500    14
50      20      3600    15
50      10      3600    15
50      9       3800    16
50      39      3900    17
50      38      4000    18
50      6       4100    19
50      5       4200    20
50      33      5800    21
50      34      6500    22
50      35      7900    23
50      37      8000    24
50      36      8200    25
70      1       10000   1
90      1       17000   1
90      2       17000   1
90      3       24000   2
110     2       8300    1
110     1       12000   2


hive> select department_id,row_number() over(partition by department_id order by salary desc), max(salary) over(partition by department_id order by salary desc),dense_rank() over(partition by department_id order by salary desc), lead(salary) over(partition by department_id), lag(salary) over(partition by department_id), ntile(4) over(partition by department_id) from employee;
Query ID = varunm15t38hedu_20250605054630_3ccef4c2-59e4-45df-a84f-ff634c98467c
Total jobs = 2
Launching Job 1 out of 2
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_16003, Tracking URL = http://master:6318/proxy/application_1741226523923_16003/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_16003
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 4
2025-06-05 05:46:42,393 Stage-1 map = 0%,  reduce = 0%
2025-06-05 05:46:47,496 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.37 sec
2025-06-05 05:46:52,589 Stage-1 map = 100%,  reduce = 50%, Cumulative CPU 4.94 sec
2025-06-05 05:46:53,610 Stage-1 map = 100%,  reduce = 75%, Cumulative CPU 6.51 sec
2025-06-05 05:46:56,669 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 8.81 sec
MapReduce Total cumulative CPU time: 8 seconds 810 msec
Ended Job = job_1741226523923_16003
Launching Job 2 out of 2
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_16013, Tracking URL = http://master:6318/proxy/application_1741226523923_16013/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_16013
Hadoop job information for Stage-2: number of mappers: 1; number of reducers: 4
2025-06-05 05:47:20,733 Stage-2 map = 0%,  reduce = 0%
2025-06-05 05:47:29,954 Stage-2 map = 100%,  reduce = 0%, Cumulative CPU 2.05 sec
2025-06-05 05:47:36,085 Stage-2 map = 100%,  reduce = 25%, Cumulative CPU 3.84 sec
2025-06-05 05:47:37,104 Stage-2 map = 100%,  reduce = 50%, Cumulative CPU 5.85 sec
2025-06-05 05:47:38,120 Stage-2 map = 100%,  reduce = 100%, Cumulative CPU 9.7 sec
MapReduce Total cumulative CPU time: 9 seconds 700 msec
Ended Job = job_1741226523923_16013
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 4   Cumulative CPU: 8.81 sec   HDFS Read: 53570 HDFS Write: 3190 SUCCESS
Stage-Stage-2: Map: 1  Reduce: 4   Cumulative CPU: 9.7 sec   HDFS Read: 51537 HDFS Write: 4392 SUCCESS
Total MapReduce CPU Time Spent: 18 seconds 510 msec
OK
0       1       7000    1       NULL    NULL    1
20      1       13000   1       6000    NULL    1
20      2       13000   2       NULL    13000   2
40      1       6500    1       NULL    NULL    1
60      1       9000    1       6000    NULL    1
60      2       9000    2       4800    9000    1
60      3       9000    3       4800    6000    2
60      4       9000    3       4200    4800    3
60      5       9000    4       NULL    4800    4
80      17      14000   10      14000   NULL    1
80      1       14000   1       13500   9000    1
80      2       14000   2       12000   14000   1
80      3       14000   3       11500   13500   1
80      4       14000   4       11000   12000   1
80      5       14000   5       11000   11500   1
80      6       14000   5       10500   11000   1
80      7       14000   6       10500   11000   1
80      8       14000   6       10000   10500   1
80      9       14000   7       10000   10500   2
80      10      14000   7       10000   10000   2
80      11      14000   7       9600    10000   2
80      12      14000   8       9500    10000   2
80      13      14000   9       9500    9600    2
80      14      14000   9       9500    9500    2
80      15      14000   9       9000    9500    2
80      16      14000   10      8800    9500    2
80      18      14000   11      8600    9000    2
80      19      14000   12      8400    8800    3
80      20      14000   13      8000    8600    3
80      21      14000   14      8000    8400    3
80      22      14000   14      7500    8000    3
80      23      14000   15      7500    8000    3
80      24      14000   15      7400    7500    3
80      25      14000   16      7300    7500    3
80      26      14000   17      7200    7400    3
80      27      14000   18      7000    7300    4
80      28      14000   19      7000    7200    4
80      29      14000   19      6800    7000    4
80      30      14000   20      6400    7000    4
80      31      14000   21      6200    6800    4
80      32      14000   22      6200    6400    4
80      33      14000   22      6100    6200    4
80      34      14000   23      NULL    6200    4
100     1       12000   1       9000    NULL    1
100     2       12000   2       8200    12000   1
100     3       12000   3       7800    9000    2
100     4       12000   4       7700    8200    2
100     5       12000   5       6900    7800    3
100     6       12000   6       NULL    7700    4
10      1       4400    1       0       NULL    1
10      2       4400    2       NULL    4400    2
30      3       11000   3       2500    NULL    1
30      6       11000   6       2600    2900    1
30      5       11000   5       2800    2500    2
30      4       11000   4       3100    2600    2
30      2       11000   2       11000   2800    3
30      1       11000   1       NULL    3100    4
50      1       8200    1       8000    NULL    1
50      2       8200    2       7900    8200    1
50      3       8200    3       6500    8000    1
50      4       8200    4       5800    7900    1
50      5       8200    5       4200    6500    1
50      6       8200    6       4100    5800    1
50      7       8200    7       4000    4200    1
50      8       8200    8       3900    4100    1
50      9       8200    9       3800    4000    1
50      10      8200    10      3600    3900    1
50      11      8200    11      3600    3800    1
50      12      8200    11      3500    3600    1
50      13      8200    12      3400    3600    2
50      14      8200    13      3300    3500    2
50      15      8200    14      3300    3400    2
50      16      8200    14      3200    3300    2
50      17      8200    15      3200    3300    2
50      18      8200    15      3200    3200    2
50      19      8200    15      3200    3200    2
50      20      8200    15      3100    3200    2
50      21      8200    16      3100    3200    2
50      22      8200    16      3100    3100    2
50      23      8200    16      3000    3100    2
50      24      8200    17      3000    3100    3
50      25      8200    17      2900    3000    3
50      26      8200    18      2900    3000    3
50      27      8200    18      2800    2900    3
50      28      8200    19      2800    2900    3
50      29      8200    19      2800    2800    3
50      30      8200    19      2700    2800    3
50      31      8200    20      2700    2800    3
50      32      8200    20      2600    2700    3
50      33      8200    21      2600    2700    3
50      34      8200    21      2600    2600    3
50      35      8200    21      2500    2600    4
50      36      8200    22      2500    2600    4
50      37      8200    22      2500    2500    4
50      38      8200    22      2500    2500    4
50      39      8200    22      2500    2500    4
50      40      8200    22      2400    2500    4
50      41      8200    23      2400    2500    4
50      42      8200    23      2200    2400    4
50      43      8200    24      2200    2400    4
50      44      8200    24      2100    2200    4
50      45      8200    25      NULL    2200    4
70      1       10000   1       NULL    NULL    1
90      1       24000   1       17000   NULL    1
90      2       24000   2       17000   24000   2
90      3       24000   2       NULL    17000   3
110     1       12000   1       8300    NULL    1
110     2       12000   2       NULL    12000   2
Time taken: 69.578 seconds, Fetched: 108 row(s)

hive> select department_id,salary,first_name,max(salary) over(partition by department_id rows between 1 preceding and 2 following) as res from employee;
Query ID = varunm15t38hedu_20250605061303_bba5d078-de9e-4da3-9769-ae33e83f1b4f
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_16195, Tracking URL = http://master:6318/proxy/application_1741226523923_16195/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_16195
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 4
2025-06-05 06:13:17,738 Stage-1 map = 0%,  reduce = 0%
2025-06-05 06:13:21,908 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.3 sec
2025-06-05 06:13:27,013 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 2.97 sec
2025-06-05 06:13:28,037 Stage-1 map = 100%,  reduce = 50%, Cumulative CPU 4.67 sec
2025-06-05 06:13:30,076 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 9.13 sec
MapReduce Total cumulative CPU time: 9 seconds 130 msec
Ended Job = job_1741226523923_16195
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 4   Cumulative CPU: 9.13 sec   HDFS Read: 49637 HDFS Write: 3846 SUCCESS
Total MapReduce CPU Time Spent: 9 seconds 130 msec
OK
0       7000    Kimberely       7000
20      6000    Pat     13000
20      13000   Michael 13000
40      6500    Susan   6500
60      4200    Diana   6000
60      6000    Bruce   9000
60      4800    David   9000
60      9000    Alexander       9000
60      4800    Valli   9000
80      9000    Allan   14000
80      9500    Patrick 14000
80      14000   John    14000
80      13500   Karen   14000
80      12000   Alberto 13500
80      11000   Gerald  12000
80      10500   Eleni   11000
80      10000   Peter   10500
80      9500    David   10000
80      9000    Peter   9500
80      8000    Christopher     9000
80      7500    Nanette 10000
80      7000    Oliver  10000
80      10000   Janette 10000
80      6200    Charles 10000
80      8400    Jack    8800
80      8600    Jonathon        11000
80      8800    Alyssa  11000
80      11000   Ellen   11000
80      6100    Sundita 11000
80      7300    Elizabeth       9600
80      7400    William 10000
80      9600    Tayler  11500
80      10000   Harrison        11500
80      11500   Lisa    11500
80      6200    Amit    11500
80      6400    Sundar  7200
80      6800    David   9500
80      7200    Mattea  10500
80      9500    Danielle        10500
80      10500   Clara   10500
80      7000    Sarath  10500
80      7500    Louise  8000
80      8000    Lindsey 8000
100     7700    Ismael  7800
100     7800    Jose Manuel     12000
100     6900    Luis    12000
100     12000   Nancy   12000
100     9000    Daniel  12000
100     8200    John    9000
10      0       Ram     4400
10      4400    Jennifer        4400
30      11000   Den     11000
30      2500    Karen   11000
30      2600    Guy     2900
30      2800    Sigal   3100
30      2900    Shelli  3100
30      3100    Alexander       3100
50      3200    Winston 3200
50      3100    Jean    3200
50      2500    Martha  4200
50      2800    Girard  4200
50      4200    Nandita 4200
50      4100    Alexis  4200
50      3400    Julia   4100
50      3000    Anthony 3800
50      3800    Kelly   3800
50      3600    Jennifer        3800
50      2900    Timothy 3600
50      2500    Randall 2900
50      2500    Peter   3100
50      2600    Randall 3500
50      3100    Curtis  3500
50      3500    Trenna  3500
50      2500    Joshua  3500
50      2700    John    3600
50      3200    Stephen 3600
50      3600    Renske  3600
50      2200    Hazel   3600
50      2400    Ki      3300
50      2900    Michael 3300
50      3300    Jason   3300
50      2100    TJ      3300
50      2500    James   3300
50      2800    Mozhe   3300
50      3300    Laura   3300
50      2200    Steven  3300
50      2400    James   3200
50      2700    Irene   5800
50      3200    Julia   6500
50      5800    Kevin   7900
50      6500    Shanta  8200
50      7900    Payam   8200
50      8200    Adam    8200
50      8000    Matthew 8200
50      4000    Sarah   8000
50      3900    Britney 4000
50      3200    Samuel  3900
50      2800    Vance   3200
50      3100    Alana   3100
50      3000    Kevin   3100
50      2600    Donald  3000
50      2600    Douglas 2600
70      10000   Hermann 10000
90      17000   Lex     24000
90      17000   Neena   24000
90      24000   Steven  24000
110     12000   Shelley 12000
110     8300    William 12000
Time taken: 27.718 seconds, Fetched: 108 row(s)

hive> create table ngramdata(line string);
OK
Time taken: 0.063 seconds

hive> load data local inpath 'ngramsdata.txt' into table ngramdata;
Loading data to table varunmdb.ngramdata
OK
Time taken: 4.025 seconds

hive> select * from ngramdata;
OK
The president of India, officially the President of the Republic of India (IAST: Bhārat kē Rāṣhṭrapati) is the ceremonial head of state of India and the Commander in chief of the Indian Armed Forces.

The president is indirectly elected by an electoral college comprising the Parliament of India (both houses) and the legislative assemblies of each of Indias states and territories, who themselves are all directly elected.

Although the Article 53 of the Constitution of India states that the president can exercise his powers directly or by subordinate authority, with few exceptions, all of the executive powers vested in the president are, in practice, exercised by the prime minister (a subordinate authority) with the help of the Council of Ministers.[2] 
The president is bound by the constitution to act on the advice of the prime minister and cabinet as long as the advice is not violating the constitution.

Time taken: 3.833 seconds, Fetched: 6 row(s)

hive> select sentences(line) from ngramdata;
OK
[["The","president","of","India","officially","the","President","of","the","Republic","of","India","IAST","Bhārat","kē","Rāṣhṭrapati","is","the","ceremonial","head","of","state","of","India","and","the","Commander","in","chief","of","the","Indian","Armed","Forces"]]
[]
[["The","president","is","indirectly","elected","by","an","electoral","college","comprising","the","Parliament","of","India","both","houses","and","the","legislative","assemblies","of","each","of","India's","states","and","territories","who","themselves","are","all","directly","elected"]]
[]
[["Although","the","Article","53","of","the","Constitution","of","India","states","that","the","president","can","exercise","his","powers","directly","or","by","subordinate","authority","with","few","exceptions","all","of","the","executive","powers","vested","in","the","president","are","in","practice","exercised","by","the","prime","minister","a","subordinate","authority","with","the","help","of","the","Council","of","Ministers","2"]]
[["The","president","is","bound","by","the","constitution","to","act","on","the","advice","of","the","prime","minister","and","cabinet","as","long","as","the","advice","is","not","violating","the","constitution"]]
Time taken: 3.488 seconds, Fetched: 6 row(s)

hive> select ngrams(sentences(line),2,10) from ngramdata;
Query ID = varunm15t38hedu_20250605063153_331fd80b-68bd-4de2-bbf3-fc67c73cf3c5
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_16246, Tracking URL = http://master:6318/proxy/application_1741226523923_16246/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_16246
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2025-06-05 06:33:16,655 Stage-1 map = 0%,  reduce = 0%
2025-06-05 06:33:31,992 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 2.15 sec
2025-06-05 06:33:38,114 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 4.17 sec
MapReduce Total cumulative CPU time: 4 seconds 170 msec
Ended Job = job_1741226523923_16246
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 4.17 sec   HDFS Read: 9765 HDFS Write: 266 SUCCESS
Total MapReduce CPU Time Spent: 4 seconds 170 msec
OK
[{"ngram":["of","the"],"estfrequency":6.0},{"ngram":["of","India"],"estfrequency":5.0},{"ngram":["The","president"],"estfrequency":3.0},{"ngram":["authority","with"],"estfrequency":2.0},{"ngram":["by","the"],"estfrequency":2.0},{"ngram":["president","is"],"estfrequency":2.0},{"ngram":["prime","minister"],"estfrequency":2.0},{"ngram":["subordinate","authority"],"estfrequency":2.0},{"ngram":["the","president"],"estfrequency":2.0},{"ngram":["the","prime"],"estfrequency":2.0}]
Time taken: 107.84 seconds, Fetched: 1 row(s)

hive> select explode(ngrams(sentences(line),3,10)) from ngramdata;
Query ID = varunm15t38hedu_20250605063625_b9dbd6f3-16b3-453c-b70a-2082ed39f54a
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_16314, Tracking URL = http://master:6318/proxy/application_1741226523923_16314/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_16314
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2025-06-05 06:37:21,019 Stage-1 map = 0%,  reduce = 0%
2025-06-05 06:37:44,433 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.93 sec
2025-06-05 06:37:56,653 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 4.22 sec
MapReduce Total cumulative CPU time: 4 seconds 220 msec
Ended Job = job_1741226523923_16314
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 4.22 sec   HDFS Read: 10303 HDFS Write: 440 SUCCESS
Total MapReduce CPU Time Spent: 4 seconds 220 msec
OK
{"ngram":["The","president","is"],"estfrequency":2.0}
{"ngram":["subordinate","authority","with"],"estfrequency":2.0}
{"ngram":["the","prime","minister"],"estfrequency":2.0}
{"ngram":["and","territories","who"],"estfrequency":1.0}
{"ngram":["is","the","ceremonial"],"estfrequency":1.0}
{"ngram":["of","India","both"],"estfrequency":1.0}
{"ngram":["officially","the","President"],"estfrequency":1.0}
{"ngram":["state","of","India"],"estfrequency":1.0}
{"ngram":["the","president","can"],"estfrequency":1.0}
{"ngram":["with","few","exceptions"],"estfrequency":1.0}
Time taken: 93.689 seconds, Fetched: 10 row(s)

hive> select explode(context_ngrams(sentences(line),array(null,'India'),10)) from ngramdata;
Query ID = varunm15t38hedu_20250605064456_f3692205-da79-4b58-87ec-a50a1e9460a6
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_16379, Tracking URL = http://master:6318/proxy/application_1741226523923_16379/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_16379
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2025-06-05 06:46:22,744 Stage-1 map = 0%,  reduce = 0%
2025-06-05 06:46:38,119 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 2.88 sec
2025-06-05 06:46:46,288 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 5.09 sec
MapReduce Total cumulative CPU time: 5 seconds 90 msec
Ended Job = job_1741226523923_16379
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 5.09 sec   HDFS Read: 10408 HDFS Write: 106 SUCCESS
Total MapReduce CPU Time Spent: 5 seconds 90 msec
OK
{"ngram":["of"],"estfrequency":5.0}
Time taken: 112.317 seconds, Fetched: 1 row(s)

hive> create table coomplex_data_type(emp_id int, name map<string, string>, loc struct<city:string, pin:int>, skill array<string>) row format delimited fields terminated by '\t' collection items terminated by ',' map keys terminated by ':';
OK
Time taken: 0.059 seconds

hive> load data local inpath 'complex_data.txt' into table coomplex_data_type;
Loading data to table varunmdb.coomplex_data_type
OK
Time taken: 4.036 seconds

hive> select * from coomplex_data_type;
OK
101     {"first":"Amit","last":"Mishra"}        {"city":"bbsr","pin":751024}    ["Hadoop","Hive"]
102     {"first":"Aditya","last":"Kulkarni"}    {"city":"bnglr","pin":123412}   ["Hadoop","Hive","Oracle"]
Time taken: 3.439 seconds, Fetched: 2 row(s)

hive> select emp_id, name['first'], loc.city, skill[0] from coomplex_data_type;
OK
101     Amit    bbsr    Hadoop
102     Aditya  bnglr   Hadoop
Time taken: 3.619 seconds, Fetched: 2 row(s)

hive> select emp_id, name['first'],loc.city,skill from coomplex_data_type where array_contains(skill,"Oracle");
OK
102     Aditya  bnglr   ["Hadoop","Hive","Oracle"]
Time taken: 3.529 seconds, Fetched: 1 row(s)

hive> add jar hivemr/udf.py;
Added [hivemr/udf.py] to class path
Added resources: [hivemr/udf.py]

hive> select transform(department_name) using 'python udf.py' as leg from departments;
Query ID = varunm15t38hedu_20250605091148_d01ce17c-e4ac-4f6f-af51-8f3cd337ca92
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks is set to 0 since there is no reduce operator
Starting Job = job_1741226523923_16475, Tracking URL = http://master:6318/proxy/application_1741226523923_16475/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_16475
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 0
2025-06-05 09:11:58,096 Stage-1 map = 0%,  reduce = 0%
2025-06-05 09:12:04,267 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.3 sec
MapReduce Total cumulative CPU time: 1 seconds 300 msec
Ended Job = job_1741226523923_16475
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1   Cumulative CPU: 1.3 sec   HDFS Read: 5744 HDFS Write: 487 SUCCESS
Total MapReduce CPU Time Spent: 1 seconds 300 msec
OK
16
11
12
17
10
4
18
7
11
9
12
10
15
20
22
10
15
14
13
12
12
5
13
18
14
12
9
Time taken: 18.525 seconds, Fetched: 27 row(s)


hive> desc formatted departments;
OK
# col_name              data_type               comment             
department_id           int                                         
department_name         string                                      
manager_id              int                                         
location_id             int                                         
                 
# Detailed Table Information             
Database:               varunmdb                 
OwnerType:              USER                     
Owner:                  varunm15t38hedu          
CreateTime:             Wed Jun 04 04:36:23 UTC 2025     
LastAccessTime:         UNKNOWN                  
Retention:              0                        
Location:               hdfs://master:9000/user/hive/warehouse/varunmdb.db/departments   
Table Type:             EXTERNAL_TABLE           
Table Parameters:                
        EXTERNAL                TRUE                
        bucketing_version       2                   
        numFiles                1                   
        numRows                 0                   
        rawDataSize             0                   
        skip.header.line.count  1                   
        totalSize               739                 
        transient_lastDdlTime   1749011854          
                 
# Storage Information            
SerDe Library:          org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe       
InputFormat:            org.apache.hadoop.mapred.TextInputFormat         
OutputFormat:           org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat       
Compressed:             No                       
Num Buckets:            -1                       
Bucket Columns:         []                       
Sort Columns:           []                       
Storage Desc Params:             
        field.delim             ;                   
        serialization.format    ;                   
        serialization.null.format                           
Time taken: 0.111 seconds, Fetched: 37 row(s)
-----------------------------shell to run a hive script------------------------------------------------------
$ cat heloemp.txt 
use varunmdb;

select department_name, first_name from employee e join departments d on e.department_id=d.department_id;
-------------------------------------------------------------------------------------------------------------
$ hive -f heloemp.txt
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/opt/hive-3.1.1/lib/log4j-slf4j-impl-2.10.0.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/opt/hadoop/share/hadoop/common/lib/slf4j-log4j12-1.7.25.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.apache.logging.slf4j.Log4jLoggerFactory]
Hive Session ID = e9c2b10f-d212-44e5-b7e4-8dc76789961c

Logging initialized using configuration in jar:file:/opt/hive-3.1.1/lib/hive-common-3.1.1.jar!/hive-log4j2.properties Async: true
Hive Session ID = 863f1351-05fe-4c1f-815a-0cfe1dff04b5
OK
Time taken: 1.139 seconds
Query ID = varunm15t38hedu_20250605094419_5a39c3f3-9db3-4cde-830a-5839f97a475e
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_16620, Tracking URL = http://master:6318/proxy/application_1741226523923_16620/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_16620
Hadoop job information for Stage-1: number of mappers: 2; number of reducers: 4
2025-06-05 09:44:40,283 Stage-1 map = 0%,  reduce = 0%
2025-06-05 09:44:46,463 Stage-1 map = 50%,  reduce = 0%, Cumulative CPU 2.35 sec
2025-06-05 09:44:47,491 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 4.54 sec
2025-06-05 09:44:51,580 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 6.48 sec
2025-06-05 09:44:52,601 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 11.56 sec
MapReduce Total cumulative CPU time: 11 seconds 560 msec
Ended Job = job_1741226523923_16620
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 2  Reduce: 4   Cumulative CPU: 11.56 sec   HDFS Read: 48662 HDFS Write: 3444 SUCCESS
Total MapReduce CPU Time Spent: 11 seconds 560 msec
OK
"Administration"        Ram
"Administration"        Jennifer
"Purchasing"    Den
"Purchasing"    Alexander
"Purchasing"    Shelli
"Purchasing"    Sigal
"Purchasing"    Guy
"Purchasing"    Karen
"Human Resources"       Susan
"Public Relations"      Hermann
"Sales" Christopher
"Sales" Charles
"Sales" Jack
"Sales" Jonathon
"Sales" Alyssa
"Sales" Ellen
"Sales" Sundita
"Sales" Elizabeth
"Sales" William
"Sales" Tayler
"Sales" Harrison
"Sales" Lisa
"Sales" Amit
"Sales" Sundar
"Sales" David
"Sales" Mattea
"Sales" Danielle
"Sales" Clara
"Sales" Sarath
"Sales" Louise
"Sales" Lindsey
"Sales" Allan
"Sales" Patrick
"Sales" Janette
"Sales" Oliver
"Sales" Nanette
"Sales" Peter
"Sales" David
"Sales" Peter
"Sales" Eleni
"Sales" Gerald
"Sales" Alberto
"Sales" Karen
"Sales" John
"Executive"     Lex
"Executive"     Steven
"Executive"     Neena
"Accounting"    Shelley
"Accounting"    William
"Finance"       John
"Finance"       Nancy
"Finance"       Daniel
"Finance"       Ismael
"Finance"       Jose Manuel
"Finance"       Luis
"Marketing"     Michael
"Marketing"     Pat
"IT"    Bruce
"IT"    Alexander
"IT"    Diana
"IT"    Valli
"IT"    David
"Shipping"      Vance
"Shipping"      Kevin
"Shipping"      Peter
"Shipping"      Randall
"Shipping"      Curtis
"Shipping"      Trenna
"Shipping"      Joshua
"Shipping"      John
"Shipping"      Stephen
"Shipping"      Renske
"Shipping"      Hazel
"Shipping"      Ki
"Shipping"      Michael
"Shipping"      Jason
"Shipping"      Alana
"Shipping"      Samuel
"Shipping"      Britney
"Shipping"      Sarah
"Shipping"      Randall
"Shipping"      Timothy
"Shipping"      Jennifer
"Shipping"      Kelly
"Shipping"      Anthony
"Shipping"      Julia
"Shipping"      Alexis
"Shipping"      Nandita
"Shipping"      Girard
"Shipping"      Martha
"Shipping"      Jean
"Shipping"      Winston
"Shipping"      TJ
"Shipping"      James
"Shipping"      Mozhe
"Shipping"      Laura
"Shipping"      Steven
"Shipping"      James
"Shipping"      Irene
"Shipping"      Julia
"Shipping"      Kevin
"Shipping"      Shanta
"Shipping"      Payam
"Shipping"      Adam
"Shipping"      Matthew
"Shipping"      Donald
"Shipping"      Douglas
Time taken: 36.397 seconds, Fetched: 107 row(s)

hive> explain select d.department_name, d.department_id,e.salary from departments d join employee e on d.department_id=e.department_id;
OK
STAGE DEPENDENCIES:
  Stage-1 is a root stage
  Stage-0 depends on stages: Stage-1

STAGE PLANS:
  Stage: Stage-1
    Map Reduce
      Map Operator Tree:
          TableScan
            alias: d
            Statistics: Num rows: 1 Data size: 108 Basic stats: COMPLETE Column stats: NONE
            Filter Operator
              predicate: department_id is not null (type: boolean)
              Statistics: Num rows: 1 Data size: 108 Basic stats: COMPLETE Column stats: NONE
              Select Operator
                expressions: department_id (type: int), department_name (type: varchar(20))
                outputColumnNames: _col0, _col1
                Statistics: Num rows: 1 Data size: 108 Basic stats: COMPLETE Column stats: NONE
                Reduce Output Operator
                  key expressions: _col0 (type: int)
                  sort order: +
                  Map-reduce partition columns: _col0 (type: int)
                  Statistics: Num rows: 1 Data size: 108 Basic stats: COMPLETE Column stats: NONE
                  value expressions: _col1 (type: varchar(20))
          TableScan
            alias: e
            Statistics: Num rows: 1 Data size: 116 Basic stats: COMPLETE Column stats: NONE
            Filter Operator
              predicate: department_id is not null (type: boolean)
              Statistics: Num rows: 1 Data size: 116 Basic stats: COMPLETE Column stats: NONE
              Select Operator
                expressions: salary (type: decimal(10,2)), department_id (type: int)
                outputColumnNames: _col0, _col1
                Statistics: Num rows: 1 Data size: 116 Basic stats: COMPLETE Column stats: NONE
                Reduce Output Operator
                  key expressions: _col1 (type: int)
                  sort order: +
                  Map-reduce partition columns: _col1 (type: int)
                  Statistics: Num rows: 1 Data size: 116 Basic stats: COMPLETE Column stats: NONE
                  value expressions: _col0 (type: decimal(10,2))
      Reduce Operator Tree:
        Join Operator
          condition map:
               Inner Join 0 to 1
          keys:
            0 _col0 (type: int)
            1 _col1 (type: int)
          outputColumnNames: _col0, _col1, _col2
          Statistics: Num rows: 1 Data size: 118 Basic stats: COMPLETE Column stats: NONE
          Select Operator
            expressions: _col1 (type: varchar(20)), _col0 (type: int), _col2 (type: decimal(10,2))
            outputColumnNames: _col0, _col1, _col2
            Statistics: Num rows: 1 Data size: 118 Basic stats: COMPLETE Column stats: NONE
            File Output Operator
              compressed: false
              Statistics: Num rows: 1 Data size: 118 Basic stats: COMPLETE Column stats: NONE
              table:
                  input format: org.apache.hadoop.mapred.SequenceFileInputFormat
                  output format: org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat
                  serde: org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe

  Stage: Stage-0
    Fetch Operator
      limit: -1
      Processor Tree:
        ListSink

Time taken: 6.055 seconds, Fetched: 67 row(s)

hive> explain select * from employee e inner join departments d on e.department_id=d.department_id;
OK
STAGE DEPENDENCIES:
  Stage-1 is a root stage
  Stage-0 depends on stages: Stage-1

STAGE PLANS:
  Stage: Stage-1
    Map Reduce
      Map Operator Tree:
          TableScan
            alias: e
            Statistics: Num rows: 1 Data size: 717 Basic stats: COMPLETE Column stats: NONE
            Filter Operator
              predicate: department_id is not null (type: boolean)
              Statistics: Num rows: 1 Data size: 717 Basic stats: COMPLETE Column stats: NONE
              Select Operator
                expressions: employee_id (type: int), first_name (type: varchar(20)), last_name (type: varchar(20)), email (type: varchar(30)), phone_number (type: varchar(15)), hire_date (type: date), job_id (type: int), salary (type: decimal(10,2)), commission_pct (type: decimal(10,2)), manager_id (type: int), department_id (type: int)
                outputColumnNames: _col0, _col1, _col2, _col3, _col4, _col5, _col6, _col7, _col8, _col9, _col10
                Statistics: Num rows: 1 Data size: 717 Basic stats: COMPLETE Column stats: NONE
                Reduce Output Operator
                  key expressions: _col10 (type: int)
                  sort order: +
                  Map-reduce partition columns: _col10 (type: int)
                  Statistics: Num rows: 1 Data size: 717 Basic stats: COMPLETE Column stats: NONE
                  value expressions: _col0 (type: int), _col1 (type: varchar(20)), _col2 (type: varchar(20)), _col3 (type: varchar(30)), _col4 (type: varchar(15)), _col5 (type: date), _col6 (type: int), _col7 (type: decimal(10,2)), _col8 (type: decimal(10,2)), _col9 (type: int)
          TableScan
            alias: d
            Statistics: Num rows: 1 Data size: 116 Basic stats: COMPLETE Column stats: NONE
            Filter Operator
              predicate: department_id is not null (type: boolean)
              Statistics: Num rows: 1 Data size: 116 Basic stats: COMPLETE Column stats: NONE
              Select Operator
                expressions: department_id (type: int), department_name (type: varchar(20)), manager_id (type: int), location_id (type: int)
                outputColumnNames: _col0, _col1, _col2, _col3
                Statistics: Num rows: 1 Data size: 116 Basic stats: COMPLETE Column stats: NONE
                Reduce Output Operator
                  key expressions: _col0 (type: int)
                  sort order: +
                  Map-reduce partition columns: _col0 (type: int)
                  Statistics: Num rows: 1 Data size: 116 Basic stats: COMPLETE Column stats: NONE
                  value expressions: _col1 (type: varchar(20)), _col2 (type: int), _col3 (type: int)
      Reduce Operator Tree:
        Join Operator
          condition map:
               Inner Join 0 to 1
          keys:
            0 _col10 (type: int)
            1 _col0 (type: int)
          outputColumnNames: _col0, _col1, _col2, _col3, _col4, _col5, _col6, _col7, _col8, _col9, _col10, _col11, _col12, _col13, _col14
          Statistics: Num rows: 1 Data size: 788 Basic stats: COMPLETE Column stats: NONE
          File Output Operator
            compressed: false
            Statistics: Num rows: 1 Data size: 788 Basic stats: COMPLETE Column stats: NONE
            table:
                input format: org.apache.hadoop.mapred.SequenceFileInputFormat
                output format: org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat
                serde: org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe

  Stage: Stage-0
    Fetch Operator
      limit: -1
      Processor Tree:
        ListSink

Time taken: 3.902 seconds, Fetched: 63 row(s)

hive> explain select * from employee e inner join departments d on e.department_id=d.department_id;
OK
STAGE DEPENDENCIES:
  Stage-4 is a root stage
  Stage-3 depends on stages: Stage-4
  Stage-0 depends on stages: Stage-3

STAGE PLANS:
  Stage: Stage-4
    Map Reduce Local Work
      Alias -> Map Local Tables:
        $hdt$_1:d 
          Fetch Operator
            limit: -1
      Alias -> Map Local Operator Tree:
        $hdt$_1:d 
          TableScan
            alias: d
            Statistics: Num rows: 1 Data size: 116 Basic stats: COMPLETE Column stats: NONE
            Filter Operator
              predicate: department_id is not null (type: boolean)
              Statistics: Num rows: 1 Data size: 116 Basic stats: COMPLETE Column stats: NONE
              Select Operator
                expressions: department_id (type: int), department_name (type: varchar(20)), manager_id (type: int), location_id (type: int)
                outputColumnNames: _col0, _col1, _col2, _col3
                Statistics: Num rows: 1 Data size: 116 Basic stats: COMPLETE Column stats: NONE
                HashTable Sink Operator
                  keys:
                    0 _col10 (type: int)
                    1 _col0 (type: int)

  Stage: Stage-3
    Map Reduce
      Map Operator Tree:
          TableScan
            alias: e
            Statistics: Num rows: 1 Data size: 717 Basic stats: COMPLETE Column stats: NONE
            Filter Operator
              predicate: department_id is not null (type: boolean)
              Statistics: Num rows: 1 Data size: 717 Basic stats: COMPLETE Column stats: NONE
              Select Operator
                expressions: employee_id (type: int), first_name (type: varchar(20)), last_name (type: varchar(20)), email (type: varchar(30)), phone_number (type: varchar(15)), hire_date (type: date), job_id (type: int), salary (type: decimal(10,2)), commission_pct (type: decimal(10,2)), manager_id (type: int), department_id (type: int)
                outputColumnNames: _col0, _col1, _col2, _col3, _col4, _col5, _col6, _col7, _col8, _col9, _col10
                Statistics: Num rows: 1 Data size: 717 Basic stats: COMPLETE Column stats: NONE
                Map Join Operator
                  condition map:
                       Inner Join 0 to 1
                  keys:
                    0 _col10 (type: int)
                    1 _col0 (type: int)
                  outputColumnNames: _col0, _col1, _col2, _col3, _col4, _col5, _col6, _col7, _col8, _col9, _col10, _col11, _col12, _col13, _col14
                  Statistics: Num rows: 1 Data size: 788 Basic stats: COMPLETE Column stats: NONE
                  File Output Operator
                    compressed: false
                    Statistics: Num rows: 1 Data size: 788 Basic stats: COMPLETE Column stats: NONE
                    table:
                        input format: org.apache.hadoop.mapred.SequenceFileInputFormat
                        output format: org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat
                        serde: org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe
      Execution mode: vectorized
      Local Work:
        Map Reduce Local Work

  Stage: Stage-0
    Fetch Operator
      limit: -1
      Processor Tree:
        ListSink

Time taken: 3.88 seconds, Fetched: 67 row(s)

hive> explain select * from bucketemp e inner join bucketdept d on e.department_id=d.dept_id;
OK
STAGE DEPENDENCIES:
  Stage-4 is a root stage
  Stage-3 depends on stages: Stage-4
  Stage-0 depends on stages: Stage-3

STAGE PLANS:
  Stage: Stage-4
    Map Reduce Local Work
      Alias -> Map Local Tables:
        $hdt$_1:d 
          Fetch Operator
            limit: -1
      Alias -> Map Local Operator Tree:
        $hdt$_1:d 
          TableScan
            alias: d
            Statistics: Num rows: 27 Data size: 5211 Basic stats: COMPLETE Column stats: COMPLETE
            Filter Operator
              predicate: dept_id is not null (type: boolean)
              Statistics: Num rows: 27 Data size: 5211 Basic stats: COMPLETE Column stats: COMPLETE
              Select Operator
                expressions: dept_id (type: int), dept_name (type: string), manager_id (type: int), loc (type: string)
                outputColumnNames: _col0, _col1, _col2, _col3
                Statistics: Num rows: 27 Data size: 5211 Basic stats: COMPLETE Column stats: COMPLETE
                HashTable Sink Operator
                  keys:
                    0 _col10 (type: int)
                    1 _col0 (type: int)

  Stage: Stage-3
    Map Reduce
      Map Operator Tree:
          TableScan
            alias: e
            Statistics: Num rows: 108 Data size: 114816 Basic stats: COMPLETE Column stats: NONE
            Filter Operator
              predicate: department_id is not null (type: boolean)
              Statistics: Num rows: 103 Data size: 109500 Basic stats: COMPLETE Column stats: NONE
              Select Operator
                expressions: emp_id (type: int), first_name (type: string), last_name (type: string), email (type: string), phone (type: string), hire_date (type: date), job_id (type: string), salary (type: int), comission_pct (type: decimal(10,0)), manager_id (type: int), department_id (type: int)
                outputColumnNames: _col0, _col1, _col2, _col3, _col4, _col5, _col6, _col7, _col8, _col9, _col10
                Statistics: Num rows: 103 Data size: 109500 Basic stats: COMPLETE Column stats: NONE
                Map Join Operator
                  condition map:
                       Inner Join 0 to 1
                  keys:
                    0 _col10 (type: int)
                    1 _col0 (type: int)
                  outputColumnNames: _col0, _col1, _col2, _col3, _col4, _col5, _col6, _col7, _col8, _col9, _col10, _col11, _col12, _col13, _col14
                  Statistics: Num rows: 113 Data size: 120450 Basic stats: COMPLETE Column stats: NONE
                  File Output Operator
                    compressed: false
                    Statistics: Num rows: 113 Data size: 120450 Basic stats: COMPLETE Column stats: NONE
                    table:
                        input format: org.apache.hadoop.mapred.SequenceFileInputFormat
                        output format: org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat
                        serde: org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe
      Execution mode: vectorized
      Local Work:
        Map Reduce Local Work

  Stage: Stage-0
    Fetch Operator
      limit: -1
      Processor Tree:
        ListSink

Time taken: 3.808 seconds, Fetched: 67 row(s)

