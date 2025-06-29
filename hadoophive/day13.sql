hive> create external table departments( department_id int, department_name string, manager_id int, location_id int) row format delimited fields terminated by ';' null defined as '' tblproperties('skip.header.line
.count'='1');
Time taken: 0.072 seconds

hive> load data local inpath 'departments.csv' into table departments;
Loading data to table varunmdb.departments
OK
Time taken: 4.038 seconds

hive> select * from departments;
OK
10      "Administration"        200     1700
20      "Marketing"     201     1800
30      "Purchasing"    114     1700
40      "Human Resources"       203     2400
50      "Shipping"      121     1500
60      "IT"    103     1400
70      "Public Relations"      204     2700
80      "Sales" 145     2500
90      "Executive"     100     1700
100     "Finance"       108     1700
110     "Accounting"    205     1700
120     "Treasury"      0       1700
130     "Corporate Tax" 0       1700
140     "Control And Credit"    0       1700
150     "Shareholder Services"  0       1700
160     "Benefits"      0       1700
170     "Manufacturing" 0       1700
180     "Construction"  0       1700
190     "Contracting"   0       1700
200     "Operations"    0       1700
210     "IT Support"    0       1700
220     "NOC"   0       1700
230     "IT Helpdesk"   0       1700
240     "Government Sales"      0       1700
250     "Retail Sales"  0       1700
260     "Recruiting"    0       1700
270     "Payroll"       0       1700
Time taken: 3.504 seconds, Fetched: 27 row(s)

hive> create external table employee(employee_id int, first_name varchar(40), last_name varchar(40), email varchar(100), phone varchar(10), hire_date date, job_id varchar(30), salary int, comission_pct int, manager_id int, department_id int) row format delimited fields terminated by ',' null defined as '';
OK
Time taken: 0.053 seconds

hive> select * from employee;
OK
100     Steven  King    SKING   515.123.45      1987-06-17      AD_PRES 24000   0       0       90
101     Neena   Kochhar NKOCHHAR        515.123.45      1989-09-21      AD_VP   17000   0       100     90
102     Lex     De Haan LDEHAAN 515.123.45      1993-01-13      AD_VP   17000   0       100     90
103     Alexander       Hunold  AHUNOLD 590.423.45      1990-01-03      IT_PROG 9000    0       102     60
104     Bruce   Ernst   BERNST  590.423.45      1991-05-21      IT_PROG 6000    0       103     60
105     David   Austin  DAUSTIN 590.423.45      1997-06-25      IT_PROG 4800    0       103     60
106     Valli   Pataballa       VPATABAL        590.423.45      1998-02-05      IT_PROG 4800    0       103     60
107     Diana   Lorentz DLORENTZ        590.423.55      1999-02-07      IT_PROG 4200    0       103     60
108     Nancy   Greenberg       NGREENBE        515.124.45      1994-08-17      FI_MGR  12000   0       101     100
109     Daniel  Faviet  DFAVIET 515.124.41      1994-08-16      FI_ACCOUNT      9000    0       108     100
110     John    Chen    JCHEN   515.124.42      1997-09-28      FI_ACCOUNT      8200    0       108     100
111     Ismael  Sciarra ISCIARRA        515.124.43      1997-09-30      FI_ACCOUNT      7700    0       108     100
112     Jose Manuel     Urman   JMURMAN 515.124.44      1998-03-07      FI_ACCOUNT      7800    0       108     100
113     Luis    Popp    LPOPP   515.124.45      1999-12-07      FI_ACCOUNT      6900    0       108     100
114     Den     Raphaely        DRAPHEAL        515.127.45      1994-12-07      PU_MAN  11000   0       100     30
115     Alexander       Khoo    AKHOO   515.127.45      1995-05-18      PU_CLERK        3100    0       114     30
116     Shelli  Baida   SBAIDA  515.127.45      1997-12-24      PU_CLERK        2900    0       114     30
117     Sigal   Tobias  STOBIAS 515.127.45      1997-07-24      PU_CLERK        2800    0       114     30
118     Guy     Himuro  GHIMURO 515.127.45      1998-11-15      PU_CLERK        2600    0       114     30
119     Karen   Colmenares      KCOLMENA        515.127.45      1999-08-10      PU_CLERK        2500    0       114     30
120     Matthew Weiss   MWEISS  650.123.12      1996-07-18      ST_MAN  8000    0       100     50
121     Adam    Fripp   AFRIPP  650.123.22      1997-04-10      ST_MAN  8200    0       100     50
122     Payam   Kaufling        PKAUFLIN        650.123.32      1995-05-01      ST_MAN  7900    0       100     50
123     Shanta  Vollman SVOLLMAN        650.123.42      1997-10-10      ST_MAN  6500    0       100     50
124     Kevin   Mourgos KMOURGOS        650.123.52      1999-11-16      ST_MAN  5800    0       100     50
125     Julia   Nayer   JNAYER  650.124.12      1997-07-16      ST_CLERK        3200    0       120     50
126     Irene   Mikkilineni     IMIKKILI        650.124.12      1998-09-28      ST_CLERK        2700    0       120     50
127     James   Landry  JLANDRY 650.124.13      1999-01-14      ST_CLERK        2400    0       120     50
128     Steven  Markle  SMARKLE 650.124.14      2000-03-08      ST_CLERK        2200    0       120     50
129     Laura   Bissot  LBISSOT 650.124.52      1997-08-20      ST_CLERK        3300    0       121     50
130     Mozhe   Atkinson        MATKINSO        650.124.62      1997-10-30      ST_CLERK        2800    0       121     50
131     James   Marlow  JAMRLOW 650.124.72      1997-02-16      ST_CLERK        2500    0       121     50
132     TJ      Olson   TJOLSON 650.124.82      1999-04-10      ST_CLERK        2100    0       121     50
133     Jason   Mallin  JMALLIN 650.127.19      1996-06-14      ST_CLERK        3300    0       122     50
134     Michael Rogers  MROGERS 650.127.18      1998-08-26      ST_CLERK        2900    0       122     50
135     Ki      Gee     KGEE    650.127.17      1999-12-12      ST_CLERK        2400    0       122     50
136     Hazel   Philtanker      HPHILTAN        650.127.16      2000-02-06      ST_CLERK        2200    0       122     50
137     Renske  Ladwig  RLADWIG 650.121.12      1995-07-14      ST_CLERK        3600    0       123     50
138     Stephen Stiles  SSTILES 650.121.20      1997-10-26      ST_CLERK        3200    0       123     50
139     John    Seo     JSEO    650.121.20      1998-02-12      ST_CLERK        2700    0       123     50
140     Joshua  Patel   JPATEL  650.121.18      1998-04-06      ST_CLERK        2500    0       123     50
141     Trenna  Rajs    TRAJS   650.121.80      1995-10-17      ST_CLERK        3500    0       124     50
142     Curtis  Davies  CDAVIES 650.121.29      1997-01-29      ST_CLERK        3100    0       124     50
143     Randall Matos   RMATOS  650.121.28      1998-03-15      ST_CLERK        2600    0       124     50
144     Peter   Vargas  PVARGAS 650.121.20      1998-07-09      ST_CLERK        2500    0       124     50
145     John    Russell JRUSSEL 011.44.134      1996-10-01      SA_MAN  14000   0       100     80
146     Karen   Partners        KPARTNER        011.44.134      1997-01-05      SA_MAN  13500   0       100     80
147     Alberto Errazuriz       AERRAZUR        011.44.134      1997-03-10      SA_MAN  12000   0       100     80
148     Gerald  Cambrault       GCAMBRAU        011.44.134      1999-10-15      SA_MAN  11000   0       100     80
149     Eleni   Zlotkey EZLOTKEY        011.44.134      2000-01-29      SA_MAN  10500   0       100     80
150     Peter   Tucker  PTUCKER 011.44.134      1997-01-30      SA_REP  10000   0       145     80
151     David   Bernstein       DBERNSTE        011.44.134      1997-03-24      SA_REP  9500    0       145     80
152     Peter   Hall    PHALL   011.44.134      1997-08-20      SA_REP  9000    0       145     80
153     Christopher     Olsen   COLSEN  011.44.134      1998-03-30      SA_REP  8000    0       145     80
154     Nanette Cambrault       NCAMBRAU        011.44.134      1998-12-09      SA_REP  7500    0       145     80
155     Oliver  Tuvault OTUVAULT        011.44.134      1999-11-23      SA_REP  7000    0       145     80
156     Janette King    JKING   011.44.134      1996-01-30      SA_REP  10000   0       146     80
157     Patrick Sully   PSULLY  011.44.134      1996-03-04      SA_REP  9500    0       146     80
158     Allan   McEwen  AMCEWEN 011.44.134      1996-08-01      SA_REP  9000    0       146     80
159     Lindsey Smith   LSMITH  011.44.134      1997-03-10      SA_REP  8000    0       146     80
160     Louise  Doran   LDORAN  011.44.134      1997-12-15      SA_REP  7500    0       146     80
161     Sarath  Sewall  SSEWALL 011.44.134      1998-11-03      SA_REP  7000    0       146     80
162     Clara   Vishney CVISHNEY        011.44.134      1997-11-11      SA_REP  10500   0       147     80
163     Danielle        Greene  DGREENE 011.44.134      1999-03-19      SA_REP  9500    0       147     80
164     Mattea  Marvins MMARVINS        011.44.134      2000-01-24      SA_REP  7200    0       147     80
165     David   Lee     DLEE    011.44.134      2000-02-23      SA_REP  6800    0       147     80
166     Sundar  Ande    SANDE   011.44.134      2000-03-24      SA_REP  6400    0       147     80
167     Amit    Banda   ABANDA  011.44.134      2000-04-21      SA_REP  6200    0       147     80
168     Lisa    Ozer    LOZER   011.44.134      1997-03-11      SA_REP  11500   0       148     80
169     Harrison        Bloom   HBLOOM  011.44.134      1998-03-23      SA_REP  10000   0       148     80
170     Tayler  Fox     TFOX    011.44.134      1998-01-24      SA_REP  9600    0       148     80
171     William Smith   WSMITH  011.44.134      1999-02-23      SA_REP  7400    0       148     80
172     Elizabeth       Bates   EBATES  011.44.134      1999-03-24      SA_REP  7300    0       148     80
173     Sundita Kumar   SKUMAR  011.44.134      2000-04-21      SA_REP  6100    0       148     80
174     Ellen   Abel    EABEL   011.44.164      1996-05-11      SA_REP  11000   0       149     80
175     Alyssa  Hutton  AHUTTON 011.44.164      1997-03-19      SA_REP  8800    0       149     80
176     Jonathon        Taylor  JTAYLOR 011.44.164      1998-03-24      SA_REP  8600    0       149     80
177     Jack    Livingston      JLIVINGS        011.44.164      1998-04-23      SA_REP  8400    0       149     80
178     Kimberely       Grant   KGRANT  011.44.164      1999-05-24      SA_REP  7000    0       149     0
179     Charles Johnson CJOHNSON        011.44.164      2000-01-04      SA_REP  6200    0       149     80
180     Winston Taylor  WTAYLOR 650.507.98      1998-01-24      SH_CLERK        3200    0       120     50
181     Jean    Fleaur  JFLEAUR 650.507.98      1998-02-23      SH_CLERK        3100    0       120     50
182     Martha  Sullivan        MSULLIVA        650.507.98      1999-06-21      SH_CLERK        2500    0       120     50
183     Girard  Geoni   GGEONI  650.507.98      2000-02-03      SH_CLERK        2800    0       120     50
184     Nandita Sarchand        NSARCHAN        650.509.18      1996-01-27      SH_CLERK        4200    0       121     50
185     Alexis  Bull    ABULL   650.509.28      1997-02-20      SH_CLERK        4100    0       121     50
186     Julia   Dellinger       JDELLING        650.509.38      1998-06-24      SH_CLERK        3400    0       121     50
187     Anthony Cabrio  ACABRIO 650.509.48      1999-02-07      SH_CLERK        3000    0       121     50
188     Kelly   Chung   KCHUNG  650.505.18      1997-06-14      SH_CLERK        3800    0       122     50
189     Jennifer        Dilly   JDILLY  650.505.28      1997-08-13      SH_CLERK        3600    0       122     50
190     Timothy Gates   TGATES  650.505.38      1998-07-11      SH_CLERK        2900    0       122     50
191     Randall Perkins RPERKINS        650.505.48      1999-12-19      SH_CLERK        2500    0       122     50
192     Sarah   Bell    SBELL   650.501.18      1996-02-04      SH_CLERK        4000    0       123     50
193     Britney Everett BEVERETT        650.501.28      1997-03-03      SH_CLERK        3900    0       123     50
194     Samuel  McCain  SMCCAIN 650.501.38      1998-07-01      SH_CLERK        3200    0       123     50
195     Vance   Jones   VJONES  650.501.48      1999-03-17      SH_CLERK        2800    0       123     50
196     Alana   Walsh   AWALSH  650.507.98      1998-04-24      SH_CLERK        3100    0       124     50
197     Kevin   Feeney  KFEENEY 650.507.98      1998-05-23      SH_CLERK        3000    0       124     50
198     Donald  OConnell        DOCONNEL        650.507.98      1999-06-21      SH_CLERK        2600    0       124     50
199     Douglas Grant   DGRANT  650.507.98      2000-01-13      SH_CLERK        2600    0       124     50
200     Jennifer        Whalen  JWHALEN 515.123.44      1987-09-17      AD_ASST 4400    0       101     10
201     Michael Hartstein       MHARTSTE        515.123.55      1996-02-17      MK_MAN  13000   0       100     20
202     Pat     Fay     PFAY    603.123.66      1997-08-17      MK_REP  6000    0       201     20
203     Susan   Mavris  SMAVRIS 515.123.77      1994-06-07      HR_REP  6500    0       101     40
204     Hermann Baer    HBAER   515.123.88      1994-06-07      PR_REP  10000   0       101     70
205     Shelley Higgins SHIGGINS        515.123.80      1994-06-07      AC_MGR  12000   0       101     110
206     William Gietz   WGIETZ  515.123.81      1994-06-07      AC_ACCOUNT      8300    0       205     110
900     Ram     NULL    NULL    NULL    NULL    AC_MGR  0       0       0       10
Time taken: 3.497 seconds, Fetched: 108 row(s)


hive> show create table employee;
OK
CREATE EXTERNAL TABLE `employee`(
  `employee_id` int, 
  `first_name` varchar(40), 
  `last_name` varchar(40), 
  `email` varchar(100), 
  `phone` varchar(10), 
  `hire_date` date, 
  `job_id` varchar(30), 
  `salary` int, 
  `comission_pct` int, 
  `manager_id` int, 
  `department_id` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES ( 
  'field.delim'=',', 
  'serialization.format'=',', 
  'serialization.null.format'='') 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://master:9000/user/hive/warehouse/varunmdb.db/employee'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1749010124')
Time taken: 0.062 seconds, Fetched: 27 row(s)

hive> select count(*) from employee;
Query ID = varunm15t38hedu_20250604053246_c230e25f-d1b1-4998-a7d2-9811417cd831
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_13714, Tracking URL = http://master:6318/proxy/application_1741226523923_13714/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_13714
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2025-06-04 05:33:19,793 Stage-1 map = 0%,  reduce = 0%
2025-06-04 05:33:38,156 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 2.16 sec
2025-06-04 05:33:46,342 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 4.47 sec
MapReduce Total cumulative CPU time: 4 seconds 470 msec
Ended Job = job_1741226523923_13714
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 4.47 sec   HDFS Read: 23643 HDFS Write: 103 SUCCESS
Total MapReduce CPU Time Spent: 4 seconds 470 msec
OK
108

hive> select count(*) from departments;
Query ID = varunm15t38hedu_20250604053801_8d6cae46-823b-45a5-8f27-91502c24c43a
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_13785, Tracking URL = http://master:6318/proxy/application_1741226523923_13785/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_13785
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2025-06-04 05:38:28,326 Stage-1 map = 0%,  reduce = 0%
2025-06-04 05:38:43,635 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 2.09 sec
2025-06-04 05:38:50,798 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 4.32 sec
MapReduce Total cumulative CPU time: 4 seconds 320 msec
Ended Job = job_1741226523923_13785
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 4.32 sec   HDFS Read: 13589 HDFS Write: 102 SUCCESS
Total MapReduce CPU Time Spent: 4 seconds 320 msec
OK
27
Time taken: 52.442 seconds, Fetched: 1 row(s)

hive> select first_name, salary from employee;
OK
Steven  24000
Neena   17000
Lex     17000
Alexander       9000
Bruce   6000
David   4800
Valli   4800
Diana   4200
Nancy   12000
Daniel  9000
John    8200
Ismael  7700
Jose Manuel     7800
Luis    6900
Den     11000
Alexander       3100
Shelli  2900
Sigal   2800
Guy     2600
Karen   2500
Matthew 8000
Adam    8200
Payam   7900
Shanta  6500
Kevin   5800
Julia   3200
Irene   2700
James   2400
Steven  2200
Laura   3300
Mozhe   2800
James   2500
TJ      2100
Jason   3300
Michael 2900
Ki      2400
Hazel   2200
Renske  3600
Stephen 3200
John    2700
Joshua  2500
Trenna  3500
Curtis  3100
Randall 2600
Peter   2500
John    14000
Karen   13500
Alberto 12000
Gerald  11000
Eleni   10500
Peter   10000
David   9500
Peter   9000
Christopher     8000
Nanette 7500
Oliver  7000
Janette 10000
Patrick 9500
Allan   9000
Lindsey 8000
Louise  7500
Sarath  7000
Clara   10500
Danielle        9500
Mattea  7200
David   6800
Sundar  6400
Amit    6200
Lisa    11500
Harrison        10000
Tayler  9600
William 7400
Elizabeth       7300
Sundita 6100
Ellen   11000
Alyssa  8800
Jonathon        8600
Jack    8400
Kimberely       7000
Charles 6200
Winston 3200
Jean    3100
Martha  2500
Girard  2800
Nandita 4200
Alexis  4100
Julia   3400
Anthony 3000
Kelly   3800
Jennifer        3600
Timothy 2900
Randall 2500
Sarah   4000
Britney 3900
Samuel  3200
Vance   2800
Alana   3100
Kevin   3000
Donald  2600
Douglas 2600
Jennifer        4400
Michael 13000
Pat     6000
Susan   6500
Hermann 10000
Shelley 12000
William 8300
Ram     0
Time taken: 3.762 seconds, Fetched: 108 row(s)

hive> select first_name, salary from employee where department_id=50;
OK
Matthew 8000
Adam    8200
Payam   7900
Shanta  6500
Kevin   5800
Julia   3200
Irene   2700
James   2400
Steven  2200
Laura   3300
Mozhe   2800
James   2500
TJ      2100
Jason   3300
Michael 2900
Ki      2400
Hazel   2200
Renske  3600
Stephen 3200
John    2700
Joshua  2500
Trenna  3500
Curtis  3100
Randall 2600
Peter   2500
Winston 3200
Jean    3100
Martha  2500
Girard  2800
Nandita 4200
Alexis  4100
Julia   3400
Anthony 3000
Kelly   3800
Jennifer        3600
Timothy 2900
Randall 2500
Sarah   4000
Britney 3900
Samuel  3200
Vance   2800
Alana   3100
Kevin   3000
Donald  2600
Douglas 2600
Time taken: 4.033 seconds, Fetched: 45 row(s)

hive> select department_id, count(department_id)  from employee group by department_id;
Query ID = varunm15t38hedu_20250604054540_0f03f8a6-9456-44a4-b1bb-7565254e9c30
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_13829, Tracking URL = http://master:6318/proxy/application_1741226523923_13829/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_13829
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 4
2025-06-04 05:46:26,578 Stage-1 map = 0%,  reduce = 0%
2025-06-04 05:46:48,737 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 2.36 sec
2025-06-04 05:47:03,066 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 4.31 sec
2025-06-04 05:47:05,116 Stage-1 map = 100%,  reduce = 75%, Cumulative CPU 8.86 sec
2025-06-04 05:47:12,252 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 11.35 sec
MapReduce Total cumulative CPU time: 11 seconds 350 msec
Ended Job = job_1741226523923_13829
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 4   Cumulative CPU: 11.35 sec   HDFS Read: 47822 HDFS Write: 555 SUCCESS
Total MapReduce CPU Time Spent: 11 seconds 350 msec
OK
0       1
20      2
40      1
60      5
80      34
100     6
10      2
30      6
50      45
70      1
90      3
110     2
Time taken: 94.56 seconds, Fetched: 12 row(s)

hive> select department_id, count(department_id) emp_count  from employee group by department_id order by emp_count;
Query ID = varunm15t38hedu_20250604054933_64fc7363-e702-43fd-8670-7061f92f60b3
Total jobs = 2
Launching Job 1 out of 2
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_13912, Tracking URL = http://master:6318/proxy/application_1741226523923_13912/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_13912
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 4
2025-06-04 05:50:19,445 Stage-1 map = 0%,  reduce = 0%
2025-06-04 05:50:46,459 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 2.22 sec
2025-06-04 05:51:05,831 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 4.41 sec
2025-06-04 05:51:13,979 Stage-1 map = 100%,  reduce = 50%, Cumulative CPU 6.62 sec
2025-06-04 05:51:16,028 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 11.29 sec
MapReduce Total cumulative CPU time: 11 seconds 290 msec
Ended Job = job_1741226523923_13912
Launching Job 2 out of 2
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_13937, Tracking URL = http://master:6318/proxy/application_1741226523923_13937/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_13937
Hadoop job information for Stage-2: number of mappers: 2; number of reducers: 1
2025-06-04 05:51:34,389 Stage-2 map = 0%,  reduce = 0%
2025-06-04 05:51:40,522 Stage-2 map = 50%,  reduce = 0%, Cumulative CPU 1.63 sec
2025-06-04 05:51:46,654 Stage-2 map = 100%,  reduce = 0%, Cumulative CPU 3.73 sec
2025-06-04 05:51:48,696 Stage-2 map = 100%,  reduce = 100%, Cumulative CPU 5.42 sec
MapReduce Total cumulative CPU time: 5 seconds 420 msec
Ended Job = job_1741226523923_13937
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 4   Cumulative CPU: 11.29 sec   HDFS Read: 44189 HDFS Write: 612 SUCCESS
Stage-Stage-2: Map: 2  Reduce: 1   Cumulative CPU: 5.42 sec   HDFS Read: 12293 HDFS Write: 294 SUCCESS
Total MapReduce CPU Time Spent: 16 seconds 710 msec
OK
70      1
40      1
0       1
110     2
10      2
20      2
90      3
60      5
30      6
100     6
80      34
50      45
Time taken: 137.678 seconds, Fetched: 12 row(s)

hive> select hire_date, add_months(hire_date, 5) as hire_add_month from employee;
OK
1987-06-17      1987-11-17
1989-09-21      1990-02-21
1993-01-13      1993-06-13
1990-01-03      1990-06-03
1991-05-21      1991-10-21
1997-06-25      1997-11-25
1998-02-05      1998-07-05
1999-02-07      1999-07-07
1994-08-17      1995-01-17
1994-08-16      1995-01-16
1997-09-28      1998-02-28
1997-09-30      1998-02-28
1998-03-07      1998-08-07
1999-12-07      2000-05-07
1994-12-07      1995-05-07
1995-05-18      1995-10-18
1997-12-24      1998-05-24
1997-07-24      1997-12-24
1998-11-15      1999-04-15
1999-08-10      2000-01-10
1996-07-18      1996-12-18
1997-04-10      1997-09-10
1995-05-01      1995-10-01
1997-10-10      1998-03-10
1999-11-16      2000-04-16
1997-07-16      1997-12-16
1998-09-28      1999-02-28
1999-01-14      1999-06-14
2000-03-08      2000-08-08
1997-08-20      1998-01-20
1997-10-30      1998-03-30
1997-02-16      1997-07-16
1999-04-10      1999-09-10
1996-06-14      1996-11-14
1998-08-26      1999-01-26
1999-12-12      2000-05-12
2000-02-06      2000-07-06
1995-07-14      1995-12-14
1997-10-26      1998-03-26
1998-02-12      1998-07-12
1998-04-06      1998-09-06
1995-10-17      1996-03-17
1997-01-29      1997-06-29
1998-03-15      1998-08-15
1998-07-09      1998-12-09
1996-10-01      1997-03-01
1997-01-05      1997-06-05
1997-03-10      1997-08-10
1999-10-15      2000-03-15
2000-01-29      2000-06-29
1997-01-30      1997-06-30
1997-03-24      1997-08-24
1997-08-20      1998-01-20
1998-03-30      1998-08-30
1998-12-09      1999-05-09
1999-11-23      2000-04-23
1996-01-30      1996-06-30
1996-03-04      1996-08-04
1996-08-01      1997-01-01
1997-03-10      1997-08-10
1997-12-15      1998-05-15
1998-11-03      1999-04-03
1997-11-11      1998-04-11
1999-03-19      1999-08-19
2000-01-24      2000-06-24
2000-02-23      2000-07-23
2000-03-24      2000-08-24
2000-04-21      2000-09-21
1997-03-11      1997-08-11
1998-03-23      1998-08-23
1998-01-24      1998-06-24
1999-02-23      1999-07-23
1999-03-24      1999-08-24
2000-04-21      2000-09-21
1996-05-11      1996-10-11
1997-03-19      1997-08-19
1998-03-24      1998-08-24
1998-04-23      1998-09-23
1999-05-24      1999-10-24
2000-01-04      2000-06-04
1998-01-24      1998-06-24
1998-02-23      1998-07-23
1999-06-21      1999-11-21
2000-02-03      2000-07-03
1996-01-27      1996-06-27
1997-02-20      1997-07-20
1998-06-24      1998-11-24
1999-02-07      1999-07-07
1997-06-14      1997-11-14
1997-08-13      1998-01-13
1998-07-11      1998-12-11
1999-12-19      2000-05-19
1996-02-04      1996-07-04
1997-03-03      1997-08-03
1998-07-01      1998-12-01
1999-03-17      1999-08-17
1998-04-24      1998-09-24
1998-05-23      1998-10-23
1999-06-21      1999-11-21
2000-01-13      2000-06-13
1987-09-17      1988-02-17
1996-02-17      1996-07-17
1997-08-17      1998-01-17
1994-06-07      1994-11-07
1994-06-07      1994-11-07
1994-06-07      1994-11-07
1994-06-07      1994-11-07
NULL    NULL

hive> select hire_date, datediff(current_date, hire_date) dates from employee;
OK
1987-06-17      13867
1989-09-21      13040
1993-01-13      11830
1990-01-03      12936
1991-05-21      12433
1997-06-25      10206
1998-02-05      9981
1999-02-07      9614
1994-08-17      11249
1994-08-16      11250
1997-09-28      10111
1997-09-30      10109
1998-03-07      9951
1999-12-07      9311
1994-12-07      11137
1995-05-18      10975
1997-12-24      10024
1997-07-24      10177
1998-11-15      9698
1999-08-10      9430
1996-07-18      10548
1997-04-10      10282
1995-05-01      10992
1997-10-10      10099
1999-11-16      9332
1997-07-16      10185
1998-09-28      9746
1999-01-14      9638
2000-03-08      9219
1997-08-20      10150
1997-10-30      10079
1997-02-16      10335
1999-04-10      9552
1996-06-14      10582
1998-08-26      9779
1999-12-12      9306
2000-02-06      9250
1995-07-14      10918
1997-10-26      10083
1998-02-12      9974
1998-04-06      9921
1995-10-17      10823
1997-01-29      10353
1998-03-15      9943
1998-07-09      9827
1996-10-01      10473
1997-01-05      10377
1997-03-10      10313
1999-10-15      9364
2000-01-29      9258
1997-01-30      10352
1997-03-24      10299
1997-08-20      10150
1998-03-30      9928
1998-12-09      9674
1999-11-23      9325
1996-01-30      10718
1996-03-04      10684
1996-08-01      10534
1997-03-10      10313
1997-12-15      10033
1998-11-03      9710
1997-11-11      10067
1999-03-19      9574
2000-01-24      9263
2000-02-23      9233
2000-03-24      9203
2000-04-21      9175
1997-03-11      10312
1998-03-23      9935
1998-01-24      9993
1999-02-23      9598
1999-03-24      9569
2000-04-21      9175
1996-05-11      10616
1997-03-19      10304
1998-03-24      9934
1998-04-23      9904
1999-05-24      9508
2000-01-04      9283
1998-01-24      9993
1998-02-23      9963
1999-06-21      9480
2000-02-03      9253
1996-01-27      10721
1997-02-20      10331
1998-06-24      9842
1999-02-07      9614
1997-06-14      10217
1997-08-13      10157
1998-07-11      9825
1999-12-19      9299
1996-02-04      10713
1997-03-03      10320
1998-07-01      9835
1999-03-17      9576
1998-04-24      9903
1998-05-23      9874
1999-06-21      9480
2000-01-13      9274
1987-09-17      13775
1996-02-17      10700
1997-08-17      10153
1994-06-07      11320
1994-06-07      11320
1994-06-07      11320
1994-06-07      11320
NULL    NULL
Time taken: 3.559 seconds, Fetched: 108 row(s)

hive> select extract(year from hire_date), count(*) count_emp from employee group by extract(year from hire_date);
Query ID = varunm15t38hedu_20250604060423_cc0a8401-83a0-4948-9351-e1e2c327c15c
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_14021, Tracking URL = http://master:6318/proxy/application_1741226523923_14021/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14021
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 4
2025-06-04 06:04:36,883 Stage-1 map = 0%,  reduce = 0%
2025-06-04 06:04:41,992 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.41 sec
2025-06-04 06:04:48,120 Stage-1 map = 100%,  reduce = 75%, Cumulative CPU 6.78 sec
2025-06-04 06:04:50,155 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 9.09 sec
MapReduce Total cumulative CPU time: 9 seconds 90 msec
Ended Job = job_1741226523923_14021
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 4   Cumulative CPU: 9.09 sec   HDFS Read: 47629 HDFS Write: 598 SUCCESS
Total MapReduce CPU Time Spent: 9 seconds 90 msec
OK
NULL    1
1996    10
2000    11
1989    1
1993    1
1997    28
1990    1
1994    7
1998    23
1987    2
1991    1
1995    4
1999    18
Time taken: 29.683 seconds, Fetched: 13 row(s)

hive> select extract(year from hire_date), department_id, count(*) from employee group by extract(year from hire_date), department_id;
Query ID = varunm15t38hedu_20250604060744_92f647e6-b0fd-4de4-bef4-eba4792265a1
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_14064, Tracking URL = http://master:6318/proxy/application_1741226523923_14064/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14064
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 4
2025-06-04 06:07:58,499 Stage-1 map = 0%,  reduce = 0%
2025-06-04 06:08:03,613 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.83 sec
2025-06-04 06:08:08,720 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 3.7 sec
2025-06-04 06:08:09,738 Stage-1 map = 100%,  reduce = 75%, Cumulative CPU 7.61 sec
2025-06-04 06:08:11,774 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 9.83 sec
MapReduce Total cumulative CPU time: 9 seconds 830 msec
Ended Job = job_1741226523923_14064
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 4   Cumulative CPU: 9.83 sec   HDFS Read: 49077 HDFS Write: 1145 SUCCESS
Total MapReduce CPU Time Spent: 9 seconds 830 msec
OK
1994    30      1
1994    70      1
1994    110     2
1996    20      1
1996    80      5
1998    30      1
1998    50      13
2000    80      7
1989    90      1
1991    60      1
1993    90      1
1997    30      2
1997    50      12
1999    0       1
1999    60      1
1999    80      5
1999    100     1
NULL    10      1
1990    60      1
1994    40      1
1994    100     2
1996    50      4
1998    60      1
1998    80      7
1998    100     1
2000    50      4
1987    10      1
1987    90      1
1995    30      1
1995    50      3
1997    20      1
1997    60      1
1997    80      10
1997    100     2
1999    30      1
1999    50      9
Time taken: 29.669 seconds, Fetched: 36 row(s)

hive> select extract(year from hire_date), department_id, count(*) from employee group by extract(year from hire_date), department_id;
Query ID = varunm15t38hedu_20250604060744_92f647e6-b0fd-4de4-bef4-eba4792265a1
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_14064, Tracking URL = http://master:6318/proxy/application_1741226523923_14064/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14064
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 4
2025-06-04 06:07:58,499 Stage-1 map = 0%,  reduce = 0%
2025-06-04 06:08:03,613 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.83 sec
2025-06-04 06:08:08,720 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 3.7 sec
2025-06-04 06:08:09,738 Stage-1 map = 100%,  reduce = 75%, Cumulative CPU 7.61 sec
2025-06-04 06:08:11,774 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 9.83 sec
MapReduce Total cumulative CPU time: 9 seconds 830 msec
Ended Job = job_1741226523923_14064
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 4   Cumulative CPU: 9.83 sec   HDFS Read: 49077 HDFS Write: 1145 SUCCESS
Total MapReduce CPU Time Spent: 9 seconds 830 msec
OK
1994    30      1
1994    70      1
1994    110     2
1996    20      1
1996    80      5
1998    30      1
1998    50      13
2000    80      7
1989    90      1
1991    60      1
1993    90      1
1997    30      2
1997    50      12
1999    0       1
1999    60      1
1999    80      5
1999    100     1
NULL    10      1
1990    60      1
1994    40      1
1994    100     2
1996    50      4
1998    60      1
1998    80      7
1998    100     1
2000    50      4
1987    10      1
1987    90      1
1995    30      1
1995    50      3
1997    20      1
1997    60      1
1997    80      10
1997    100     2
1999    30      1
1999    50      9
Time taken: 29.669 seconds, Fetched: 36 row(s)

hive> select department_id from departments union select department_id from employee;
Query ID = varunm15t38hedu_20250604061256_42e97f8d-efd3-47b5-9697-f884202aecf7
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_14119, Tracking URL = http://master:6318/proxy/application_1741226523923_14119/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14119
Hadoop job information for Stage-1: number of mappers: 2; number of reducers: 4
2025-06-04 06:13:16,125 Stage-1 map = 0%,  reduce = 0%
2025-06-04 06:13:26,340 Stage-1 map = 50%,  reduce = 0%, Cumulative CPU 2.08 sec
2025-06-04 06:13:27,367 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 4.26 sec
2025-06-04 06:13:38,586 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 6.36 sec
2025-06-04 06:13:41,643 Stage-1 map = 100%,  reduce = 50%, Cumulative CPU 8.57 sec
2025-06-04 06:13:45,721 Stage-1 map = 100%,  reduce = 75%, Cumulative CPU 10.32 sec
2025-06-04 06:13:46,748 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 12.53 sec
MapReduce Total cumulative CPU time: 12 seconds 530 msec
Ended Job = job_1741226523923_14119
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 2  Reduce: 4   Cumulative CPU: 12.53 sec   HDFS Read: 43458 HDFS Write: 785 SUCCESS
Total MapReduce CPU Time Spent: 12 seconds 530 msec
OK
0
20
40
60
80
100
120
140
160
180
200
220
240
260
10
30
50
70
90
110
130
150
170
190
210
230
250
270
Time taken: 57.647 seconds, Fetched: 28 row(s)

hive> select department_id from departments intersect select department_id from employee;
Query ID = varunm15t38hedu_20250604062255_a326ecaf-4f9b-44ec-84fd-64227c064b5f
Total jobs = 3
Launching Job 1 out of 3
Launching Job 2 out of 3
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_14269, Tracking URL = http://master:6318/proxy/application_1741226523923_14269/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14269
Starting Job = job_1741226523923_14270, Tracking URL = http://master:6318/proxy/application_1741226523923_14270/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14270
Hadoop job information for Stage-3: number of mappers: 1; number of reducers: 4
2025-06-04 06:23:07,414 Stage-3 map = 0%,  reduce = 0%
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 4
2025-06-04 06:23:07,521 Stage-1 map = 0%,  reduce = 0%
2025-06-04 06:23:12,513 Stage-3 map = 100%,  reduce = 0%, Cumulative CPU 1.33 sec
2025-06-04 06:23:12,608 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.34 sec
2025-06-04 06:23:17,603 Stage-3 map = 100%,  reduce = 50%, Cumulative CPU 4.87 sec
2025-06-04 06:23:18,622 Stage-3 map = 100%,  reduce = 100%, Cumulative CPU 8.06 sec
2025-06-04 06:23:18,717 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 3.2 sec
2025-06-04 06:23:19,734 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 8.48 sec
MapReduce Total cumulative CPU time: 8 seconds 60 msec
Ended Job = job_1741226523923_14269
MapReduce Total cumulative CPU time: 8 seconds 480 msec
Ended Job = job_1741226523923_14270
Launching Job 3 out of 3
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_14271, Tracking URL = http://master:6318/proxy/application_1741226523923_14271/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14271
Hadoop job information for Stage-2: number of mappers: 4; number of reducers: 4
2025-06-04 06:23:29,584 Stage-2 map = 0%,  reduce = 0%
2025-06-04 06:23:34,684 Stage-2 map = 75%,  reduce = 0%, Cumulative CPU 3.68 sec
2025-06-04 06:23:35,701 Stage-2 map = 100%,  reduce = 0%, Cumulative CPU 4.92 sec
2025-06-04 06:23:39,770 Stage-2 map = 100%,  reduce = 100%, Cumulative CPU 13.18 sec
MapReduce Total cumulative CPU time: 13 seconds 180 msec
Ended Job = job_1741226523923_14271
MapReduce Jobs Launched: 
Stage-Stage-3: Map: 1  Reduce: 4   Cumulative CPU: 8.06 sec   HDFS Read: 43529 HDFS Write: 612 SUCCESS
Stage-Stage-1: Map: 1  Reduce: 4   Cumulative CPU: 8.48 sec   HDFS Read: 30883 HDFS Write: 914 SUCCESS
Stage-Stage-2: Map: 4  Reduce: 4   Cumulative CPU: 13.18 sec   HDFS Read: 34074 HDFS Write: 515 SUCCESS
Total MapReduce CPU Time Spent: 29 seconds 720 msec
OK
20
40
60
80
100
10
30
50
70
90
110
Time taken: 47.533 seconds, Fetched: 11 row(s)

hive> select * from employee e cross join departments d on e.department_id=d.department_id;
Query ID = varunm15t38hedu_20250604062551_4b417b52-67ba-41c3-86ab-d6748e6c10e4
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_14293, Tracking URL = http://master:6318/proxy/application_1741226523923_14293/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14293
Hadoop job information for Stage-1: number of mappers: 2; number of reducers: 4
2025-06-04 06:26:03,992 Stage-1 map = 0%,  reduce = 0%
2025-06-04 06:26:10,120 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 4.39 sec
2025-06-04 06:26:15,225 Stage-1 map = 100%,  reduce = 50%, Cumulative CPU 7.7 sec
2025-06-04 06:26:16,245 Stage-1 map = 100%,  reduce = 75%, Cumulative CPU 9.36 sec
2025-06-04 06:26:17,261 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 10.76 sec
MapReduce Total cumulative CPU time: 10 seconds 760 msec
Ended Job = job_1741226523923_14293
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 2  Reduce: 4   Cumulative CPU: 10.76 sec   HDFS Read: 60674 HDFS Write: 11454 SUCCESS
Total MapReduce CPU Time Spent: 10 seconds 760 msec
OK
900     Ram     NULL    NULL    NULL    NULL    AC_MGR  0       0       0       10      10      "Administration"        200     1700
200     Jennifer        Whalen  JWHALEN 515.123.44      1987-09-17      AD_ASST 4400    0       101     10      10      "Administration"        200     1700
114     Den     Raphaely        DRAPHEAL        515.127.45      1994-12-07      PU_MAN  11000   0       100     30      30      "Purchasing"    114     1700
115     Alexander       Khoo    AKHOO   515.127.45      1995-05-18      PU_CLERK        3100    0       114     30      30      "Purchasing"    114     1700
116     Shelli  Baida   SBAIDA  515.127.45      1997-12-24      PU_CLERK        2900    0       114     30      30      "Purchasing"    114     1700
117     Sigal   Tobias  STOBIAS 515.127.45      1997-07-24      PU_CLERK        2800    0       114     30      30      "Purchasing"    114     1700
118     Guy     Himuro  GHIMURO 515.127.45      1998-11-15      PU_CLERK        2600    0       114     30      30      "Purchasing"    114     1700
119     Karen   Colmenares      KCOLMENA        515.127.45      1999-08-10      PU_CLERK        2500    0       114     30      30      "Purchasing"    114     1700
203     Susan   Mavris  SMAVRIS 515.123.77      1994-06-07      HR_REP  6500    0       101     40      40      "Human Resources"       203     2400
204     Hermann Baer    HBAER   515.123.88      1994-06-07      PR_REP  10000   0       101     70      70      "Public Relations"      204     2700
153     Christopher     Olsen   COLSEN  011.44.134      1998-03-30      SA_REP  8000    0       145     80      80      "Sales" 145     2500
179     Charles Johnson CJOHNSON        011.44.164      2000-01-04      SA_REP  6200    0       149     80      80      "Sales" 145     2500
177     Jack    Livingston      JLIVINGS        011.44.164      1998-04-23      SA_REP  8400    0       149     80      80      "Sales" 145     2500
176     Jonathon        Taylor  JTAYLOR 011.44.164      1998-03-24      SA_REP  8600    0       149     80      80      "Sales" 145     2500
175     Alyssa  Hutton  AHUTTON 011.44.164      1997-03-19      SA_REP  8800    0       149     80      80      "Sales" 145     2500
174     Ellen   Abel    EABEL   011.44.164      1996-05-11      SA_REP  11000   0       149     80      80      "Sales" 145     2500
173     Sundita Kumar   SKUMAR  011.44.134      2000-04-21      SA_REP  6100    0       148     80      80      "Sales" 145     2500
172     Elizabeth       Bates   EBATES  011.44.134      1999-03-24      SA_REP  7300    0       148     80      80      "Sales" 145     2500
171     William Smith   WSMITH  011.44.134      1999-02-23      SA_REP  7400    0       148     80      80      "Sales" 145     2500
170     Tayler  Fox     TFOX    011.44.134      1998-01-24      SA_REP  9600    0       148     80      80      "Sales" 145     2500
169     Harrison        Bloom   HBLOOM  011.44.134      1998-03-23      SA_REP  10000   0       148     80      80      "Sales" 145     2500
168     Lisa    Ozer    LOZER   011.44.134      1997-03-11      SA_REP  11500   0       148     80      80      "Sales" 145     2500
167     Amit    Banda   ABANDA  011.44.134      2000-04-21      SA_REP  6200    0       147     80      80      "Sales" 145     2500
166     Sundar  Ande    SANDE   011.44.134      2000-03-24      SA_REP  6400    0       147     80      80      "Sales" 145     2500
165     David   Lee     DLEE    011.44.134      2000-02-23      SA_REP  6800    0       147     80      80      "Sales" 145     2500
164     Mattea  Marvins MMARVINS        011.44.134      2000-01-24      SA_REP  7200    0       147     80      80      "Sales" 145     2500
163     Danielle        Greene  DGREENE 011.44.134      1999-03-19      SA_REP  9500    0       147     80      80      "Sales" 145     2500
162     Clara   Vishney CVISHNEY        011.44.134      1997-11-11      SA_REP  10500   0       147     80      80      "Sales" 145     2500
161     Sarath  Sewall  SSEWALL 011.44.134      1998-11-03      SA_REP  7000    0       146     80      80      "Sales" 145     2500
160     Louise  Doran   LDORAN  011.44.134      1997-12-15      SA_REP  7500    0       146     80      80      "Sales" 145     2500
159     Lindsey Smith   LSMITH  011.44.134      1997-03-10      SA_REP  8000    0       146     80      80      "Sales" 145     2500
158     Allan   McEwen  AMCEWEN 011.44.134      1996-08-01      SA_REP  9000    0       146     80      80      "Sales" 145     2500
157     Patrick Sully   PSULLY  011.44.134      1996-03-04      SA_REP  9500    0       146     80      80      "Sales" 145     2500
156     Janette King    JKING   011.44.134      1996-01-30      SA_REP  10000   0       146     80      80      "Sales" 145     2500
155     Oliver  Tuvault OTUVAULT        011.44.134      1999-11-23      SA_REP  7000    0       145     80      80      "Sales" 145     2500
154     Nanette Cambrault       NCAMBRAU        011.44.134      1998-12-09      SA_REP  7500    0       145     80      80      "Sales" 145     2500
152     Peter   Hall    PHALL   011.44.134      1997-08-20      SA_REP  9000    0       145     80      80      "Sales" 145     2500
151     David   Bernstein       DBERNSTE        011.44.134      1997-03-24      SA_REP  9500    0       145     80      80      "Sales" 145     2500
150     Peter   Tucker  PTUCKER 011.44.134      1997-01-30      SA_REP  10000   0       145     80      80      "Sales" 145     2500
149     Eleni   Zlotkey EZLOTKEY        011.44.134      2000-01-29      SA_MAN  10500   0       100     80      80      "Sales" 145     2500
148     Gerald  Cambrault       GCAMBRAU        011.44.134      1999-10-15      SA_MAN  11000   0       100     80      80      "Sales" 145     2500
147     Alberto Errazuriz       AERRAZUR        011.44.134      1997-03-10      SA_MAN  12000   0       100     80      80      "Sales" 145     2500
146     Karen   Partners        KPARTNER        011.44.134      1997-01-05      SA_MAN  13500   0       100     80      80      "Sales" 145     2500
145     John    Russell JRUSSEL 011.44.134      1996-10-01      SA_MAN  14000   0       100     80      80      "Sales" 145     2500
102     Lex     De Haan LDEHAAN 515.123.45      1993-01-13      AD_VP   17000   0       100     90      90      "Executive"     100     1700
100     Steven  King    SKING   515.123.45      1987-06-17      AD_PRES 24000   0       0       90      90      "Executive"     100     1700
101     Neena   Kochhar NKOCHHAR        515.123.45      1989-09-21      AD_VP   17000   0       100     90      90      "Executive"     100     1700
205     Shelley Higgins SHIGGINS        515.123.80      1994-06-07      AC_MGR  12000   0       101     110     110     "Accounting"    205     1700
206     William Gietz   WGIETZ  515.123.81      1994-06-07      AC_ACCOUNT      8300    0       205     110     110     "Accounting"    205     1700
110     John    Chen    JCHEN   515.124.42      1997-09-28      FI_ACCOUNT      8200    0       108     100     100     "Finance"       108     1700
108     Nancy   Greenberg       NGREENBE        515.124.45      1994-08-17      FI_MGR  12000   0       101     100     100     "Finance"       108     1700
109     Daniel  Faviet  DFAVIET 515.124.41      1994-08-16      FI_ACCOUNT      9000    0       108     100     100     "Finance"       108     1700
111     Ismael  Sciarra ISCIARRA        515.124.43      1997-09-30      FI_ACCOUNT      7700    0       108     100     100     "Finance"       108     1700
112     Jose Manuel     Urman   JMURMAN 515.124.44      1998-03-07      FI_ACCOUNT      7800    0       108     100     100     "Finance"       108     1700
113     Luis    Popp    LPOPP   515.124.45      1999-12-07      FI_ACCOUNT      6900    0       108     100     100     "Finance"       108     1700
201     Michael Hartstein       MHARTSTE        515.123.55      1996-02-17      MK_MAN  13000   0       100     20      20      "Marketing"     201     1800
202     Pat     Fay     PFAY    603.123.66      1997-08-17      MK_REP  6000    0       201     20      20      "Marketing"     201     1800
104     Bruce   Ernst   BERNST  590.423.45      1991-05-21      IT_PROG 6000    0       103     60      60      "IT"    103     1400
103     Alexander       Hunold  AHUNOLD 590.423.45      1990-01-03      IT_PROG 9000    0       102     60      60      "IT"    103     1400
107     Diana   Lorentz DLORENTZ        590.423.55      1999-02-07      IT_PROG 4200    0       103     60      60      "IT"    103     1400
106     Valli   Pataballa       VPATABAL        590.423.45      1998-02-05      IT_PROG 4800    0       103     60      60      "IT"    103     1400
105     David   Austin  DAUSTIN 590.423.45      1997-06-25      IT_PROG 4800    0       103     60      60      "IT"    103     1400
195     Vance   Jones   VJONES  650.501.48      1999-03-17      SH_CLERK        2800    0       123     50      50      "Shipping"      121     1500
197     Kevin   Feeney  KFEENEY 650.507.98      1998-05-23      SH_CLERK        3000    0       124     50      50      "Shipping"      121     1500
144     Peter   Vargas  PVARGAS 650.121.20      1998-07-09      ST_CLERK        2500    0       124     50      50      "Shipping"      121     1500
143     Randall Matos   RMATOS  650.121.28      1998-03-15      ST_CLERK        2600    0       124     50      50      "Shipping"      121     1500
142     Curtis  Davies  CDAVIES 650.121.29      1997-01-29      ST_CLERK        3100    0       124     50      50      "Shipping"      121     1500
141     Trenna  Rajs    TRAJS   650.121.80      1995-10-17      ST_CLERK        3500    0       124     50      50      "Shipping"      121     1500
140     Joshua  Patel   JPATEL  650.121.18      1998-04-06      ST_CLERK        2500    0       123     50      50      "Shipping"      121     1500
139     John    Seo     JSEO    650.121.20      1998-02-12      ST_CLERK        2700    0       123     50      50      "Shipping"      121     1500
138     Stephen Stiles  SSTILES 650.121.20      1997-10-26      ST_CLERK        3200    0       123     50      50      "Shipping"      121     1500
137     Renske  Ladwig  RLADWIG 650.121.12      1995-07-14      ST_CLERK        3600    0       123     50      50      "Shipping"      121     1500
136     Hazel   Philtanker      HPHILTAN        650.127.16      2000-02-06      ST_CLERK        2200    0       122     50      50      "Shipping"      121     1500
135     Ki      Gee     KGEE    650.127.17      1999-12-12      ST_CLERK        2400    0       122     50      50      "Shipping"      121     1500
134     Michael Rogers  MROGERS 650.127.18      1998-08-26      ST_CLERK        2900    0       122     50      50      "Shipping"      121     1500
133     Jason   Mallin  JMALLIN 650.127.19      1996-06-14      ST_CLERK        3300    0       122     50      50      "Shipping"      121     1500
196     Alana   Walsh   AWALSH  650.507.98      1998-04-24      SH_CLERK        3100    0       124     50      50      "Shipping"      121     1500
194     Samuel  McCain  SMCCAIN 650.501.38      1998-07-01      SH_CLERK        3200    0       123     50      50      "Shipping"      121     1500
193     Britney Everett BEVERETT        650.501.28      1997-03-03      SH_CLERK        3900    0       123     50      50      "Shipping"      121     1500
192     Sarah   Bell    SBELL   650.501.18      1996-02-04      SH_CLERK        4000    0       123     50      50      "Shipping"      121     1500
191     Randall Perkins RPERKINS        650.505.48      1999-12-19      SH_CLERK        2500    0       122     50      50      "Shipping"      121     1500
190     Timothy Gates   TGATES  650.505.38      1998-07-11      SH_CLERK        2900    0       122     50      50      "Shipping"      121     1500
189     Jennifer        Dilly   JDILLY  650.505.28      1997-08-13      SH_CLERK        3600    0       122     50      50      "Shipping"      121     1500
188     Kelly   Chung   KCHUNG  650.505.18      1997-06-14      SH_CLERK        3800    0       122     50      50      "Shipping"      121     1500
187     Anthony Cabrio  ACABRIO 650.509.48      1999-02-07      SH_CLERK        3000    0       121     50      50      "Shipping"      121     1500
186     Julia   Dellinger       JDELLING        650.509.38      1998-06-24      SH_CLERK        3400    0       121     50      50      "Shipping"      121     1500
185     Alexis  Bull    ABULL   650.509.28      1997-02-20      SH_CLERK        4100    0       121     50      50      "Shipping"      121     1500
184     Nandita Sarchand        NSARCHAN        650.509.18      1996-01-27      SH_CLERK        4200    0       121     50      50      "Shipping"      121     1500
183     Girard  Geoni   GGEONI  650.507.98      2000-02-03      SH_CLERK        2800    0       120     50      50      "Shipping"      121     1500
182     Martha  Sullivan        MSULLIVA        650.507.98      1999-06-21      SH_CLERK        2500    0       120     50      50      "Shipping"      121     1500
181     Jean    Fleaur  JFLEAUR 650.507.98      1998-02-23      SH_CLERK        3100    0       120     50      50      "Shipping"      121     1500
180     Winston Taylor  WTAYLOR 650.507.98      1998-01-24      SH_CLERK        3200    0       120     50      50      "Shipping"      121     1500
132     TJ      Olson   TJOLSON 650.124.82      1999-04-10      ST_CLERK        2100    0       121     50      50      "Shipping"      121     1500
131     James   Marlow  JAMRLOW 650.124.72      1997-02-16      ST_CLERK        2500    0       121     50      50      "Shipping"      121     1500
130     Mozhe   Atkinson        MATKINSO        650.124.62      1997-10-30      ST_CLERK        2800    0       121     50      50      "Shipping"      121     1500
129     Laura   Bissot  LBISSOT 650.124.52      1997-08-20      ST_CLERK        3300    0       121     50      50      "Shipping"      121     1500
128     Steven  Markle  SMARKLE 650.124.14      2000-03-08      ST_CLERK        2200    0       120     50      50      "Shipping"      121     1500
127     James   Landry  JLANDRY 650.124.13      1999-01-14      ST_CLERK        2400    0       120     50      50      "Shipping"      121     1500
126     Irene   Mikkilineni     IMIKKILI        650.124.12      1998-09-28      ST_CLERK        2700    0       120     50      50      "Shipping"      121     1500
125     Julia   Nayer   JNAYER  650.124.12      1997-07-16      ST_CLERK        3200    0       120     50      50      "Shipping"      121     1500
124     Kevin   Mourgos KMOURGOS        650.123.52      1999-11-16      ST_MAN  5800    0       100     50      50      "Shipping"      121     1500
123     Shanta  Vollman SVOLLMAN        650.123.42      1997-10-10      ST_MAN  6500    0       100     50      50      "Shipping"      121     1500
122     Payam   Kaufling        PKAUFLIN        650.123.32      1995-05-01      ST_MAN  7900    0       100     50      50      "Shipping"      121     1500
121     Adam    Fripp   AFRIPP  650.123.22      1997-04-10      ST_MAN  8200    0       100     50      50      "Shipping"      121     1500
120     Matthew Weiss   MWEISS  650.123.12      1996-07-18      ST_MAN  8000    0       100     50      50      "Shipping"      121     1500
198     Donald  OConnell        DOCONNEL        650.507.98      1999-06-21      SH_CLERK        2600    0       124     50      50      "Shipping"      121     1500
199     Douglas Grant   DGRANT  650.507.98      2000-01-13      SH_CLERK        2600    0       124     50      50      "Shipping"      121     1500
Time taken: 29.588 seconds, Fetched: 107 row(s)

hive> select e.first_name, d.department_name from departments d left outer join employee e on d.department_id=e.department_id;
Query ID = varunm15t38hedu_20250604064127_515b861b-9ffc-48b2-adaf-71a2ec4a78bb
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_14486, Tracking URL = http://master:6318/proxy/application_1741226523923_14486/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14486
Hadoop job information for Stage-1: number of mappers: 2; number of reducers: 4
2025-06-04 06:41:40,909 Stage-1 map = 0%,  reduce = 0%
2025-06-04 06:41:48,091 Stage-1 map = 50%,  reduce = 0%, Cumulative CPU 1.45 sec
2025-06-04 06:41:50,133 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 3.39 sec
2025-06-04 06:41:53,188 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 5.13 sec
2025-06-04 06:41:54,209 Stage-1 map = 100%,  reduce = 50%, Cumulative CPU 6.42 sec
2025-06-04 06:41:55,236 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 10.0 sec
MapReduce Total cumulative CPU time: 10 seconds 0 msec
Ended Job = job_1741226523923_14486
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 2  Reduce: 4   Cumulative CPU: 10.0 sec   HDFS Read: 46282 HDFS Write: 3914 SUCCESS
Total MapReduce CPU Time Spent: 10 seconds 0 msec
OK
Ram     "Administration"
Jennifer        "Administration"
Den     "Purchasing"
Alexander       "Purchasing"
Shelli  "Purchasing"
Sigal   "Purchasing"
Guy     "Purchasing"
Karen   "Purchasing"
Susan   "Human Resources"
Hermann "Public Relations"
Christopher     "Sales"
Charles "Sales"
Jack    "Sales"
Jonathon        "Sales"
Alyssa  "Sales"
Ellen   "Sales"
Sundita "Sales"
Elizabeth       "Sales"
William "Sales"
Tayler  "Sales"
Harrison        "Sales"
Lisa    "Sales"
Amit    "Sales"
Sundar  "Sales"
David   "Sales"
Mattea  "Sales"
Danielle        "Sales"
Clara   "Sales"
Sarath  "Sales"
Louise  "Sales"
Lindsey "Sales"
Allan   "Sales"
Patrick "Sales"
Janette "Sales"
Oliver  "Sales"
Nanette "Sales"
Peter   "Sales"
David   "Sales"
Peter   "Sales"
Eleni   "Sales"
Gerald  "Sales"
Alberto "Sales"
Karen   "Sales"
John    "Sales"
Lex     "Executive"
Steven  "Executive"
Neena   "Executive"
Shelley "Accounting"
William "Accounting"
John    "Finance"
Nancy   "Finance"
Daniel  "Finance"
Ismael  "Finance"
Jose Manuel     "Finance"
Luis    "Finance"
NULL    "Treasury"
NULL    "Corporate Tax"
NULL    "Shareholder Services"
NULL    "Benefits"
NULL    "Operations"
NULL    "IT Helpdesk"
NULL    "Retail Sales"
Michael "Marketing"
Pat     "Marketing"
Bruce   "IT"
Alexander       "IT"
Diana   "IT"
Valli   "IT"
David   "IT"
NULL    "Control And Credit"
NULL    "Contracting"
NULL    "Government Sales"
NULL    "Recruiting"
Vance   "Shipping"
Kevin   "Shipping"
Peter   "Shipping"
Randall "Shipping"
Curtis  "Shipping"
Trenna  "Shipping"
Joshua  "Shipping"
John    "Shipping"
Stephen "Shipping"
Renske  "Shipping"
Hazel   "Shipping"
Ki      "Shipping"
Michael "Shipping"
Jason   "Shipping"
Alana   "Shipping"
Samuel  "Shipping"
Britney "Shipping"
Sarah   "Shipping"
Randall "Shipping"
Timothy "Shipping"
Jennifer        "Shipping"
Kelly   "Shipping"
Anthony "Shipping"
Julia   "Shipping"
Alexis  "Shipping"
Nandita "Shipping"
Girard  "Shipping"
Martha  "Shipping"
Jean    "Shipping"
Winston "Shipping"
TJ      "Shipping"
James   "Shipping"
Mozhe   "Shipping"
Laura   "Shipping"
Steven  "Shipping"
James   "Shipping"
Irene   "Shipping"
Julia   "Shipping"
Kevin   "Shipping"
Shanta  "Shipping"
Payam   "Shipping"
Adam    "Shipping"
Matthew "Shipping"
Donald  "Shipping"
Douglas "Shipping"
NULL    "Manufacturing"
NULL    "Construction"
NULL    "IT Support"
NULL    "NOC"
NULL    "Payroll"
Time taken: 31.511 seconds, Fetched: 123 row(s)

hive> select e.first_name, d.department_name from departments d full outer join employee e on d.department_id=e.department_id;
Query ID = varunm15t38hedu_20250604064246_37d0fb6d-15ed-44ae-8d49-993ef018baab
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_14502, Tracking URL = http://master:6318/proxy/application_1741226523923_14502/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14502
Hadoop job information for Stage-1: number of mappers: 2; number of reducers: 4
2025-06-04 06:43:01,172 Stage-1 map = 0%,  reduce = 0%
2025-06-04 06:43:08,343 Stage-1 map = 50%,  reduce = 0%, Cumulative CPU 1.97 sec
2025-06-04 06:43:09,361 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 3.56 sec
2025-06-04 06:43:14,457 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 5.35 sec
2025-06-04 06:43:15,474 Stage-1 map = 100%,  reduce = 50%, Cumulative CPU 7.1 sec
2025-06-04 06:43:18,527 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 10.79 sec
MapReduce Total cumulative CPU time: 10 seconds 790 msec
Ended Job = job_1741226523923_14502
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 2  Reduce: 4   Cumulative CPU: 10.79 sec   HDFS Read: 46294 HDFS Write: 3939 SUCCESS
Total MapReduce CPU Time Spent: 10 seconds 790 msec
OK
Ram     "Administration"
Jennifer        "Administration"
Den     "Purchasing"
Alexander       "Purchasing"
Shelli  "Purchasing"
Sigal   "Purchasing"
Guy     "Purchasing"
Karen   "Purchasing"
Susan   "Human Resources"
Hermann "Public Relations"
Christopher     "Sales"
Charles "Sales"
Jack    "Sales"
Jonathon        "Sales"
Alyssa  "Sales"
Ellen   "Sales"
Sundita "Sales"
Elizabeth       "Sales"
William "Sales"
Tayler  "Sales"
Harrison        "Sales"
Lisa    "Sales"
Amit    "Sales"
Sundar  "Sales"
David   "Sales"
Mattea  "Sales"
Danielle        "Sales"
Clara   "Sales"
Sarath  "Sales"
Louise  "Sales"
Lindsey "Sales"
Allan   "Sales"
Patrick "Sales"
Janette "Sales"
Oliver  "Sales"
Nanette "Sales"
Peter   "Sales"
David   "Sales"
Peter   "Sales"
Eleni   "Sales"
Gerald  "Sales"
Alberto "Sales"
Karen   "Sales"
John    "Sales"
Lex     "Executive"
Steven  "Executive"
Neena   "Executive"
Shelley "Accounting"
William "Accounting"
Kimberely       NULL
John    "Finance"
Nancy   "Finance"
Daniel  "Finance"
Ismael  "Finance"
Jose Manuel     "Finance"
Luis    "Finance"
NULL    "Treasury"
NULL    "Corporate Tax"
NULL    "Shareholder Services"
NULL    "Benefits"
NULL    "Operations"
NULL    "IT Helpdesk"
NULL    "Retail Sales"
Michael "Marketing"
Pat     "Marketing"
Bruce   "IT"
Alexander       "IT"
Diana   "IT"
Valli   "IT"
David   "IT"
NULL    "Control And Credit"
NULL    "Contracting"
NULL    "Government Sales"
NULL    "Recruiting"
Vance   "Shipping"
Kevin   "Shipping"
Peter   "Shipping"
Randall "Shipping"
Curtis  "Shipping"
Trenna  "Shipping"
Joshua  "Shipping"
John    "Shipping"
Stephen "Shipping"
Renske  "Shipping"
Hazel   "Shipping"
Ki      "Shipping"
Michael "Shipping"
Jason   "Shipping"
Alana   "Shipping"
Samuel  "Shipping"
Britney "Shipping"
Sarah   "Shipping"
Randall "Shipping"
Timothy "Shipping"
Jennifer        "Shipping"
Kelly   "Shipping"
Anthony "Shipping"
Julia   "Shipping"
Alexis  "Shipping"
Nandita "Shipping"
Girard  "Shipping"
Martha  "Shipping"
Jean    "Shipping"
Winston "Shipping"
TJ      "Shipping"
James   "Shipping"
Mozhe   "Shipping"
Laura   "Shipping"
Steven  "Shipping"
James   "Shipping"
Irene   "Shipping"
Julia   "Shipping"
Kevin   "Shipping"
Shanta  "Shipping"
Payam   "Shipping"
Adam    "Shipping"
Matthew "Shipping"
Donald  "Shipping"
Douglas "Shipping"
NULL    "Manufacturing"
NULL    "Construction"
NULL    "IT Support"
NULL    "NOC"
NULL    "Payroll"
Time taken: 35.753 seconds, Fetched: 124 row(s)

hive> select department_name from departments anti join employee using(department_id);
Query ID = varunm15t38hedu_20250604065256_bd765975-039b-4bca-8187-39be84629e07
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_14619, Tracking URL = http://master:6318/proxy/application_1741226523923_14619/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14619
Hadoop job information for Stage-1: number of mappers: 2; number of reducers: 4
2025-06-04 06:53:08,256 Stage-1 map = 0%,  reduce = 0%
2025-06-04 06:53:13,361 Stage-1 map = 50%,  reduce = 0%, Cumulative CPU 1.88 sec
2025-06-04 06:53:14,378 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 3.91 sec
2025-06-04 06:53:17,440 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 5.62 sec
2025-06-04 06:53:18,457 Stage-1 map = 100%,  reduce = 75%, Cumulative CPU 8.85 sec
2025-06-04 06:53:20,492 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 10.53 sec
MapReduce Total cumulative CPU time: 10 seconds 530 msec
Ended Job = job_1741226523923_14619
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 2  Reduce: 4   Cumulative CPU: 10.53 sec   HDFS Read: 47522 HDFS Write: 2719 SUCCESS
Total MapReduce CPU Time Spent: 10 seconds 530 msec
OK
"Administration"
"Administration"
"Purchasing"
"Purchasing"
"Purchasing"
"Purchasing"
"Purchasing"
"Purchasing"
"Human Resources"
"Public Relations"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Sales"
"Executive"
"Executive"
"Executive"
"Accounting"
"Accounting"
"Finance"
"Finance"
"Finance"
"Finance"
"Finance"
"Finance"
"Marketing"
"Marketing"
"IT"
"IT"
"IT"
"IT"
"IT"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
"Shipping"
Time taken: 27.562 seconds, Fetched: 107 row(s)

hive> set hive.auto.convert.join=true;

hive> select e.first_name, d.department_name from employee e inner join departments d on e.department_id=d.department_id;
Query ID = varunm15t38hedu_20250604071450_6fad6d97-9a6b-491e-8a06-f96858d5851c
Total jobs = 1
SLF4J: Found binding in [jar:file:/opt/hive-3.1.1/lib/log4j-slf4j-impl-2.10.0.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/opt/hadoop/share/hadoop/common/lib/slf4j-log4j12-1.7.25.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.2025-06-04 07:15:01     Starting to launch local task to process map join;      maximum memory = 4151836672
2025-06-04 07:15:03     End of local task; Time Taken: 2.045 sec.
Execution completed successfully
MapredLocal task succeeded
Launching Job 1 out of 1
Number of reduce tasks is set to 0 since there is no reduce operator
Starting Job = job_1741226523923_14656, Tracking URL = http://master:6318/proxy/application_1741226523923_14656/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14656
Hadoop job information for Stage-3: number of mappers: 1; number of reducers: 0
2025-06-04 07:15:36,437 Stage-3 map = 0%,  reduce = 0%
2025-06-04 07:15:45,608 Stage-3 map = 100%,  reduce = 0%, Cumulative CPU 2.49 sec
MapReduce Total cumulative CPU time: 2 seconds 490 msec
Ended Job = job_1741226523923_14656
MapReduce Jobs Launched: 
Stage-Stage-3: Map: 1   Cumulative CPU: 2.49 sec   HDFS Read: 19440 HDFS Write: 3183 SUCCESS
Total MapReduce CPU Time Spent: 2 seconds 490 msec
OK
Steven  "Executive"
Neena   "Executive"
Lex     "Executive"
Alexander       "IT"
Bruce   "IT"
David   "IT"
Valli   "IT"
Diana   "IT"
Nancy   "Finance"
Daniel  "Finance"
John    "Finance"
Ismael  "Finance"
Jose Manuel     "Finance"
Luis    "Finance"
Den     "Purchasing"
Alexander       "Purchasing"
Shelli  "Purchasing"
Sigal   "Purchasing"
Guy     "Purchasing"
Karen   "Purchasing"
Matthew "Shipping"
Adam    "Shipping"
Payam   "Shipping"
Shanta  "Shipping"
Kevin   "Shipping"
Julia   "Shipping"
Irene   "Shipping"
James   "Shipping"
Steven  "Shipping"
Laura   "Shipping"
Mozhe   "Shipping"
James   "Shipping"
TJ      "Shipping"
Jason   "Shipping"
Michael "Shipping"
Ki      "Shipping"
Hazel   "Shipping"
Renske  "Shipping"
Stephen "Shipping"
John    "Shipping"
Joshua  "Shipping"
Trenna  "Shipping"
Curtis  "Shipping"
Randall "Shipping"
Peter   "Shipping"
John    "Sales"
Karen   "Sales"
Alberto "Sales"
Gerald  "Sales"
Eleni   "Sales"
Peter   "Sales"
David   "Sales"
Peter   "Sales"
Christopher     "Sales"
Nanette "Sales"
Oliver  "Sales"
Janette "Sales"
Patrick "Sales"
Allan   "Sales"
Lindsey "Sales"
Louise  "Sales"
Sarath  "Sales"
Clara   "Sales"
Danielle        "Sales"
Mattea  "Sales"
David   "Sales"
Sundar  "Sales"
Amit    "Sales"
Lisa    "Sales"
Harrison        "Sales"
Tayler  "Sales"
William "Sales"
Elizabeth       "Sales"
Sundita "Sales"
Ellen   "Sales"
Alyssa  "Sales"
Jonathon        "Sales"
Jack    "Sales"
Charles "Sales"
Winston "Shipping"
Jean    "Shipping"
Martha  "Shipping"
Girard  "Shipping"
Nandita "Shipping"
Alexis  "Shipping"
Julia   "Shipping"
Anthony "Shipping"
Kelly   "Shipping"
Jennifer        "Shipping"
Timothy "Shipping"
Randall "Shipping"
Sarah   "Shipping"
Britney "Shipping"
Samuel  "Shipping"
Vance   "Shipping"
Alana   "Shipping"
Kevin   "Shipping"
Donald  "Shipping"
Douglas "Shipping"
Jennifer        "Administration"
Michael "Marketing"
Pat     "Marketing"
Susan   "Human Resources"
Hermann "Public Relations"
Shelley "Accounting"
William "Accounting"
Ram     "Administration"
Time taken: 60.8 seconds, Fetched: 107 row(s)

hive> create view emp_dept_name as select e.first_name, d.department_name from employee e inner join departments d on e.department_id=d.department_id;
OK
Time taken: 3.485 seconds

hive> show views;
OK
emp_dept_name
Time taken: 0.019 seconds, Fetched: 1 row(s)

hive> desc emp_dept_name;
OK
first_name              varchar(40)                                 
department_name         string                                      
Time taken: 0.032 seconds, Fetched: 2 row(s)

hive> create table cpdept as select * from departments;
Query ID = varunm15t38hedu_20250604090605_f70fcb70-a04c-449f-854c-2c1c04baa802
Total jobs = 3
Launching Job 1 out of 3
Number of reduce tasks is set to 0 since there is no reduce operator
Starting Job = job_1741226523923_14829, Tracking URL = http://master:6318/proxy/application_1741226523923_14829/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14829
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 0
2025-06-04 09:06:43,875 Stage-1 map = 0%,  reduce = 0%
2025-06-04 09:06:53,270 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.67 sec
MapReduce Total cumulative CPU time: 1 seconds 670 msec
Ended Job = job_1741226523923_14829
Stage-4 is selected by condition resolver.
Stage-3 is filtered out by condition resolver.
Stage-5 is filtered out by condition resolver.
Moving data to directory hdfs://master:9000/user/hive/warehouse/varunmdb.db/.hive-staging_hive_2025-06-04_09-06-05_515_3057574370613075606-1/-ext-10002
Moving data to directory hdfs://master:9000/user/hive/warehouse/varunmdb.db/cpdept
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1   Cumulative CPU: 1.67 sec   HDFS Read: 6012 HDFS Write: 750 SUCCESS
Total MapReduce CPU Time Spent: 1 seconds 670 msec
OK
Time taken: 58.658 seconds

hive> select * from cpdept;
OK
10      "Administration"        200     1700
20      "Marketing"     201     1800
30      "Purchasing"    114     1700
40      "Human Resources"       203     2400
50      "Shipping"      121     1500
60      "IT"    103     1400
70      "Public Relations"      204     2700
80      "Sales" 145     2500
90      "Executive"     100     1700
100     "Finance"       108     1700
110     "Accounting"    205     1700
120     "Treasury"      0       1700
130     "Corporate Tax" 0       1700
140     "Control And Credit"    0       1700
150     "Shareholder Services"  0       1700
160     "Benefits"      0       1700
170     "Manufacturing" 0       1700
180     "Construction"  0       1700
190     "Contracting"   0       1700
200     "Operations"    0       1700
210     "IT Support"    0       1700
220     "NOC"   0       1700
230     "IT Helpdesk"   0       1700
240     "Government Sales"      0       1700
250     "Retail Sales"  0       1700
260     "Recruiting"    0       1700
270     "Payroll"       0       1700
Time taken: 3.753 seconds, Fetched: 27 row(s)

hive> create table tempdept as select * from departments where 1=2;
Query ID = varunm15t38hedu_20250604090734_e81350f2-90ae-4ab6-87d1-9adb68d1f895
Total jobs = 3
Launching Job 1 out of 3
Number of reduce tasks is set to 0 since there is no reduce operator
Starting Job = job_1741226523923_14855, Tracking URL = http://master:6318/proxy/application_1741226523923_14855/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14855
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 0
2025-06-04 09:07:40,543 Stage-1 map = 0%,  reduce = 0%
2025-06-04 09:07:45,655 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.59 sec
MapReduce Total cumulative CPU time: 1 seconds 590 msec
Ended Job = job_1741226523923_14855
Stage-4 is selected by condition resolver.
Stage-3 is filtered out by condition resolver.
Stage-5 is filtered out by condition resolver.
Moving data to directory hdfs://master:9000/user/hive/warehouse/varunmdb.db/.hive-staging_hive_2025-06-04_09-07-34_109_2269611460793549349-1/-ext-10002
Moving data to directory hdfs://master:9000/user/hive/warehouse/varunmdb.db/tempdept
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1   Cumulative CPU: 1.59 sec   HDFS Read: 5783 HDFS Write: 43 SUCCESS
Total MapReduce CPU Time Spent: 1 seconds 590 msec
OK
Time taken: 22.47 seconds

hive> select * from tempdept;
OK
Time taken: 3.568 seconds

hive> insert into tempdept select * from departments where department_id=20;
Query ID = varunm15t38hedu_20250604091422_0668c98b-ebf1-4b5f-863b-604348c25b82
Total jobs = 3
Launching Job 1 out of 3
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_14910, Tracking URL = http://master:6318/proxy/application_1741226523923_14910/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14910
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1
2025-06-04 09:14:33,145 Stage-1 map = 0%,  reduce = 0%
2025-06-04 09:14:38,254 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 2.03 sec
2025-06-04 09:14:43,352 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 3.6 sec
MapReduce Total cumulative CPU time: 3 seconds 600 msec
Ended Job = job_1741226523923_14910
Stage-4 is selected by condition resolver.
Stage-3 is filtered out by condition resolver.
Stage-5 is filtered out by condition resolver.
Moving data to directory hdfs://master:9000/user/hive/warehouse/varunmdb.db/tempdept/.hive-staging_hive_2025-06-04_09-14-22_658_2769834769751114178-1/-ext-10000
Loading data to table varunmdb.tempdept
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 1   Cumulative CPU: 3.6 sec   HDFS Read: 18530 HDFS Write: 335 SUCCESS
Total MapReduce CPU Time Spent: 3 seconds 600 msec
OK
Time taken: 31.559 seconds

hive> select * from tempdept;
OK
20      "Marketing"     201     1800
Time taken: 3.399 seconds, Fetched: 1 row(s)

hive> create table emp_details( emp_name string, unit string, exp int, loc string) row format delimited fields terminated by ',';
OK
Time taken: 0.066 seconds

hive> load data local inpath '/home/varunm15t38hedu/hadoophive/assets/emp_details.txt' into table emp_details;
Loading data to table varunmdb.emp_details
OK
Time taken: 4.037 seconds

hive> select * from emp_details;
OK
Amit    Big Data        1       BBSR
Venkat  Web Technology  2       BBSR
Aditya  DBA     1       BNG
Ravinder        Java    2       BBSR
Sunil   C#      1       BBSR
Anil    ASP     2       BNG
Mihir   Big Data        3       BBSR
Mohit   Java    1       BBSR
Time taken: 3.488 seconds, Fetched: 8 row(s)

hive> describe formatted emp_details;
OK
# col_name              data_type               comment             
emp_name                string                                      
unit                    string                                      
exp                     int                                         
loc                     string                                      
                 
# Detailed Table Information             
Database:               varunmdb                 
OwnerType:              USER                     
Owner:                  varunm15t38hedu          
CreateTime:             Wed Jun 04 09:28:51 UTC 2025     
LastAccessTime:         UNKNOWN                  
Retention:              0                        
Location:               hdfs://master:9000/user/hive/warehouse/varunmdb.db/emp_details   
Table Type:             MANAGED_TABLE            
Table Parameters:                
        bucketing_version       2                   
        numFiles                1                   
        numRows                 0                   
        rawDataSize             0                   
        totalSize               162                 
        transient_lastDdlTime   1749029755          
                 
# Storage Information            
SerDe Library:          org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe       
InputFormat:            org.apache.hadoop.mapred.TextInputFormat         
OutputFormat:           org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat       
Compressed:             No                       
Num Buckets:            -1                       
Bucket Columns:         []                       
Sort Columns:           []                       
Storage Desc Params:             
        field.delim             ,                   
        serialization.format    ,                   
Time taken: 0.069 seconds, Fetched: 34 row(s)

hive> create table emp_details_part(emp_name string, unit string, exp int) partitioned by (loc string);
OK
Time taken: 0.058 seconds

hive> desc emp_details_part;
OK
emp_name                string                                      
unit                    string                                      
exp                     int                                         
loc                     string                                      
                 
# Partition Information          
# col_name              data_type               comment             
loc                     string                                      
Time taken: 0.05 seconds, Fetched: 8 row(s)

hive> insert overwrite table emp_details_part partition(loc='BBSR') select emp_name, unit, exp from emp_details where loc='BBSR';
Query ID = varunm15t38hedu_20250604094637_89a7da2b-7141-4c72-965b-951077cb2420
Total jobs = 3
Launching Job 1 out of 3
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_14985, Tracking URL = http://master:6318/proxy/application_1741226523923_14985/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_14985
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 4
2025-06-04 09:46:48,250 Stage-1 map = 0%,  reduce = 0%
2025-06-04 09:46:56,399 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 2.2 sec
2025-06-04 09:47:01,490 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 3.84 sec
2025-06-04 09:47:02,509 Stage-1 map = 100%,  reduce = 50%, Cumulative CPU 6.05 sec
2025-06-04 09:47:04,544 Stage-1 map = 100%,  reduce = 75%, Cumulative CPU 7.95 sec
2025-06-04 09:47:05,563 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 10.18 sec
MapReduce Total cumulative CPU time: 10 seconds 180 msec
Ended Job = job_1741226523923_14985
Stage-4 is selected by condition resolver.
Stage-3 is filtered out by condition resolver.
Stage-5 is filtered out by condition resolver.
Moving data to directory hdfs://master:9000/user/hive/warehouse/varunmdb.db/emp_details_part/loc=BBSR/.hive-staging_hive_2025-06-04_09-46-37_658_3840709070547851139-1/-ext-10000
Loading data to table varunmdb.emp_details_part partition (loc=BBSR)
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 4   Cumulative CPU: 10.18 sec   HDFS Read: 43690 HDFS Write: 726 SUCCESS
Total MapReduce CPU Time Spent: 10 seconds 180 msec
OK

hive> select * from emp_details_part;
OK
Amit    Big Data        1       BBSR
Venkat  Web Technology  2       BBSR
Ravinder        Java    2       BBSR
Sunil   C#      1       BBSR
Mihir   Big Data        3       BBSR
Mohit   Java    1       BBSR
Time taken: 3.49 seconds, Fetched: 6 row(s)

hive> set hive.exec.dynamic.partition.mode=nonstrict;

hive> create table emp_details_dyn_part( emp_name string, unit string, exp int) partitioned by (loc string);
OK
Time taken: 0.052 seconds

hive> insert overwrite table emp_details_dyn_part partition (loc) select * from emp_details;
Query ID = varunm15t38hedu_20250604102232_ee928c67-55ef-4ece-9d16-d860f8e5b732
Total jobs = 3
Launching Job 1 out of 3
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_15059, Tracking URL = http://master:6318/proxy/application_1741226523923_15059/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_15059
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 4
2025-06-04 10:22:43,437 Stage-1 map = 0%,  reduce = 0%
2025-06-04 10:22:49,549 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.78 sec
2025-06-04 10:22:54,643 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 3.42 sec
2025-06-04 10:22:55,661 Stage-1 map = 100%,  reduce = 75%, Cumulative CPU 6.76 sec
2025-06-04 10:23:00,750 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 8.83 sec
MapReduce Total cumulative CPU time: 8 seconds 830 msec
Ended Job = job_1741226523923_15059
Stage-4 is selected by condition resolver.
Stage-3 is filtered out by condition resolver.
Stage-5 is filtered out by condition resolver.
Moving data to directory hdfs://master:9000/user/hive/warehouse/varunmdb.db/emp_details_dyn_part/.hive-staging_hive_2025-06-04_10-22-32_650_7793658862628425141-1/-ext-10000
Loading data to table varunmdb.emp_details_dyn_part partition (loc=null)


         Time taken to load dynamic partitions: 0.124 seconds
         Time taken for adding to write entity : 0.0 seconds
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 4   Cumulative CPU: 8.83 sec   HDFS Read: 43931 HDFS Write: 997 SUCCESS
Total MapReduce CPU Time Spent: 8 seconds 830 msec
OK
Time taken: 37.646 seconds

hive> select * from emp_details_dyn_part where loc='BNG';
OK
Aditya  DBA     1       BNG
Anil    ASP     2       BNG
Time taken: 3.641 seconds, Fetched: 2 row(s)

hive> select * from emp_details_dyn_part where loc='BBSR';
OK
Amit    Big Data        1       BBSR
Venkat  Web Technology  2       BBSR
Ravinder        Java    2       BBSR
Sunil   C#      1       BBSR
Mihir   Big Data        3       BBSR
Mohit   Java    1       BBSR
Time taken: 3.764 seconds, Fetched: 6 row(s)

hive> create table emp_detail_part_name ( name string, unit string, exp string, loc string) partitioned by (first_char string);
OK
Time taken: 0.059 seconds

hive> insert overwrite table emp_detail_part_name partition(first_char) select emp_name, unit, exp , loc, substring(emp_name,1,1) as first_char from emp_details;
Query ID = varunm15t38hedu_20250604104320_3dddbcb1-2c96-42f8-9d2c-43d116b60969
Total jobs = 3
Launching Job 1 out of 3
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_15151, Tracking URL = http://master:6318/proxy/application_1741226523923_15151/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_15151
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 4
2025-06-04 10:43:31,749 Stage-1 map = 0%,  reduce = 0%
2025-06-04 10:43:37,860 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 2.2 sec
2025-06-04 10:43:42,957 Stage-1 map = 100%,  reduce = 25%, Cumulative CPU 3.89 sec
2025-06-04 10:43:43,976 Stage-1 map = 100%,  reduce = 50%, Cumulative CPU 5.4 sec
2025-06-04 10:43:44,994 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 8.45 sec
MapReduce Total cumulative CPU time: 8 seconds 450 msec
Ended Job = job_1741226523923_15151
Stage-4 is selected by condition resolver.
Stage-3 is filtered out by condition resolver.
Stage-5 is filtered out by condition resolver.
Moving data to directory hdfs://master:9000/user/hive/warehouse/varunmdb.db/emp_detail_part_name/.hive-staging_hive_2025-06-04_10-43-20_966_1794368087906965047-1/-ext-10000
Loading data to table varunmdb.emp_detail_part_name partition (first_char=null)


         Time taken to load dynamic partitions: 0.232 seconds
         Time taken for adding to write entity : 0.001 seconds
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 4   Cumulative CPU: 8.45 sec   HDFS Read: 46019 HDFS Write: 1837 SUCCESS
Total MapReduce CPU Time Spent: 8 seconds 450 msec
OK
Time taken: 33.719 seconds

hive> show partitions emp_details_dyn_part;
OK
loc=BBSR
loc=BNG
Time taken: 0.067 seconds, Fetched: 2 row(s)

hive> show partitions emp_detail_part_name;
OK
first_char=A
first_char=M
first_char=R
first_char=S
first_char=V
Time taken: 0.062 seconds, Fetched: 5 row(s)

hive> select * from emp_detail_part_name where first_char='A';
OK
Amit    Big Data        1       BBSR    A
Aditya  DBA     1       BNG     A
Anil    ASP     2       BNG     A
Time taken: 3.797 seconds, Fetched: 3 row(s)

hive> select * from emp_detail_part_name where first_char='V';
OK
Venkat  Web Technology  2       BBSR    V
Time taken: 3.58 seconds, Fetched: 1 row(s)

hive> create table emp_details_dyn_dobulepart( emp_name string, exp int) partitioned by (loc string, unit string);
OK
Time taken: 0.06 seconds

hive> insert overwrite table emp_details_dyn_dobulepart partition(loc, unit) select * from emp_details;
Query ID = varunm15t38hedu_20250604105140_1cbcddf2-f2a7-401e-a61f-69c55891bb65
Total jobs = 3
Launching Job 1 out of 3
Number of reduce tasks not specified. Defaulting to jobconf value of: 4
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_15165, Tracking URL = http://master:6318/proxy/application_1741226523923_15165/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_15165
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 4
2025-06-04 10:51:51,240 Stage-1 map = 0%,  reduce = 0%
2025-06-04 10:51:56,340 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 2.15 sec
2025-06-04 10:52:01,431 Stage-1 map = 100%,  reduce = 50%, Cumulative CPU 5.5 sec
2025-06-04 10:52:02,452 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 9.01 sec
MapReduce Total cumulative CPU time: 9 seconds 10 msec
Ended Job = job_1741226523923_15165
Stage-4 is selected by condition resolver.
Stage-3 is filtered out by condition resolver.
Stage-5 is filtered out by condition resolver.
Moving data to directory hdfs://master:9000/user/hive/warehouse/varunmdb.db/emp_details_dyn_dobulepart/.hive-staging_hive_2025-06-04_10-51-40_704_2422079762996139454-1/-ext-10000
Loading data to table varunmdb.emp_details_dyn_dobulepart partition (loc=null, unit=null)


         Time taken to load dynamic partitions: 0.237 seconds
         Time taken for adding to write entity : 0.001 seconds
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 4   Cumulative CPU: 9.01 sec   HDFS Read: 43633 HDFS Write: 1253 SUCCESS
Total MapReduce CPU Time Spent: 9 seconds 10 msec
OK
Time taken: 31.738 seconds

hive> show partitions emp_details_dyn_dobulepart;
OK
loc=1/unit=BBSR
loc=1/unit=BNG
loc=2/unit=BBSR
loc=2/unit=BNG
loc=3/unit=BBSR
Time taken: 0.073 seconds, Fetched: 5 row(s)

hive> create table users( id int, name string, salary int, unit string) row format delimited fields terminated by '\t';
Time taken: 0.06 seconds

hive> load data local inpath 'users.txt' into table users;
Loading data to table varunmdb.users
OK
Time taken: 4.092 seconds

hive> select * from users;
OK
1       Amit    100     DNA
2       Sumit   200     DNA
3       Yadav   300     DNA
4       Sunil   500     FCS
5       Kranti  100     FCS
6       Mahoor  200     FCS
8       Chandra 500     DNA
Time taken: 4.892 seconds, Fetched: 7 row(s)

hive> create table bucketuser( id int, name string, salary int, unit string) clustered by(id) sorted by(id) into 2 buckets;
OK
Time taken: 0.072 seconds


hive> insert overwrite table bucketuser select * from users;
Query ID = varunm15t38hedu_20250604110445_2bdc4904-771d-433a-98c6-70942e65d0e6
Total jobs = 2
Launching Job 1 out of 2
Number of reduce tasks determined at compile time: 2
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_15182, Tracking URL = http://master:6318/proxy/application_1741226523923_15182/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_15182
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 2
2025-06-04 11:04:56,617 Stage-1 map = 0%,  reduce = 0%
2025-06-04 11:05:00,740 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.22 sec
2025-06-04 11:05:11,975 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 4.94 sec
MapReduce Total cumulative CPU time: 4 seconds 940 msec
Ended Job = job_1741226523923_15182
Launching Job 2 out of 2
Loading data to table varunmdb.bucketuser
Number of reduce tasks determined at compile time: 1
In order to change the average load for a reducer (in bytes):
  set hive.exec.reducers.bytes.per.reducer=<number>
In order to limit the maximum number of reducers:
  set hive.exec.reducers.max=<number>
In order to set a constant number of reducers:
  set mapreduce.job.reduces=<number>
Starting Job = job_1741226523923_15199, Tracking URL = http://master:6318/proxy/application_1741226523923_15199/
Kill Command = /opt/hadoop/bin/mapred job  -kill job_1741226523923_15199
Hadoop job information for Stage-3: number of mappers: 2; number of reducers: 1
2025-06-04 11:06:10,513 Stage-3 map = 0%,  reduce = 0%
2025-06-04 11:06:48,262 Stage-3 map = 50%,  reduce = 0%, Cumulative CPU 1.31 sec
2025-06-04 11:06:57,448 Stage-3 map = 100%,  reduce = 0%, Cumulative CPU 3.1 sec
2025-06-04 11:06:59,489 Stage-3 map = 100%,  reduce = 100%, Cumulative CPU 4.89 sec
MapReduce Total cumulative CPU time: 4 seconds 890 msec
Ended Job = job_1741226523923_15199
MapReduce Jobs Launched: 
Stage-Stage-1: Map: 1  Reduce: 2   Cumulative CPU: 4.94 sec   HDFS Read: 21905 HDFS Write: 767 SUCCESS
Stage-Stage-3: Map: 2  Reduce: 1   Cumulative CPU: 4.89 sec   HDFS Read: 18334 HDFS Write: 330 SUCCESS
Total MapReduce CPU Time Spent: 9 seconds 830 msec
OK
Time taken: 139.814 seconds

hive> select * from buckeruser;
FAILED: SemanticException [Error 10001]: Line 1:14 Table not found 'buckeruser'

hive> select * from bucketuser;
OK
2       Sumit   200     DNA
4       Sunil   500     FCS
6       Mahoor  200     FCS
8       Chandra 500     DNA
1       Amit    100     DNA
3       Yadav   300     DNA
5       Kranti  100     FCS
Time taken: 3.443 seconds, Fetched: 7 row(s)

hive> create table text_table( c1 int, c2 int, c3 int, c4 int) row format delimited fields terminated by '|';
OK
Time taken: 0.081 seconds
hive> show create table text_table;
OK

CREATE TABLE `text_table`(
  `c1` int, 
  `c2` int, 
  `c3` int, 
  `c4` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES ( 
  'field.delim'='|', 
  'serialization.format'='|') 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://master:9000/user/hive/warehouse/arctcs.db/text_table'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1749038043')
Time taken: 0.067 seconds, Fetched: 19 row(s)


hive> create table text_table( c1 int, c2 int, c3 int, c4 int) row format delimited fields terminated by '|';
OK
Time taken: 0.352 seconds

hive> load data local inpath 'rating.txt' into table text_table;
Loading data to table varunmdb.text_table
OK
Time taken: 4.042 seconds

hive> select * from text_table;
OK
1       2       3       4
3       4       56      23
23      5       6       90
10      9       7       100
Time taken: 4.881 seconds, Fetched: 4 row(s)

hive> create table seqtab(c1 int, c2 int, c3 int, c4 int)stored as sequencefile;
OK
Time taken: 0.061 seconds

hive> show create table seqtab;
OK
CREATE TABLE `seqtab`(
  `c1` int, 
  `c2` int, 
  `c3` int, 
  `c4` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.SequenceFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat'
LOCATION
  'hdfs://master:9000/user/hive/warehouse/varunmdb.db/seqtab'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1749038842')
Time taken: 0.064 seconds, Fetched: 16 row(s)

hive> create table orctab(c1 int, c2 int, c3 int, c4 int)stored as orc;
OK
Time taken: 0.101 seconds

hive> show create table orctab;
OK
CREATE TABLE `orctab`(
  `c1` int, 
  `c2` int, 
  `c3` int, 
  `c4` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'hdfs://master:9000/user/hive/warehouse/varunmdb.db/orctab'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1749038946')
Time taken: 0.036 seconds, Fetched: 16 row(s)

hive> create table rctab(c1 int, c2 int, c3 int, c4 int)stored as rcfile;
OK
Time taken: 0.082 seconds

hive> create table prqtab(c1 int, c2 int, c3 int, c4 int)stored as parquet;
OK
Time taken: 0.254 seconds

hive> show create table orctab;
OK
CREATE TABLE `orctab`(
  `c1` int, 
  `c2` int, 
  `c3` int, 
  `c4` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'hdfs://master:9000/user/hive/warehouse/varunmdb.db/orctab'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1749038946')
Time taken: 0.051 seconds, Fetched: 16 row(s)

hive> show create table prqtab;
OK
CREATE TABLE `prqtab`(
  `c1` int, 
  `c2` int, 
  `c3` int, 
  `c4` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'hdfs://master:9000/user/hive/warehouse/varunmdb.db/prqtab'
TBLPROPERTIES (
  'bucketing_version'='2', 
  'transient_lastDdlTime'='1749039057')
Time taken: 0.035 seconds, Fetched: 16 row(s)

hive> from text_table insert overwrite table seqtab select * insert overwrite table orctab select * insert overwrite table rctab select * insert overwrite table prqtab select *;
Query ID = varunm15t38hedu_20250604121412_4f338ad9-73b2-4e6b-a14e-efe84df8ad00
Total jobs = 6
Launching Job 1 out of 6
Number of reduce tasks determined at compile time: 1

hive> select * from seqtab;
OK
1       2       3       4
3       4       56      23
23      5       6       90
10      9       7       100
Time taken: 3.743 seconds, Fetched: 4 row(s)

hive> select * from orctab;
OK
1       2       3       4
3       4       56      23
23      5       6       90
10      9       7       100
Time taken: 3.493 seconds, Fetched: 4 row(s)

hive> select * from prqtab;
OK
1       2       3       4
3       4       56      23
23      5       6       90
10      9       7       100
Time taken: 3.762 seconds, Fetched: 4 row(s)

hive> select * from rctab;
OK
1       2       3       4
3       4       56      23
23      5       6       90
10      9       7       100
Time taken: 3.575 seconds, Fetched: 4 row(s)


