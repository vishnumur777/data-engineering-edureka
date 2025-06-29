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

