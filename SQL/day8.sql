mysql> show tables;
+---------------------------+
| Tables_in_varunm15t38hedu |
+---------------------------+
| countries                 |
| cpdept                    |
| departments               |
| employees                 |
| exam                      |
| job_history               |
| jobs                      |
| locations                 |
| regions                   |
| student                   |
+---------------------------+
10 rows in set (0.00 sec)

mysql> select * from student;
+------------+----------------+-----------+------------+
| student_id | firstname      | contact   | address    |
+------------+----------------+-----------+------------+
|          1 | Amir           | 923488234 | SSM Hostel |
|          2 | Varun          | 92348824  | SSM Hostel |
|          3 | YadhuKrishna   | 9234882   | SSM Hostel |
|          4 | Anandu Krishna | 923488    | SSM Hostel |
+------------+----------------+-----------+------------+
4 rows in set (0.00 sec)

mysql> select * from exam;
+--------+-----------+------+------+
| examno | studentid | sub1 | sub2 |
+--------+-----------+------+------+
|      1 |         2 |    0 |    0 |
+--------+-----------+------+------+
1 row in set (0.00 sec)

mysql> select * from employees e left outer join departments d on e.department_id=d.department_id union all select * from employees e left outer join departments d on e.department_id=d.department_id where d.department_id IS NULL;
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+---------------+------------------+------------+-------------+
| employee_id | first_name  | last_name   | email    | phone_number       | hire_date  | job_id     | salary   | commission_pct | manager_id | department_id | department_id | department_name  | manager_id | location_id |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+---------------+------------------+------------+-------------+
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           NULL |       NULL |            90 |            90 | Executive        |        100 |        1700 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1989-09-21 | AD_VP      | 17000.00 |           NULL |        100 |            90 |            90 | Executive        |        100 |        1700 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1993-01-13 | AD_VP      | 17000.00 |           NULL |        100 |            90 |            90 | Executive        |        100 |        1700 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1990-01-03 | IT_PROG    |  9000.00 |           NULL |        102 |            60 |            60 | IT               |        103 |        1400 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1991-05-21 | IT_PROG    |  6000.00 |           NULL |        103 |            60 |            60 | IT               |        103 |        1400 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1997-06-25 | IT_PROG    |  4800.00 |           NULL |        103 |            60 |            60 | IT               |        103 |        1400 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1998-02-05 | IT_PROG    |  4800.00 |           NULL |        103 |            60 |            60 | IT               |        103 |        1400 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1999-02-07 | IT_PROG    |  4200.00 |           NULL |        103 |            60 |            60 | IT               |        103 |        1400 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1994-08-17 | FI_MGR     | 12000.00 |           NULL |        101 |           100 |           100 | Finance          |        108 |        1700 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1994-08-16 | FI_ACCOUNT |  9000.00 |           NULL |        108 |           100 |           100 | Finance          |        108 |        1700 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1997-09-28 | FI_ACCOUNT |  8200.00 |           NULL |        108 |           100 |           100 | Finance          |        108 |        1700 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1997-09-30 | FI_ACCOUNT |  7700.00 |           NULL |        108 |           100 |           100 | Finance          |        108 |        1700 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1998-03-07 | FI_ACCOUNT |  7800.00 |           NULL |        108 |           100 |           100 | Finance          |        108 |        1700 |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1999-12-07 | FI_ACCOUNT |  6900.00 |           NULL |        108 |           100 |           100 | Finance          |        108 |        1700 |
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1994-12-07 | PU_MAN     | 11000.00 |           NULL |        100 |            30 |            30 | Purchasing       |        114 |        1700 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1995-05-18 | PU_CLERK   |  3100.00 |           NULL |        114 |            30 |            30 | Purchasing       |        114 |        1700 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1997-12-24 | PU_CLERK   |  2900.00 |           NULL |        114 |            30 |            30 | Purchasing       |        114 |        1700 |
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1997-07-24 | PU_CLERK   |  2800.00 |           NULL |        114 |            30 |            30 | Purchasing       |        114 |        1700 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1998-11-15 | PU_CLERK   |  2600.00 |           NULL |        114 |            30 |            30 | Purchasing       |        114 |        1700 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1999-08-10 | PU_CLERK   |  2500.00 |           NULL |        114 |            30 |            30 | Purchasing       |        114 |        1700 |
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1996-07-18 | ST_MAN     |  8000.00 |           NULL |        100 |            50 |            50 | Shipping         |        121 |        1500 |
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1997-04-10 | ST_MAN     |  8200.00 |           NULL |        100 |            50 |            50 | Shipping         |        121 |        1500 |
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1995-05-01 | ST_MAN     |  7900.00 |           NULL |        100 |            50 |            50 | Shipping         |        121 |        1500 |
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1997-10-10 | ST_MAN     |  6500.00 |           NULL |        100 |            50 |            50 | Shipping         |        121 |        1500 |
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1999-11-16 | ST_MAN     |  5800.00 |           NULL |        100 |            50 |            50 | Shipping         |        121 |        1500 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1997-07-16 | ST_CLERK   |  3200.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1998-09-28 | ST_CLERK   |  2700.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1999-01-14 | ST_CLERK   |  2400.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 2000-03-08 | ST_CLERK   |  2200.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1997-08-20 | ST_CLERK   |  3300.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1997-10-30 | ST_CLERK   |  2800.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1997-02-16 | ST_CLERK   |  2500.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1999-04-10 | ST_CLERK   |  2100.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1996-06-14 | ST_CLERK   |  3300.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1998-08-26 | ST_CLERK   |  2900.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1999-12-12 | ST_CLERK   |  2400.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 2000-02-06 | ST_CLERK   |  2200.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1995-07-14 | ST_CLERK   |  3600.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1997-10-26 | ST_CLERK   |  3200.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1998-02-12 | ST_CLERK   |  2700.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1998-04-06 | ST_CLERK   |  2500.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1995-10-17 | ST_CLERK   |  3500.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1997-01-29 | ST_CLERK   |  3100.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1998-03-15 | ST_CLERK   |  2600.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1998-07-09 | ST_CLERK   |  2500.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1996-10-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |            80 | Sales            |        145 |        2500 |
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1997-01-05 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |            80 | Sales            |        145 |        2500 |
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1997-03-10 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 |            80 | Sales            |        145 |        2500 |
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1999-10-15 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 |            80 | Sales            |        145 |        2500 |
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 2000-01-29 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 |            80 | Sales            |        145 |        2500 |
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1997-01-30 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |            80 | Sales            |        145 |        2500 |
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1997-03-24 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |            80 | Sales            |        145 |        2500 |
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1997-08-20 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |            80 | Sales            |        145 |        2500 |
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1998-03-30 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |            80 | Sales            |        145 |        2500 |
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1998-12-09 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |            80 | Sales            |        145 |        2500 |
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1999-11-23 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |            80 | Sales            |        145 |        2500 |
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1996-01-30 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |            80 | Sales            |        145 |        2500 |
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1996-03-04 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |            80 | Sales            |        145 |        2500 |
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1996-08-01 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |            80 | Sales            |        145 |        2500 |
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1997-03-10 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |            80 | Sales            |        145 |        2500 |
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1997-12-15 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |            80 | Sales            |        145 |        2500 |
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1998-11-03 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |            80 | Sales            |        145 |        2500 |
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1997-11-11 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |            80 | Sales            |        145 |        2500 |
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1999-03-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |            80 | Sales            |        145 |        2500 |
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 2000-01-24 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |            80 | Sales            |        145 |        2500 |
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 2000-02-23 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |            80 | Sales            |        145 |        2500 |
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 2000-03-24 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |            80 | Sales            |        145 |        2500 |
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 2000-04-21 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |            80 | Sales            |        145 |        2500 |
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1997-03-11 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |            80 | Sales            |        145 |        2500 |
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1998-03-23 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |            80 | Sales            |        145 |        2500 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1998-01-24 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |            80 | Sales            |        145 |        2500 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1999-02-23 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |            80 | Sales            |        145 |        2500 |
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1999-03-24 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |            80 | Sales            |        145 |        2500 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 2000-04-21 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |            80 | Sales            |        145 |        2500 |
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1996-05-11 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |            80 | Sales            |        145 |        2500 |
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1997-03-19 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |            80 | Sales            |        145 |        2500 |
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1998-03-24 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |            80 | Sales            |        145 |        2500 |
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1998-04-23 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |            80 | Sales            |        145 |        2500 |
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1999-05-24 | SA_REP     |  7000.00 |           0.15 |        149 |          NULL |          NULL | NULL             |       NULL |        NULL |
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 2000-01-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |            80 | Sales            |        145 |        2500 |
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1998-01-24 | SH_CLERK   |  3200.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1998-02-23 | SH_CLERK   |  3100.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1999-06-21 | SH_CLERK   |  2500.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 2000-02-03 | SH_CLERK   |  2800.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1996-01-27 | SH_CLERK   |  4200.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1997-02-20 | SH_CLERK   |  4100.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1998-06-24 | SH_CLERK   |  3400.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1999-02-07 | SH_CLERK   |  3000.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1997-06-14 | SH_CLERK   |  3800.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1997-08-13 | SH_CLERK   |  3600.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1998-07-11 | SH_CLERK   |  2900.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1999-12-19 | SH_CLERK   |  2500.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1996-02-04 | SH_CLERK   |  4000.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1997-03-03 | SH_CLERK   |  3900.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1998-07-01 | SH_CLERK   |  3200.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1999-03-17 | SH_CLERK   |  2800.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1998-04-24 | SH_CLERK   |  3100.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1998-05-23 | SH_CLERK   |  3000.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1999-06-21 | SH_CLERK   |  2600.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 2000-01-13 | SH_CLERK   |  2600.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-17 | AD_ASST    |  4400.00 |           NULL |        101 |            10 |            10 | Administration   |        200 |        1700 |
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1996-02-17 | MK_MAN     | 13000.00 |           NULL |        100 |            20 |            20 | Marketing        |        201 |        1800 |
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1997-08-17 | MK_REP     |  6000.00 |           NULL |        201 |            20 |            20 | Marketing        |        201 |        1800 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1994-06-07 | HR_REP     |  6500.00 |           NULL |        101 |            40 |            40 | Human Resources  |        203 |        2400 |
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1994-06-07 | PR_REP     | 10000.00 |           NULL |        101 |            70 |            70 | Public Relations |        204 |        2700 |
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1994-06-07 | AC_MGR     | 12000.00 |           NULL |        101 |           110 |           110 | Accounting       |        205 |        1700 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1994-06-07 | AC_ACCOUNT |  8300.00 |           NULL |        205 |           110 |           110 | Accounting       |        205 |        1700 |
|         900 | Ram         | NULL        | NULL     | NULL               | NULL       | AC_MGR     |     NULL |           NULL |       NULL |            10 |            10 | Administration   |        200 |        1700 |
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1999-05-24 | SA_REP     |  7000.00 |           0.15 |        149 |          NULL |          NULL | NULL             |       NULL |        NULL |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+---------------+------------------+------------+-------------+
109 rows in set (0.00 sec)

mysql> select * from employees e left outer join departments d on e.department_id=d.department_id union select * from employees e left outer join departments d on e.department_id=d.department_id where d.department_id IS NULL;
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+---------------+------------------+------------+-------------+
| employee_id | first_name  | last_name   | email    | phone_number       | hire_date  | job_id     | salary   | commission_pct | manager_id | department_id | department_id | department_name  | manager_id | location_id |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+---------------+------------------+------------+-------------+
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           NULL |       NULL |            90 |            90 | Executive        |        100 |        1700 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1989-09-21 | AD_VP      | 17000.00 |           NULL |        100 |            90 |            90 | Executive        |        100 |        1700 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1993-01-13 | AD_VP      | 17000.00 |           NULL |        100 |            90 |            90 | Executive        |        100 |        1700 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1990-01-03 | IT_PROG    |  9000.00 |           NULL |        102 |            60 |            60 | IT               |        103 |        1400 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1991-05-21 | IT_PROG    |  6000.00 |           NULL |        103 |            60 |            60 | IT               |        103 |        1400 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1997-06-25 | IT_PROG    |  4800.00 |           NULL |        103 |            60 |            60 | IT               |        103 |        1400 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1998-02-05 | IT_PROG    |  4800.00 |           NULL |        103 |            60 |            60 | IT               |        103 |        1400 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1999-02-07 | IT_PROG    |  4200.00 |           NULL |        103 |            60 |            60 | IT               |        103 |        1400 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1994-08-17 | FI_MGR     | 12000.00 |           NULL |        101 |           100 |           100 | Finance          |        108 |        1700 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1994-08-16 | FI_ACCOUNT |  9000.00 |           NULL |        108 |           100 |           100 | Finance          |        108 |        1700 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1997-09-28 | FI_ACCOUNT |  8200.00 |           NULL |        108 |           100 |           100 | Finance          |        108 |        1700 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1997-09-30 | FI_ACCOUNT |  7700.00 |           NULL |        108 |           100 |           100 | Finance          |        108 |        1700 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1998-03-07 | FI_ACCOUNT |  7800.00 |           NULL |        108 |           100 |           100 | Finance          |        108 |        1700 |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1999-12-07 | FI_ACCOUNT |  6900.00 |           NULL |        108 |           100 |           100 | Finance          |        108 |        1700 |
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1994-12-07 | PU_MAN     | 11000.00 |           NULL |        100 |            30 |            30 | Purchasing       |        114 |        1700 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1995-05-18 | PU_CLERK   |  3100.00 |           NULL |        114 |            30 |            30 | Purchasing       |        114 |        1700 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1997-12-24 | PU_CLERK   |  2900.00 |           NULL |        114 |            30 |            30 | Purchasing       |        114 |        1700 |
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1997-07-24 | PU_CLERK   |  2800.00 |           NULL |        114 |            30 |            30 | Purchasing       |        114 |        1700 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1998-11-15 | PU_CLERK   |  2600.00 |           NULL |        114 |            30 |            30 | Purchasing       |        114 |        1700 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1999-08-10 | PU_CLERK   |  2500.00 |           NULL |        114 |            30 |            30 | Purchasing       |        114 |        1700 |
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1996-07-18 | ST_MAN     |  8000.00 |           NULL |        100 |            50 |            50 | Shipping         |        121 |        1500 |
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1997-04-10 | ST_MAN     |  8200.00 |           NULL |        100 |            50 |            50 | Shipping         |        121 |        1500 |
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1995-05-01 | ST_MAN     |  7900.00 |           NULL |        100 |            50 |            50 | Shipping         |        121 |        1500 |
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1997-10-10 | ST_MAN     |  6500.00 |           NULL |        100 |            50 |            50 | Shipping         |        121 |        1500 |
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1999-11-16 | ST_MAN     |  5800.00 |           NULL |        100 |            50 |            50 | Shipping         |        121 |        1500 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1997-07-16 | ST_CLERK   |  3200.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1998-09-28 | ST_CLERK   |  2700.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1999-01-14 | ST_CLERK   |  2400.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 2000-03-08 | ST_CLERK   |  2200.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1997-08-20 | ST_CLERK   |  3300.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1997-10-30 | ST_CLERK   |  2800.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1997-02-16 | ST_CLERK   |  2500.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1999-04-10 | ST_CLERK   |  2100.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1996-06-14 | ST_CLERK   |  3300.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1998-08-26 | ST_CLERK   |  2900.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1999-12-12 | ST_CLERK   |  2400.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 2000-02-06 | ST_CLERK   |  2200.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1995-07-14 | ST_CLERK   |  3600.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1997-10-26 | ST_CLERK   |  3200.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1998-02-12 | ST_CLERK   |  2700.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1998-04-06 | ST_CLERK   |  2500.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1995-10-17 | ST_CLERK   |  3500.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1997-01-29 | ST_CLERK   |  3100.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1998-03-15 | ST_CLERK   |  2600.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1998-07-09 | ST_CLERK   |  2500.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1996-10-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |            80 | Sales            |        145 |        2500 |
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1997-01-05 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |            80 | Sales            |        145 |        2500 |
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1997-03-10 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 |            80 | Sales            |        145 |        2500 |
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1999-10-15 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 |            80 | Sales            |        145 |        2500 |
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 2000-01-29 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 |            80 | Sales            |        145 |        2500 |
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1997-01-30 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |            80 | Sales            |        145 |        2500 |
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1997-03-24 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |            80 | Sales            |        145 |        2500 |
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1997-08-20 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |            80 | Sales            |        145 |        2500 |
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1998-03-30 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |            80 | Sales            |        145 |        2500 |
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1998-12-09 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |            80 | Sales            |        145 |        2500 |
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1999-11-23 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |            80 | Sales            |        145 |        2500 |
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1996-01-30 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |            80 | Sales            |        145 |        2500 |
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1996-03-04 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |            80 | Sales            |        145 |        2500 |
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1996-08-01 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |            80 | Sales            |        145 |        2500 |
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1997-03-10 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |            80 | Sales            |        145 |        2500 |
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1997-12-15 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |            80 | Sales            |        145 |        2500 |
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1998-11-03 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |            80 | Sales            |        145 |        2500 |
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1997-11-11 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |            80 | Sales            |        145 |        2500 |
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1999-03-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |            80 | Sales            |        145 |        2500 |
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 2000-01-24 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |            80 | Sales            |        145 |        2500 |
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 2000-02-23 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |            80 | Sales            |        145 |        2500 |
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 2000-03-24 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |            80 | Sales            |        145 |        2500 |
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 2000-04-21 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |            80 | Sales            |        145 |        2500 |
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1997-03-11 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |            80 | Sales            |        145 |        2500 |
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1998-03-23 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |            80 | Sales            |        145 |        2500 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1998-01-24 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |            80 | Sales            |        145 |        2500 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1999-02-23 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |            80 | Sales            |        145 |        2500 |
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1999-03-24 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |            80 | Sales            |        145 |        2500 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 2000-04-21 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |            80 | Sales            |        145 |        2500 |
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1996-05-11 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |            80 | Sales            |        145 |        2500 |
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1997-03-19 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |            80 | Sales            |        145 |        2500 |
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1998-03-24 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |            80 | Sales            |        145 |        2500 |
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1998-04-23 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |            80 | Sales            |        145 |        2500 |
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1999-05-24 | SA_REP     |  7000.00 |           0.15 |        149 |          NULL |          NULL | NULL             |       NULL |        NULL |
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 2000-01-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |            80 | Sales            |        145 |        2500 |
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1998-01-24 | SH_CLERK   |  3200.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1998-02-23 | SH_CLERK   |  3100.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1999-06-21 | SH_CLERK   |  2500.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 2000-02-03 | SH_CLERK   |  2800.00 |           NULL |        120 |            50 |            50 | Shipping         |        121 |        1500 |
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1996-01-27 | SH_CLERK   |  4200.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1997-02-20 | SH_CLERK   |  4100.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1998-06-24 | SH_CLERK   |  3400.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1999-02-07 | SH_CLERK   |  3000.00 |           NULL |        121 |            50 |            50 | Shipping         |        121 |        1500 |
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1997-06-14 | SH_CLERK   |  3800.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1997-08-13 | SH_CLERK   |  3600.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1998-07-11 | SH_CLERK   |  2900.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1999-12-19 | SH_CLERK   |  2500.00 |           NULL |        122 |            50 |            50 | Shipping         |        121 |        1500 |
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1996-02-04 | SH_CLERK   |  4000.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1997-03-03 | SH_CLERK   |  3900.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1998-07-01 | SH_CLERK   |  3200.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1999-03-17 | SH_CLERK   |  2800.00 |           NULL |        123 |            50 |            50 | Shipping         |        121 |        1500 |
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1998-04-24 | SH_CLERK   |  3100.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1998-05-23 | SH_CLERK   |  3000.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1999-06-21 | SH_CLERK   |  2600.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 2000-01-13 | SH_CLERK   |  2600.00 |           NULL |        124 |            50 |            50 | Shipping         |        121 |        1500 |
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-17 | AD_ASST    |  4400.00 |           NULL |        101 |            10 |            10 | Administration   |        200 |        1700 |
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1996-02-17 | MK_MAN     | 13000.00 |           NULL |        100 |            20 |            20 | Marketing        |        201 |        1800 |
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1997-08-17 | MK_REP     |  6000.00 |           NULL |        201 |            20 |            20 | Marketing        |        201 |        1800 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1994-06-07 | HR_REP     |  6500.00 |           NULL |        101 |            40 |            40 | Human Resources  |        203 |        2400 |
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1994-06-07 | PR_REP     | 10000.00 |           NULL |        101 |            70 |            70 | Public Relations |        204 |        2700 |
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1994-06-07 | AC_MGR     | 12000.00 |           NULL |        101 |           110 |           110 | Accounting       |        205 |        1700 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1994-06-07 | AC_ACCOUNT |  8300.00 |           NULL |        205 |           110 |           110 | Accounting       |        205 |        1700 |
|         900 | Ram         | NULL        | NULL     | NULL               | NULL       | AC_MGR     |     NULL |           NULL |       NULL |            10 |            10 | Administration   |        200 |        1700 |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+---------------+------------------+------------+-------------+
108 rows in set (0.00 sec)

select * from employees e left outer join departments d on e.department_id=d.department_id union all select * from employees e right join departments d on e.department_id=d.department_id where d.department_id not in (select department_id from employees) limit 5;
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+
| employee_id | first_name | last_name | email    | phone_number | hire_date  | job_id  | salary   | commission_pct | manager_id | department_id | department_id | department_name | manager_id | location_id |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+
|         100 | Steven     | King      | SKING    | 515.123.4567 | 1987-06-17 | AD_PRES | 24000.00 |           NULL |       NULL |            90 |            90 | Executive       |        100 |        1700 |
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568 | 1989-09-21 | AD_VP   | 17000.00 |           NULL |        100 |            90 |            90 | Executive       |        100 |        1700 |
|         102 | Lex        | De Haan   | LDEHAAN  | 515.123.4569 | 1993-01-13 | AD_VP   | 17000.00 |           NULL |        100 |            90 |            90 | Executive       |        100 |        1700 |
|         103 | Alexander  | Hunold    | AHUNOLD  | 590.423.4567 | 1990-01-03 | IT_PROG |  9000.00 |           NULL |        102 |            60 |            60 | IT              |        103 |        1400 |
|         104 | Bruce      | Ernst     | BERNST   | 590.423.4568 | 1991-05-21 | IT_PROG |  6000.00 |           NULL |        103 |            60 |            60 | IT              |        103 |        1400 |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+---------------+-----------------+------------+-------------+
5 rows in set (0.00 sec)

mysql> select commission_pct, ifnull(commission_pct, 0) from employees limit 5;
+----------------+---------------------------+
| commission_pct | ifnull(commission_pct, 0) |
+----------------+---------------------------+
|           NULL |                      0.00 |
|           NULL |                      0.00 |
|           NULL |                      0.00 |
|           NULL |                      0.00 |
|           NULL |                      0.00 |
+----------------+---------------------------+
5 rows in set (0.00 sec)

mysql> select salary+salary*ifnull(commission_pct,0) from employees;
+----------------------------------------+
| salary+salary*ifnull(commission_pct,0) |
+----------------------------------------+
|                             24000.0000 |
|                             17000.0000 |
|                             17000.0000 |
|                              9000.0000 |
|                              6000.0000 |
|                              4800.0000 |
|                              4800.0000 |
|                              4200.0000 |
|                             12000.0000 |
|                              9000.0000 |
|                              8200.0000 |
|                              7700.0000 |
|                              7800.0000 |
|                              6900.0000 |
|                             11000.0000 |
|                              3100.0000 |
|                              2900.0000 |
|                              2800.0000 |
|                              2600.0000 |
|                              2500.0000 |
|                              8000.0000 |
|                              8200.0000 |
|                              7900.0000 |
|                              6500.0000 |
|                              5800.0000 |
|                              3200.0000 |
|                              2700.0000 |
|                              2400.0000 |
|                              2200.0000 |
|                              3300.0000 |
|                              2800.0000 |
|                              2500.0000 |
|                              2100.0000 |
|                              3300.0000 |
|                              2900.0000 |
|                              2400.0000 |
|                              2200.0000 |
|                              3600.0000 |
|                              3200.0000 |
|                              2700.0000 |
|                              2500.0000 |
|                              3500.0000 |
|                              3100.0000 |
|                              2600.0000 |
|                              2500.0000 |
|                             19600.0000 |
|                             17550.0000 |
|                             15600.0000 |
|                             14300.0000 |
|                             12600.0000 |
|                             13000.0000 |
|                             11875.0000 |
|                             11250.0000 |
|                              9600.0000 |
|                              9000.0000 |
|                              8050.0000 |
|                             13500.0000 |
|                             12825.0000 |
|                             12150.0000 |
|                             10400.0000 |
|                              9750.0000 |
|                              8750.0000 |
|                             13125.0000 |
|                             10925.0000 |
|                              7920.0000 |
|                              7480.0000 |
|                              7040.0000 |
|                              6820.0000 |
|                             14375.0000 |
|                             12000.0000 |
|                             11520.0000 |
|                              8510.0000 |
|                              8395.0000 |
|                              6710.0000 |
|                             14300.0000 |
|                             11000.0000 |
|                             10320.0000 |
|                             10080.0000 |
|                              8050.0000 |
|                              6820.0000 |
|                              3200.0000 |
|                              3100.0000 |
|                              2500.0000 |
|                              2800.0000 |
|                              4200.0000 |
|                              4100.0000 |
|                              3400.0000 |
|                              3000.0000 |
|                              3800.0000 |
|                              3600.0000 |
|                              2900.0000 |
|                              2500.0000 |
|                              4000.0000 |
|                              3900.0000 |
|                              3200.0000 |
|                              2800.0000 |
|                              3100.0000 |
|                              3000.0000 |
|                              2600.0000 |
|                              2600.0000 |
|                              4400.0000 |
|                             13000.0000 |
|                              6000.0000 |
|                              6500.0000 |
|                             10000.0000 |
|                             12000.0000 |
|                              8300.0000 |
|                                   NULL |
+----------------------------------------+
108 rows in set (0.00 sec)

mysql> select isnull(commission_pct) from employees;
+------------------------+
| isnull(commission_pct) |
+------------------------+
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      0 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
|                      1 |
+------------------------+
108 rows in set (0.00 sec)

mysql> select coalesce(commission_pct, 0) from employees;
+-----------------------------+
| coalesce(commission_pct, 0) |
+-----------------------------+
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.40 |
|                        0.30 |
|                        0.30 |
|                        0.30 |
|                        0.20 |
|                        0.30 |
|                        0.25 |
|                        0.25 |
|                        0.20 |
|                        0.20 |
|                        0.15 |
|                        0.35 |
|                        0.35 |
|                        0.35 |
|                        0.30 |
|                        0.30 |
|                        0.25 |
|                        0.25 |
|                        0.15 |
|                        0.10 |
|                        0.10 |
|                        0.10 |
|                        0.10 |
|                        0.25 |
|                        0.20 |
|                        0.20 |
|                        0.15 |
|                        0.15 |
|                        0.10 |
|                        0.30 |
|                        0.25 |
|                        0.20 |
|                        0.20 |
|                        0.15 |
|                        0.10 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
|                        0.00 |
+-----------------------------+
108 rows in set (0.01 sec)

mysql> select salary, case  when salary>10000 then 'Very high salary' when salary>5000 then 'High Salary' else 'Low Salary' end as salary_type from employees;
+----------+------------------+
| salary   | salary_type      |
+----------+------------------+
| 24000.00 | Very high salary |
| 17000.00 | Very high salary |
| 17000.00 | Very high salary |
|  9000.00 | High Salary      |
|  6000.00 | High Salary      |
|  4800.00 | Low Salary       |
|  4800.00 | Low Salary       |
|  4200.00 | Low Salary       |
| 12000.00 | Very high salary |
|  9000.00 | High Salary      |
|  8200.00 | High Salary      |
|  7700.00 | High Salary      |
|  7800.00 | High Salary      |
|  6900.00 | High Salary      |
| 11000.00 | Very high salary |
|  3100.00 | Low Salary       |
|  2900.00 | Low Salary       |
|  2800.00 | Low Salary       |
|  2600.00 | Low Salary       |
|  2500.00 | Low Salary       |
|  8000.00 | High Salary      |
|  8200.00 | High Salary      |
|  7900.00 | High Salary      |
|  6500.00 | High Salary      |
|  5800.00 | High Salary      |
|  3200.00 | Low Salary       |
|  2700.00 | Low Salary       |
|  2400.00 | Low Salary       |
|  2200.00 | Low Salary       |
|  3300.00 | Low Salary       |
|  2800.00 | Low Salary       |
|  2500.00 | Low Salary       |
|  2100.00 | Low Salary       |
|  3300.00 | Low Salary       |
|  2900.00 | Low Salary       |
|  2400.00 | Low Salary       |
|  2200.00 | Low Salary       |
|  3600.00 | Low Salary       |
|  3200.00 | Low Salary       |
|  2700.00 | Low Salary       |
|  2500.00 | Low Salary       |
|  3500.00 | Low Salary       |
|  3100.00 | Low Salary       |
|  2600.00 | Low Salary       |
|  2500.00 | Low Salary       |
| 14000.00 | Very high salary |
| 13500.00 | Very high salary |
| 12000.00 | Very high salary |
| 11000.00 | Very high salary |
| 10500.00 | Very high salary |
| 10000.00 | High Salary      |
|  9500.00 | High Salary      |
|  9000.00 | High Salary      |
|  8000.00 | High Salary      |
|  7500.00 | High Salary      |
|  7000.00 | High Salary      |
| 10000.00 | High Salary      |
|  9500.00 | High Salary      |
|  9000.00 | High Salary      |
|  8000.00 | High Salary      |
|  7500.00 | High Salary      |
|  7000.00 | High Salary      |
| 10500.00 | Very high salary |
|  9500.00 | High Salary      |
|  7200.00 | High Salary      |
|  6800.00 | High Salary      |
|  6400.00 | High Salary      |
|  6200.00 | High Salary      |
| 11500.00 | Very high salary |
| 10000.00 | High Salary      |
|  9600.00 | High Salary      |
|  7400.00 | High Salary      |
|  7300.00 | High Salary      |
|  6100.00 | High Salary      |
| 11000.00 | Very high salary |
|  8800.00 | High Salary      |
|  8600.00 | High Salary      |
|  8400.00 | High Salary      |
|  7000.00 | High Salary      |
|  6200.00 | High Salary      |
|  3200.00 | Low Salary       |
|  3100.00 | Low Salary       |
|  2500.00 | Low Salary       |
|  2800.00 | Low Salary       |
|  4200.00 | Low Salary       |
|  4100.00 | Low Salary       |
|  3400.00 | Low Salary       |
|  3000.00 | Low Salary       |
|  3800.00 | Low Salary       |
|  3600.00 | Low Salary       |
|  2900.00 | Low Salary       |
|  2500.00 | Low Salary       |
|  4000.00 | Low Salary       |
|  3900.00 | Low Salary       |
|  3200.00 | Low Salary       |
|  2800.00 | Low Salary       |
|  3100.00 | Low Salary       |
|  3000.00 | Low Salary       |
|  2600.00 | Low Salary       |
|  2600.00 | Low Salary       |
|  4400.00 | Low Salary       |
| 13000.00 | Very high salary |
|  6000.00 | High Salary      |
|  6500.00 | High Salary      |
| 10000.00 | High Salary      |
| 12000.00 | Very high salary |
|  8300.00 | High Salary      |
|     NULL | Low Salary       |
+----------+------------------+
108 rows in set (0.00 sec)

mysql> select department_id, commission_pct, coalesce(commission_pct,department_id,0) from employees;
+---------------+----------------+------------------------------------------+
| department_id | commission_pct | coalesce(commission_pct,department_id,0) |
+---------------+----------------+------------------------------------------+
|            90 |           NULL |                                    90.00 |
|            90 |           NULL |                                    90.00 |
|            90 |           NULL |                                    90.00 |
|            60 |           NULL |                                    60.00 |
|            60 |           NULL |                                    60.00 |
|            60 |           NULL |                                    60.00 |
|            60 |           NULL |                                    60.00 |
|            60 |           NULL |                                    60.00 |
|           100 |           NULL |                                   100.00 |
|           100 |           NULL |                                   100.00 |
|           100 |           NULL |                                   100.00 |
|           100 |           NULL |                                   100.00 |
|           100 |           NULL |                                   100.00 |
|           100 |           NULL |                                   100.00 |
|            30 |           NULL |                                    30.00 |
|            30 |           NULL |                                    30.00 |
|            30 |           NULL |                                    30.00 |
|            30 |           NULL |                                    30.00 |
|            30 |           NULL |                                    30.00 |
|            30 |           NULL |                                    30.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            80 |           0.40 |                                     0.40 |
|            80 |           0.30 |                                     0.30 |
|            80 |           0.30 |                                     0.30 |
|            80 |           0.30 |                                     0.30 |
|            80 |           0.20 |                                     0.20 |
|            80 |           0.30 |                                     0.30 |
|            80 |           0.25 |                                     0.25 |
|            80 |           0.25 |                                     0.25 |
|            80 |           0.20 |                                     0.20 |
|            80 |           0.20 |                                     0.20 |
|            80 |           0.15 |                                     0.15 |
|            80 |           0.35 |                                     0.35 |
|            80 |           0.35 |                                     0.35 |
|            80 |           0.35 |                                     0.35 |
|            80 |           0.30 |                                     0.30 |
|            80 |           0.30 |                                     0.30 |
|            80 |           0.25 |                                     0.25 |
|            80 |           0.25 |                                     0.25 |
|            80 |           0.15 |                                     0.15 |
|            80 |           0.10 |                                     0.10 |
|            80 |           0.10 |                                     0.10 |
|            80 |           0.10 |                                     0.10 |
|            80 |           0.10 |                                     0.10 |
|            80 |           0.25 |                                     0.25 |
|            80 |           0.20 |                                     0.20 |
|            80 |           0.20 |                                     0.20 |
|            80 |           0.15 |                                     0.15 |
|            80 |           0.15 |                                     0.15 |
|            80 |           0.10 |                                     0.10 |
|            80 |           0.30 |                                     0.30 |
|            80 |           0.25 |                                     0.25 |
|            80 |           0.20 |                                     0.20 |
|            80 |           0.20 |                                     0.20 |
|          NULL |           0.15 |                                     0.15 |
|            80 |           0.10 |                                     0.10 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            50 |           NULL |                                    50.00 |
|            10 |           NULL |                                    10.00 |
|            20 |           NULL |                                    20.00 |
|            20 |           NULL |                                    20.00 |
|            40 |           NULL |                                    40.00 |
|            70 |           NULL |                                    70.00 |
|           110 |           NULL |                                   110.00 |
|           110 |           NULL |                                   110.00 |
|            10 |           NULL |                                    10.00 |
+---------------+----------------+------------------------------------------+
108 rows in set (0.00 sec)

mysql> select department_id, max(salary) max_salary from employees group by department_id order by max_salary desc;
+---------------+------------+
| department_id | max_salary |
+---------------+------------+
|            90 |   24000.00 |
|            80 |   14000.00 |
|            20 |   13000.00 |
|           100 |   12000.00 |
|           110 |   12000.00 |
|            30 |   11000.00 |
|            70 |   10000.00 |
|            60 |    9000.00 |
|            50 |    8200.00 |
|          NULL |    7000.00 |
|            40 |    6500.00 |
|            10 |    4400.00 |
+---------------+------------+
12 rows in set (0.00 sec)

mysql> select department_id, first_name,salary, max(salary) over(partition by department_id order by salary desc) as max_salary from employees;
+---------------+-------------+----------+------------+
| department_id | first_name  | salary   | max_salary |
+---------------+-------------+----------+------------+
|          NULL | Kimberely   |  7000.00 |    7000.00 |
|            10 | Jennifer    |  4400.00 |    4400.00 |
|            10 | Ram         |     NULL |    4400.00 |
|            20 | Michael     | 13000.00 |   13000.00 |
|            20 | Pat         |  6000.00 |   13000.00 |
|            30 | Den         | 11000.00 |   11000.00 |
|            30 | Alexander   |  3100.00 |   11000.00 |
|            30 | Shelli      |  2900.00 |   11000.00 |
|            30 | Sigal       |  2800.00 |   11000.00 |
|            30 | Guy         |  2600.00 |   11000.00 |
|            30 | Karen       |  2500.00 |   11000.00 |
|            40 | Susan       |  6500.00 |    6500.00 |
|            50 | Adam        |  8200.00 |    8200.00 |
|            50 | Matthew     |  8000.00 |    8200.00 |
|            50 | Payam       |  7900.00 |    8200.00 |
|            50 | Shanta      |  6500.00 |    8200.00 |
|            50 | Kevin       |  5800.00 |    8200.00 |
|            50 | Nandita     |  4200.00 |    8200.00 |
|            50 | Alexis      |  4100.00 |    8200.00 |
|            50 | Sarah       |  4000.00 |    8200.00 |
|            50 | Britney     |  3900.00 |    8200.00 |
|            50 | Kelly       |  3800.00 |    8200.00 |
|            50 | Renske      |  3600.00 |    8200.00 |
|            50 | Jennifer    |  3600.00 |    8200.00 |
|            50 | Trenna      |  3500.00 |    8200.00 |
|            50 | Julia       |  3400.00 |    8200.00 |
|            50 | Laura       |  3300.00 |    8200.00 |
|            50 | Jason       |  3300.00 |    8200.00 |
|            50 | Julia       |  3200.00 |    8200.00 |
|            50 | Stephen     |  3200.00 |    8200.00 |
|            50 | Winston     |  3200.00 |    8200.00 |
|            50 | Samuel      |  3200.00 |    8200.00 |
|            50 | Curtis      |  3100.00 |    8200.00 |
|            50 | Jean        |  3100.00 |    8200.00 |
|            50 | Alana       |  3100.00 |    8200.00 |
|            50 | Anthony     |  3000.00 |    8200.00 |
|            50 | Kevin       |  3000.00 |    8200.00 |
|            50 | Michael     |  2900.00 |    8200.00 |
|            50 | Timothy     |  2900.00 |    8200.00 |
|            50 | Mozhe       |  2800.00 |    8200.00 |
|            50 | Girard      |  2800.00 |    8200.00 |
|            50 | Vance       |  2800.00 |    8200.00 |
|            50 | Irene       |  2700.00 |    8200.00 |
|            50 | John        |  2700.00 |    8200.00 |
|            50 | Randall     |  2600.00 |    8200.00 |
|            50 | Donald      |  2600.00 |    8200.00 |
|            50 | Douglas     |  2600.00 |    8200.00 |
|            50 | James       |  2500.00 |    8200.00 |
|            50 | Joshua      |  2500.00 |    8200.00 |
|            50 | Peter       |  2500.00 |    8200.00 |
|            50 | Martha      |  2500.00 |    8200.00 |
|            50 | Randall     |  2500.00 |    8200.00 |
|            50 | James       |  2400.00 |    8200.00 |
|            50 | Ki          |  2400.00 |    8200.00 |
|            50 | Steven      |  2200.00 |    8200.00 |
|            50 | Hazel       |  2200.00 |    8200.00 |
|            50 | TJ          |  2100.00 |    8200.00 |
|            60 | Alexander   |  9000.00 |    9000.00 |
|            60 | Bruce       |  6000.00 |    9000.00 |
|            60 | David       |  4800.00 |    9000.00 |
|            60 | Valli       |  4800.00 |    9000.00 |
|            60 | Diana       |  4200.00 |    9000.00 |
|            70 | Hermann     | 10000.00 |   10000.00 |
|            80 | John        | 14000.00 |   14000.00 |
|            80 | Karen       | 13500.00 |   14000.00 |
|            80 | Alberto     | 12000.00 |   14000.00 |
|            80 | Lisa        | 11500.00 |   14000.00 |
|            80 | Gerald      | 11000.00 |   14000.00 |
|            80 | Ellen       | 11000.00 |   14000.00 |
|            80 | Eleni       | 10500.00 |   14000.00 |
|            80 | Clara       | 10500.00 |   14000.00 |
|            80 | Peter       | 10000.00 |   14000.00 |
|            80 | Janette     | 10000.00 |   14000.00 |
|            80 | Harrison    | 10000.00 |   14000.00 |
|            80 | Tayler      |  9600.00 |   14000.00 |
|            80 | David       |  9500.00 |   14000.00 |
|            80 | Patrick     |  9500.00 |   14000.00 |
|            80 | Danielle    |  9500.00 |   14000.00 |
|            80 | Peter       |  9000.00 |   14000.00 |
|            80 | Allan       |  9000.00 |   14000.00 |
|            80 | Alyssa      |  8800.00 |   14000.00 |
|            80 | Jonathon    |  8600.00 |   14000.00 |
|            80 | Jack        |  8400.00 |   14000.00 |
|            80 | Christopher |  8000.00 |   14000.00 |
|            80 | Lindsey     |  8000.00 |   14000.00 |
|            80 | Nanette     |  7500.00 |   14000.00 |
|            80 | Louise      |  7500.00 |   14000.00 |
|            80 | William     |  7400.00 |   14000.00 |
|            80 | Elizabeth   |  7300.00 |   14000.00 |
|            80 | Mattea      |  7200.00 |   14000.00 |
|            80 | Oliver      |  7000.00 |   14000.00 |
|            80 | Sarath      |  7000.00 |   14000.00 |
|            80 | David       |  6800.00 |   14000.00 |
|            80 | Sundar      |  6400.00 |   14000.00 |
|            80 | Amit        |  6200.00 |   14000.00 |
|            80 | Charles     |  6200.00 |   14000.00 |
|            80 | Sundita     |  6100.00 |   14000.00 |
|            90 | Steven      | 24000.00 |   24000.00 |
|            90 | Neena       | 17000.00 |   24000.00 |
|            90 | Lex         | 17000.00 |   24000.00 |
|           100 | Nancy       | 12000.00 |   12000.00 |
|           100 | Daniel      |  9000.00 |   12000.00 |
|           100 | John        |  8200.00 |   12000.00 |
|           100 | Jose Manuel |  7800.00 |   12000.00 |
|           100 | Ismael      |  7700.00 |   12000.00 |
|           100 | Luis        |  6900.00 |   12000.00 |
|           110 | Shelley     | 12000.00 |   12000.00 |
|           110 | William     |  8300.00 |   12000.00 |
+---------------+-------------+----------+------------+
108 rows in set (0.00 sec)

mysql> select department_id, first_name,salary, -salary+max(salary) over(partition by department_id order by salary desc) as difference from employees;
+---------------+-------------+----------+------------+
| department_id | first_name  | salary   | difference |
+---------------+-------------+----------+------------+
|          NULL | Kimberely   |  7000.00 |       0.00 |
|            10 | Jennifer    |  4400.00 |       0.00 |
|            10 | Ram         |     NULL |       NULL |
|            20 | Michael     | 13000.00 |       0.00 |
|            20 | Pat         |  6000.00 |    7000.00 |
|            30 | Den         | 11000.00 |       0.00 |
|            30 | Alexander   |  3100.00 |    7900.00 |
|            30 | Shelli      |  2900.00 |    8100.00 |
|            30 | Sigal       |  2800.00 |    8200.00 |
|            30 | Guy         |  2600.00 |    8400.00 |
|            30 | Karen       |  2500.00 |    8500.00 |
|            40 | Susan       |  6500.00 |       0.00 |
|            50 | Adam        |  8200.00 |       0.00 |
|            50 | Matthew     |  8000.00 |     200.00 |
|            50 | Payam       |  7900.00 |     300.00 |
|            50 | Shanta      |  6500.00 |    1700.00 |
|            50 | Kevin       |  5800.00 |    2400.00 |
|            50 | Nandita     |  4200.00 |    4000.00 |
|            50 | Alexis      |  4100.00 |    4100.00 |
|            50 | Sarah       |  4000.00 |    4200.00 |
|            50 | Britney     |  3900.00 |    4300.00 |
|            50 | Kelly       |  3800.00 |    4400.00 |
|            50 | Renske      |  3600.00 |    4600.00 |
|            50 | Jennifer    |  3600.00 |    4600.00 |
|            50 | Trenna      |  3500.00 |    4700.00 |
|            50 | Julia       |  3400.00 |    4800.00 |
|            50 | Laura       |  3300.00 |    4900.00 |
|            50 | Jason       |  3300.00 |    4900.00 |
|            50 | Julia       |  3200.00 |    5000.00 |
|            50 | Stephen     |  3200.00 |    5000.00 |
|            50 | Winston     |  3200.00 |    5000.00 |
|            50 | Samuel      |  3200.00 |    5000.00 |
|            50 | Curtis      |  3100.00 |    5100.00 |
|            50 | Jean        |  3100.00 |    5100.00 |
|            50 | Alana       |  3100.00 |    5100.00 |
|            50 | Anthony     |  3000.00 |    5200.00 |
|            50 | Kevin       |  3000.00 |    5200.00 |
|            50 | Michael     |  2900.00 |    5300.00 |
|            50 | Timothy     |  2900.00 |    5300.00 |
|            50 | Mozhe       |  2800.00 |    5400.00 |
|            50 | Girard      |  2800.00 |    5400.00 |
|            50 | Vance       |  2800.00 |    5400.00 |
|            50 | Irene       |  2700.00 |    5500.00 |
|            50 | John        |  2700.00 |    5500.00 |
|            50 | Randall     |  2600.00 |    5600.00 |
|            50 | Donald      |  2600.00 |    5600.00 |
|            50 | Douglas     |  2600.00 |    5600.00 |
|            50 | James       |  2500.00 |    5700.00 |
|            50 | Joshua      |  2500.00 |    5700.00 |
|            50 | Peter       |  2500.00 |    5700.00 |
|            50 | Martha      |  2500.00 |    5700.00 |
|            50 | Randall     |  2500.00 |    5700.00 |
|            50 | James       |  2400.00 |    5800.00 |
|            50 | Ki          |  2400.00 |    5800.00 |
|            50 | Steven      |  2200.00 |    6000.00 |
|            50 | Hazel       |  2200.00 |    6000.00 |
|            50 | TJ          |  2100.00 |    6100.00 |
|            60 | Alexander   |  9000.00 |       0.00 |
|            60 | Bruce       |  6000.00 |    3000.00 |
|            60 | David       |  4800.00 |    4200.00 |
|            60 | Valli       |  4800.00 |    4200.00 |
|            60 | Diana       |  4200.00 |    4800.00 |
|            70 | Hermann     | 10000.00 |       0.00 |
|            80 | John        | 14000.00 |       0.00 |
|            80 | Karen       | 13500.00 |     500.00 |
|            80 | Alberto     | 12000.00 |    2000.00 |
|            80 | Lisa        | 11500.00 |    2500.00 |
|            80 | Gerald      | 11000.00 |    3000.00 |
|            80 | Ellen       | 11000.00 |    3000.00 |
|            80 | Eleni       | 10500.00 |    3500.00 |
|            80 | Clara       | 10500.00 |    3500.00 |
|            80 | Peter       | 10000.00 |    4000.00 |
|            80 | Janette     | 10000.00 |    4000.00 |
|            80 | Harrison    | 10000.00 |    4000.00 |
|            80 | Tayler      |  9600.00 |    4400.00 |
|            80 | David       |  9500.00 |    4500.00 |
|            80 | Patrick     |  9500.00 |    4500.00 |
|            80 | Danielle    |  9500.00 |    4500.00 |
|            80 | Peter       |  9000.00 |    5000.00 |
|            80 | Allan       |  9000.00 |    5000.00 |
|            80 | Alyssa      |  8800.00 |    5200.00 |
|            80 | Jonathon    |  8600.00 |    5400.00 |
|            80 | Jack        |  8400.00 |    5600.00 |
|            80 | Christopher |  8000.00 |    6000.00 |
|            80 | Lindsey     |  8000.00 |    6000.00 |
|            80 | Nanette     |  7500.00 |    6500.00 |
|            80 | Louise      |  7500.00 |    6500.00 |
|            80 | William     |  7400.00 |    6600.00 |
|            80 | Elizabeth   |  7300.00 |    6700.00 |
|            80 | Mattea      |  7200.00 |    6800.00 |
|            80 | Oliver      |  7000.00 |    7000.00 |
|            80 | Sarath      |  7000.00 |    7000.00 |
|            80 | David       |  6800.00 |    7200.00 |
|            80 | Sundar      |  6400.00 |    7600.00 |
|            80 | Amit        |  6200.00 |    7800.00 |
|            80 | Charles     |  6200.00 |    7800.00 |
|            80 | Sundita     |  6100.00 |    7900.00 |
|            90 | Steven      | 24000.00 |       0.00 |
|            90 | Neena       | 17000.00 |    7000.00 |
|            90 | Lex         | 17000.00 |    7000.00 |
|           100 | Nancy       | 12000.00 |       0.00 |
|           100 | Daniel      |  9000.00 |    3000.00 |
|           100 | John        |  8200.00 |    3800.00 |
|           100 | Jose Manuel |  7800.00 |    4200.00 |
|           100 | Ismael      |  7700.00 |    4300.00 |
|           100 | Luis        |  6900.00 |    5100.00 |
|           110 | Shelley     | 12000.00 |       0.00 |
|           110 | William     |  8300.00 |    3700.00 |
+---------------+-------------+----------+------------+
108 rows in set (0.00 sec)

mysql> select row_number() over(partition by department_id) as window_sno, department_id, first_name,salary, -salary+max(salary) over(partition by department_id) as difference from employees;
+------------+---------------+-------------+----------+------------+
| window_sno | department_id | first_name  | salary   | difference |
+------------+---------------+-------------+----------+------------+
|          1 |          NULL | Kimberely   |  7000.00 |       0.00 |
|          1 |            10 | Jennifer    |  4400.00 |       0.00 |
|          2 |            10 | Ram         |     NULL |       NULL |
|          1 |            20 | Michael     | 13000.00 |       0.00 |
|          2 |            20 | Pat         |  6000.00 |    7000.00 |
|          1 |            30 | Den         | 11000.00 |       0.00 |
|          2 |            30 | Alexander   |  3100.00 |    7900.00 |
|          3 |            30 | Shelli      |  2900.00 |    8100.00 |
|          4 |            30 | Sigal       |  2800.00 |    8200.00 |
|          5 |            30 | Guy         |  2600.00 |    8400.00 |
|          6 |            30 | Karen       |  2500.00 |    8500.00 |
|          1 |            40 | Susan       |  6500.00 |       0.00 |
|          1 |            50 | Matthew     |  8000.00 |     200.00 |
|          2 |            50 | Adam        |  8200.00 |       0.00 |
|          3 |            50 | Payam       |  7900.00 |     300.00 |
|          4 |            50 | Shanta      |  6500.00 |    1700.00 |
|          5 |            50 | Kevin       |  5800.00 |    2400.00 |
|          6 |            50 | Julia       |  3200.00 |    5000.00 |
|          7 |            50 | Irene       |  2700.00 |    5500.00 |
|          8 |            50 | James       |  2400.00 |    5800.00 |
|          9 |            50 | Steven      |  2200.00 |    6000.00 |
|         10 |            50 | Laura       |  3300.00 |    4900.00 |
|         11 |            50 | Mozhe       |  2800.00 |    5400.00 |
|         12 |            50 | James       |  2500.00 |    5700.00 |
|         13 |            50 | TJ          |  2100.00 |    6100.00 |
|         14 |            50 | Jason       |  3300.00 |    4900.00 |
|         15 |            50 | Michael     |  2900.00 |    5300.00 |
|         16 |            50 | Ki          |  2400.00 |    5800.00 |
|         17 |            50 | Hazel       |  2200.00 |    6000.00 |
|         18 |            50 | Renske      |  3600.00 |    4600.00 |
|         19 |            50 | Stephen     |  3200.00 |    5000.00 |
|         20 |            50 | John        |  2700.00 |    5500.00 |
|         21 |            50 | Joshua      |  2500.00 |    5700.00 |
|         22 |            50 | Trenna      |  3500.00 |    4700.00 |
|         23 |            50 | Curtis      |  3100.00 |    5100.00 |
|         24 |            50 | Randall     |  2600.00 |    5600.00 |
|         25 |            50 | Peter       |  2500.00 |    5700.00 |
|         26 |            50 | Winston     |  3200.00 |    5000.00 |
|         27 |            50 | Jean        |  3100.00 |    5100.00 |
|         28 |            50 | Martha      |  2500.00 |    5700.00 |
|         29 |            50 | Girard      |  2800.00 |    5400.00 |
|         30 |            50 | Nandita     |  4200.00 |    4000.00 |
|         31 |            50 | Alexis      |  4100.00 |    4100.00 |
|         32 |            50 | Julia       |  3400.00 |    4800.00 |
|         33 |            50 | Anthony     |  3000.00 |    5200.00 |
|         34 |            50 | Kelly       |  3800.00 |    4400.00 |
|         35 |            50 | Jennifer    |  3600.00 |    4600.00 |
|         36 |            50 | Timothy     |  2900.00 |    5300.00 |
|         37 |            50 | Randall     |  2500.00 |    5700.00 |
|         38 |            50 | Sarah       |  4000.00 |    4200.00 |
|         39 |            50 | Britney     |  3900.00 |    4300.00 |
|         40 |            50 | Samuel      |  3200.00 |    5000.00 |
|         41 |            50 | Vance       |  2800.00 |    5400.00 |
|         42 |            50 | Alana       |  3100.00 |    5100.00 |
|         43 |            50 | Kevin       |  3000.00 |    5200.00 |
|         44 |            50 | Donald      |  2600.00 |    5600.00 |
|         45 |            50 | Douglas     |  2600.00 |    5600.00 |
|          1 |            60 | Alexander   |  9000.00 |       0.00 |
|          2 |            60 | Bruce       |  6000.00 |    3000.00 |
|          3 |            60 | David       |  4800.00 |    4200.00 |
|          4 |            60 | Valli       |  4800.00 |    4200.00 |
|          5 |            60 | Diana       |  4200.00 |    4800.00 |
|          1 |            70 | Hermann     | 10000.00 |       0.00 |
|          1 |            80 | John        | 14000.00 |       0.00 |
|          2 |            80 | Karen       | 13500.00 |     500.00 |
|          3 |            80 | Alberto     | 12000.00 |    2000.00 |
|          4 |            80 | Gerald      | 11000.00 |    3000.00 |
|          5 |            80 | Eleni       | 10500.00 |    3500.00 |
|          6 |            80 | Peter       | 10000.00 |    4000.00 |
|          7 |            80 | David       |  9500.00 |    4500.00 |
|          8 |            80 | Peter       |  9000.00 |    5000.00 |
|          9 |            80 | Christopher |  8000.00 |    6000.00 |
|         10 |            80 | Nanette     |  7500.00 |    6500.00 |
|         11 |            80 | Oliver      |  7000.00 |    7000.00 |
|         12 |            80 | Janette     | 10000.00 |    4000.00 |
|         13 |            80 | Patrick     |  9500.00 |    4500.00 |
|         14 |            80 | Allan       |  9000.00 |    5000.00 |
|         15 |            80 | Lindsey     |  8000.00 |    6000.00 |
|         16 |            80 | Louise      |  7500.00 |    6500.00 |
|         17 |            80 | Sarath      |  7000.00 |    7000.00 |
|         18 |            80 | Clara       | 10500.00 |    3500.00 |
|         19 |            80 | Danielle    |  9500.00 |    4500.00 |
|         20 |            80 | Mattea      |  7200.00 |    6800.00 |
|         21 |            80 | David       |  6800.00 |    7200.00 |
|         22 |            80 | Sundar      |  6400.00 |    7600.00 |
|         23 |            80 | Amit        |  6200.00 |    7800.00 |
|         24 |            80 | Lisa        | 11500.00 |    2500.00 |
|         25 |            80 | Harrison    | 10000.00 |    4000.00 |
|         26 |            80 | Tayler      |  9600.00 |    4400.00 |
|         27 |            80 | William     |  7400.00 |    6600.00 |
|         28 |            80 | Elizabeth   |  7300.00 |    6700.00 |
|         29 |            80 | Sundita     |  6100.00 |    7900.00 |
|         30 |            80 | Ellen       | 11000.00 |    3000.00 |
|         31 |            80 | Alyssa      |  8800.00 |    5200.00 |
|         32 |            80 | Jonathon    |  8600.00 |    5400.00 |
|         33 |            80 | Jack        |  8400.00 |    5600.00 |
|         34 |            80 | Charles     |  6200.00 |    7800.00 |
|          1 |            90 | Steven      | 24000.00 |       0.00 |
|          2 |            90 | Neena       | 17000.00 |    7000.00 |
|          3 |            90 | Lex         | 17000.00 |    7000.00 |
|          1 |           100 | Nancy       | 12000.00 |       0.00 |
|          2 |           100 | Daniel      |  9000.00 |    3000.00 |
|          3 |           100 | John        |  8200.00 |    3800.00 |
|          4 |           100 | Ismael      |  7700.00 |    4300.00 |
|          5 |           100 | Jose Manuel |  7800.00 |    4200.00 |
|          6 |           100 | Luis        |  6900.00 |    5100.00 |
|          1 |           110 | Shelley     | 12000.00 |       0.00 |
|          2 |           110 | William     |  8300.00 |    3700.00 |
+------------+---------------+-------------+----------+------------+
108 rows in set (0.00 sec)

mysql>  select row_number() over(partition by department_id) as window_sno, department_id, first_name,salary,max(salary) over (partition by department_id) max_salary, -salary+max(salary) over(partition by department_id) as difference,rank() over(partition by department_id order by salary) rank_by_salary from employees;
+------------+---------------+-------------+----------+------------+------------+----------------+
| window_sno | department_id | first_name  | salary   | max_salary | difference | rank_by_salary |
+------------+---------------+-------------+----------+------------+------------+----------------+
|          1 |          NULL | Kimberely   |  7000.00 |    7000.00 |       0.00 |              1 |
|          2 |            10 | Ram         |     NULL |    4400.00 |       NULL |              1 |
|          1 |            10 | Jennifer    |  4400.00 |    4400.00 |       0.00 |              2 |
|          2 |            20 | Pat         |  6000.00 |   13000.00 |    7000.00 |              1 |
|          1 |            20 | Michael     | 13000.00 |   13000.00 |       0.00 |              2 |
|          6 |            30 | Karen       |  2500.00 |   11000.00 |    8500.00 |              1 |
|          5 |            30 | Guy         |  2600.00 |   11000.00 |    8400.00 |              2 |
|          4 |            30 | Sigal       |  2800.00 |   11000.00 |    8200.00 |              3 |
|          3 |            30 | Shelli      |  2900.00 |   11000.00 |    8100.00 |              4 |
|          2 |            30 | Alexander   |  3100.00 |   11000.00 |    7900.00 |              5 |
|          1 |            30 | Den         | 11000.00 |   11000.00 |       0.00 |              6 |
|          1 |            40 | Susan       |  6500.00 |    6500.00 |       0.00 |              1 |
|         13 |            50 | TJ          |  2100.00 |    8200.00 |    6100.00 |              1 |
|          9 |            50 | Steven      |  2200.00 |    8200.00 |    6000.00 |              2 |
|         17 |            50 | Hazel       |  2200.00 |    8200.00 |    6000.00 |              2 |
|          8 |            50 | James       |  2400.00 |    8200.00 |    5800.00 |              4 |
|         16 |            50 | Ki          |  2400.00 |    8200.00 |    5800.00 |              4 |
|         12 |            50 | James       |  2500.00 |    8200.00 |    5700.00 |              6 |
|         21 |            50 | Joshua      |  2500.00 |    8200.00 |    5700.00 |              6 |
|         25 |            50 | Peter       |  2500.00 |    8200.00 |    5700.00 |              6 |
|         28 |            50 | Martha      |  2500.00 |    8200.00 |    5700.00 |              6 |
|         37 |            50 | Randall     |  2500.00 |    8200.00 |    5700.00 |              6 |
|         24 |            50 | Randall     |  2600.00 |    8200.00 |    5600.00 |             11 |
|         44 |            50 | Donald      |  2600.00 |    8200.00 |    5600.00 |             11 |
|         45 |            50 | Douglas     |  2600.00 |    8200.00 |    5600.00 |             11 |
|          7 |            50 | Irene       |  2700.00 |    8200.00 |    5500.00 |             14 |
|         20 |            50 | John        |  2700.00 |    8200.00 |    5500.00 |             14 |
|         11 |            50 | Mozhe       |  2800.00 |    8200.00 |    5400.00 |             16 |
|         29 |            50 | Girard      |  2800.00 |    8200.00 |    5400.00 |             16 |
|         41 |            50 | Vance       |  2800.00 |    8200.00 |    5400.00 |             16 |
|         15 |            50 | Michael     |  2900.00 |    8200.00 |    5300.00 |             19 |
|         36 |            50 | Timothy     |  2900.00 |    8200.00 |    5300.00 |             19 |
|         33 |            50 | Anthony     |  3000.00 |    8200.00 |    5200.00 |             21 |
|         43 |            50 | Kevin       |  3000.00 |    8200.00 |    5200.00 |             21 |
|         23 |            50 | Curtis      |  3100.00 |    8200.00 |    5100.00 |             23 |
|         27 |            50 | Jean        |  3100.00 |    8200.00 |    5100.00 |             23 |
|         42 |            50 | Alana       |  3100.00 |    8200.00 |    5100.00 |             23 |
|          6 |            50 | Julia       |  3200.00 |    8200.00 |    5000.00 |             26 |
|         19 |            50 | Stephen     |  3200.00 |    8200.00 |    5000.00 |             26 |
|         26 |            50 | Winston     |  3200.00 |    8200.00 |    5000.00 |             26 |
|         40 |            50 | Samuel      |  3200.00 |    8200.00 |    5000.00 |             26 |
|         10 |            50 | Laura       |  3300.00 |    8200.00 |    4900.00 |             30 |
|         14 |            50 | Jason       |  3300.00 |    8200.00 |    4900.00 |             30 |
|         32 |            50 | Julia       |  3400.00 |    8200.00 |    4800.00 |             32 |
|         22 |            50 | Trenna      |  3500.00 |    8200.00 |    4700.00 |             33 |
|         18 |            50 | Renske      |  3600.00 |    8200.00 |    4600.00 |             34 |
|         35 |            50 | Jennifer    |  3600.00 |    8200.00 |    4600.00 |             34 |
|         34 |            50 | Kelly       |  3800.00 |    8200.00 |    4400.00 |             36 |
|         39 |            50 | Britney     |  3900.00 |    8200.00 |    4300.00 |             37 |
|         38 |            50 | Sarah       |  4000.00 |    8200.00 |    4200.00 |             38 |
|         31 |            50 | Alexis      |  4100.00 |    8200.00 |    4100.00 |             39 |
|         30 |            50 | Nandita     |  4200.00 |    8200.00 |    4000.00 |             40 |
|          5 |            50 | Kevin       |  5800.00 |    8200.00 |    2400.00 |             41 |
|          4 |            50 | Shanta      |  6500.00 |    8200.00 |    1700.00 |             42 |
|          3 |            50 | Payam       |  7900.00 |    8200.00 |     300.00 |             43 |
|          1 |            50 | Matthew     |  8000.00 |    8200.00 |     200.00 |             44 |
|          2 |            50 | Adam        |  8200.00 |    8200.00 |       0.00 |             45 |
|          5 |            60 | Diana       |  4200.00 |    9000.00 |    4800.00 |              1 |
|          3 |            60 | David       |  4800.00 |    9000.00 |    4200.00 |              2 |
|          4 |            60 | Valli       |  4800.00 |    9000.00 |    4200.00 |              2 |
|          2 |            60 | Bruce       |  6000.00 |    9000.00 |    3000.00 |              4 |
|          1 |            60 | Alexander   |  9000.00 |    9000.00 |       0.00 |              5 |
|          1 |            70 | Hermann     | 10000.00 |   10000.00 |       0.00 |              1 |
|         29 |            80 | Sundita     |  6100.00 |   14000.00 |    7900.00 |              1 |
|         23 |            80 | Amit        |  6200.00 |   14000.00 |    7800.00 |              2 |
|         34 |            80 | Charles     |  6200.00 |   14000.00 |    7800.00 |              2 |
|         22 |            80 | Sundar      |  6400.00 |   14000.00 |    7600.00 |              4 |
|         21 |            80 | David       |  6800.00 |   14000.00 |    7200.00 |              5 |
|         11 |            80 | Oliver      |  7000.00 |   14000.00 |    7000.00 |              6 |
|         17 |            80 | Sarath      |  7000.00 |   14000.00 |    7000.00 |              6 |
|         20 |            80 | Mattea      |  7200.00 |   14000.00 |    6800.00 |              8 |
|         28 |            80 | Elizabeth   |  7300.00 |   14000.00 |    6700.00 |              9 |
|         27 |            80 | William     |  7400.00 |   14000.00 |    6600.00 |             10 |
|         10 |            80 | Nanette     |  7500.00 |   14000.00 |    6500.00 |             11 |
|         16 |            80 | Louise      |  7500.00 |   14000.00 |    6500.00 |             11 |
|          9 |            80 | Christopher |  8000.00 |   14000.00 |    6000.00 |             13 |
|         15 |            80 | Lindsey     |  8000.00 |   14000.00 |    6000.00 |             13 |
|         33 |            80 | Jack        |  8400.00 |   14000.00 |    5600.00 |             15 |
|         32 |            80 | Jonathon    |  8600.00 |   14000.00 |    5400.00 |             16 |
|         31 |            80 | Alyssa      |  8800.00 |   14000.00 |    5200.00 |             17 |
|          8 |            80 | Peter       |  9000.00 |   14000.00 |    5000.00 |             18 |
|         14 |            80 | Allan       |  9000.00 |   14000.00 |    5000.00 |             18 |
|          7 |            80 | David       |  9500.00 |   14000.00 |    4500.00 |             20 |
|         13 |            80 | Patrick     |  9500.00 |   14000.00 |    4500.00 |             20 |
|         19 |            80 | Danielle    |  9500.00 |   14000.00 |    4500.00 |             20 |
|         26 |            80 | Tayler      |  9600.00 |   14000.00 |    4400.00 |             23 |
|          6 |            80 | Peter       | 10000.00 |   14000.00 |    4000.00 |             24 |
|         12 |            80 | Janette     | 10000.00 |   14000.00 |    4000.00 |             24 |
|         25 |            80 | Harrison    | 10000.00 |   14000.00 |    4000.00 |             24 |
|          5 |            80 | Eleni       | 10500.00 |   14000.00 |    3500.00 |             27 |
|         18 |            80 | Clara       | 10500.00 |   14000.00 |    3500.00 |             27 |
|          4 |            80 | Gerald      | 11000.00 |   14000.00 |    3000.00 |             29 |
|         30 |            80 | Ellen       | 11000.00 |   14000.00 |    3000.00 |             29 |
|         24 |            80 | Lisa        | 11500.00 |   14000.00 |    2500.00 |             31 |
|          3 |            80 | Alberto     | 12000.00 |   14000.00 |    2000.00 |             32 |
|          2 |            80 | Karen       | 13500.00 |   14000.00 |     500.00 |             33 |
|          1 |            80 | John        | 14000.00 |   14000.00 |       0.00 |             34 |
|          2 |            90 | Neena       | 17000.00 |   24000.00 |    7000.00 |              1 |
|          3 |            90 | Lex         | 17000.00 |   24000.00 |    7000.00 |              1 |
|          1 |            90 | Steven      | 24000.00 |   24000.00 |       0.00 |              3 |
|          6 |           100 | Luis        |  6900.00 |   12000.00 |    5100.00 |              1 |
|          4 |           100 | Ismael      |  7700.00 |   12000.00 |    4300.00 |              2 |
|          5 |           100 | Jose Manuel |  7800.00 |   12000.00 |    4200.00 |              3 |
|          3 |           100 | John        |  8200.00 |   12000.00 |    3800.00 |              4 |
|          2 |           100 | Daniel      |  9000.00 |   12000.00 |    3000.00 |              5 |
|          1 |           100 | Nancy       | 12000.00 |   12000.00 |       0.00 |              6 |
|          2 |           110 | William     |  8300.00 |   12000.00 |    3700.00 |              1 |
|          1 |           110 | Shelley     | 12000.00 |   12000.00 |       0.00 |              2 |
+------------+---------------+-------------+----------+------------+------------+----------------+
108 rows in set (0.01 sec)

mysql> select row_number() over(partition by department_id) as window_sno, department_id, first_name,salary,max(salary) over (partition by department_id) max_salary, -salary+max(salary) over(partition by department_id) as difference,dense_rank() over(partition by department_id order by salary) dense_rank_by_salary from employees;
+------------+---------------+-------------+----------+------------+------------+----------------------+
| window_sno | department_id | first_name  | salary   | max_salary | difference | dense_rank_by_salary |
+------------+---------------+-------------+----------+------------+------------+----------------------+
|          1 |          NULL | Kimberely   |  7000.00 |    7000.00 |       0.00 |                    1 |
|          2 |            10 | Ram         |     NULL |    4400.00 |       NULL |                    1 |
|          1 |            10 | Jennifer    |  4400.00 |    4400.00 |       0.00 |                    2 |
|          2 |            20 | Pat         |  6000.00 |   13000.00 |    7000.00 |                    1 |
|          1 |            20 | Michael     | 13000.00 |   13000.00 |       0.00 |                    2 |
|          6 |            30 | Karen       |  2500.00 |   11000.00 |    8500.00 |                    1 |
|          5 |            30 | Guy         |  2600.00 |   11000.00 |    8400.00 |                    2 |
|          4 |            30 | Sigal       |  2800.00 |   11000.00 |    8200.00 |                    3 |
|          3 |            30 | Shelli      |  2900.00 |   11000.00 |    8100.00 |                    4 |
|          2 |            30 | Alexander   |  3100.00 |   11000.00 |    7900.00 |                    5 |
|          1 |            30 | Den         | 11000.00 |   11000.00 |       0.00 |                    6 |
|          1 |            40 | Susan       |  6500.00 |    6500.00 |       0.00 |                    1 |
|         13 |            50 | TJ          |  2100.00 |    8200.00 |    6100.00 |                    1 |
|          9 |            50 | Steven      |  2200.00 |    8200.00 |    6000.00 |                    2 |
|         17 |            50 | Hazel       |  2200.00 |    8200.00 |    6000.00 |                    2 |
|          8 |            50 | James       |  2400.00 |    8200.00 |    5800.00 |                    3 |
|         16 |            50 | Ki          |  2400.00 |    8200.00 |    5800.00 |                    3 |
|         12 |            50 | James       |  2500.00 |    8200.00 |    5700.00 |                    4 |
|         21 |            50 | Joshua      |  2500.00 |    8200.00 |    5700.00 |                    4 |
|         25 |            50 | Peter       |  2500.00 |    8200.00 |    5700.00 |                    4 |
|         28 |            50 | Martha      |  2500.00 |    8200.00 |    5700.00 |                    4 |
|         37 |            50 | Randall     |  2500.00 |    8200.00 |    5700.00 |                    4 |
|         24 |            50 | Randall     |  2600.00 |    8200.00 |    5600.00 |                    5 |
|         44 |            50 | Donald      |  2600.00 |    8200.00 |    5600.00 |                    5 |
|         45 |            50 | Douglas     |  2600.00 |    8200.00 |    5600.00 |                    5 |
|          7 |            50 | Irene       |  2700.00 |    8200.00 |    5500.00 |                    6 |
|         20 |            50 | John        |  2700.00 |    8200.00 |    5500.00 |                    6 |
|         11 |            50 | Mozhe       |  2800.00 |    8200.00 |    5400.00 |                    7 |
|         29 |            50 | Girard      |  2800.00 |    8200.00 |    5400.00 |                    7 |
|         41 |            50 | Vance       |  2800.00 |    8200.00 |    5400.00 |                    7 |
|         15 |            50 | Michael     |  2900.00 |    8200.00 |    5300.00 |                    8 |
|         36 |            50 | Timothy     |  2900.00 |    8200.00 |    5300.00 |                    8 |
|         33 |            50 | Anthony     |  3000.00 |    8200.00 |    5200.00 |                    9 |
|         43 |            50 | Kevin       |  3000.00 |    8200.00 |    5200.00 |                    9 |
|         23 |            50 | Curtis      |  3100.00 |    8200.00 |    5100.00 |                   10 |
|         27 |            50 | Jean        |  3100.00 |    8200.00 |    5100.00 |                   10 |
|         42 |            50 | Alana       |  3100.00 |    8200.00 |    5100.00 |                   10 |
|          6 |            50 | Julia       |  3200.00 |    8200.00 |    5000.00 |                   11 |
|         19 |            50 | Stephen     |  3200.00 |    8200.00 |    5000.00 |                   11 |
|         26 |            50 | Winston     |  3200.00 |    8200.00 |    5000.00 |                   11 |
|         40 |            50 | Samuel      |  3200.00 |    8200.00 |    5000.00 |                   11 |
|         10 |            50 | Laura       |  3300.00 |    8200.00 |    4900.00 |                   12 |
|         14 |            50 | Jason       |  3300.00 |    8200.00 |    4900.00 |                   12 |
|         32 |            50 | Julia       |  3400.00 |    8200.00 |    4800.00 |                   13 |
|         22 |            50 | Trenna      |  3500.00 |    8200.00 |    4700.00 |                   14 |
|         18 |            50 | Renske      |  3600.00 |    8200.00 |    4600.00 |                   15 |
|         35 |            50 | Jennifer    |  3600.00 |    8200.00 |    4600.00 |                   15 |
|         34 |            50 | Kelly       |  3800.00 |    8200.00 |    4400.00 |                   16 |
|         39 |            50 | Britney     |  3900.00 |    8200.00 |    4300.00 |                   17 |
|         38 |            50 | Sarah       |  4000.00 |    8200.00 |    4200.00 |                   18 |
|         31 |            50 | Alexis      |  4100.00 |    8200.00 |    4100.00 |                   19 |
|         30 |            50 | Nandita     |  4200.00 |    8200.00 |    4000.00 |                   20 |
|          5 |            50 | Kevin       |  5800.00 |    8200.00 |    2400.00 |                   21 |
|          4 |            50 | Shanta      |  6500.00 |    8200.00 |    1700.00 |                   22 |
|          3 |            50 | Payam       |  7900.00 |    8200.00 |     300.00 |                   23 |
|          1 |            50 | Matthew     |  8000.00 |    8200.00 |     200.00 |                   24 |
|          2 |            50 | Adam        |  8200.00 |    8200.00 |       0.00 |                   25 |
|          5 |            60 | Diana       |  4200.00 |    9000.00 |    4800.00 |                    1 |
|          3 |            60 | David       |  4800.00 |    9000.00 |    4200.00 |                    2 |
|          4 |            60 | Valli       |  4800.00 |    9000.00 |    4200.00 |                    2 |
|          2 |            60 | Bruce       |  6000.00 |    9000.00 |    3000.00 |                    3 |
|          1 |            60 | Alexander   |  9000.00 |    9000.00 |       0.00 |                    4 |
|          1 |            70 | Hermann     | 10000.00 |   10000.00 |       0.00 |                    1 |
|         29 |            80 | Sundita     |  6100.00 |   14000.00 |    7900.00 |                    1 |
|         23 |            80 | Amit        |  6200.00 |   14000.00 |    7800.00 |                    2 |
|         34 |            80 | Charles     |  6200.00 |   14000.00 |    7800.00 |                    2 |
|         22 |            80 | Sundar      |  6400.00 |   14000.00 |    7600.00 |                    3 |
|         21 |            80 | David       |  6800.00 |   14000.00 |    7200.00 |                    4 |
|         11 |            80 | Oliver      |  7000.00 |   14000.00 |    7000.00 |                    5 |
|         17 |            80 | Sarath      |  7000.00 |   14000.00 |    7000.00 |                    5 |
|         20 |            80 | Mattea      |  7200.00 |   14000.00 |    6800.00 |                    6 |
|         28 |            80 | Elizabeth   |  7300.00 |   14000.00 |    6700.00 |                    7 |
|         27 |            80 | William     |  7400.00 |   14000.00 |    6600.00 |                    8 |
|         10 |            80 | Nanette     |  7500.00 |   14000.00 |    6500.00 |                    9 |
|         16 |            80 | Louise      |  7500.00 |   14000.00 |    6500.00 |                    9 |
|          9 |            80 | Christopher |  8000.00 |   14000.00 |    6000.00 |                   10 |
|         15 |            80 | Lindsey     |  8000.00 |   14000.00 |    6000.00 |                   10 |
|         33 |            80 | Jack        |  8400.00 |   14000.00 |    5600.00 |                   11 |
|         32 |            80 | Jonathon    |  8600.00 |   14000.00 |    5400.00 |                   12 |
|         31 |            80 | Alyssa      |  8800.00 |   14000.00 |    5200.00 |                   13 |
|          8 |            80 | Peter       |  9000.00 |   14000.00 |    5000.00 |                   14 |
|         14 |            80 | Allan       |  9000.00 |   14000.00 |    5000.00 |                   14 |
|          7 |            80 | David       |  9500.00 |   14000.00 |    4500.00 |                   15 |
|         13 |            80 | Patrick     |  9500.00 |   14000.00 |    4500.00 |                   15 |
|         19 |            80 | Danielle    |  9500.00 |   14000.00 |    4500.00 |                   15 |
|         26 |            80 | Tayler      |  9600.00 |   14000.00 |    4400.00 |                   16 |
|          6 |            80 | Peter       | 10000.00 |   14000.00 |    4000.00 |                   17 |
|         12 |            80 | Janette     | 10000.00 |   14000.00 |    4000.00 |                   17 |
|         25 |            80 | Harrison    | 10000.00 |   14000.00 |    4000.00 |                   17 |
|          5 |            80 | Eleni       | 10500.00 |   14000.00 |    3500.00 |                   18 |
|         18 |            80 | Clara       | 10500.00 |   14000.00 |    3500.00 |                   18 |
|          4 |            80 | Gerald      | 11000.00 |   14000.00 |    3000.00 |                   19 |
|         30 |            80 | Ellen       | 11000.00 |   14000.00 |    3000.00 |                   19 |
|         24 |            80 | Lisa        | 11500.00 |   14000.00 |    2500.00 |                   20 |
|          3 |            80 | Alberto     | 12000.00 |   14000.00 |    2000.00 |                   21 |
|          2 |            80 | Karen       | 13500.00 |   14000.00 |     500.00 |                   22 |
|          1 |            80 | John        | 14000.00 |   14000.00 |       0.00 |                   23 |
|          2 |            90 | Neena       | 17000.00 |   24000.00 |    7000.00 |                    1 |
|          3 |            90 | Lex         | 17000.00 |   24000.00 |    7000.00 |                    1 |
|          1 |            90 | Steven      | 24000.00 |   24000.00 |       0.00 |                    2 |
|          6 |           100 | Luis        |  6900.00 |   12000.00 |    5100.00 |                    1 |
|          4 |           100 | Ismael      |  7700.00 |   12000.00 |    4300.00 |                    2 |
|          5 |           100 | Jose Manuel |  7800.00 |   12000.00 |    4200.00 |                    3 |
|          3 |           100 | John        |  8200.00 |   12000.00 |    3800.00 |                    4 |
|          2 |           100 | Daniel      |  9000.00 |   12000.00 |    3000.00 |                    5 |
|          1 |           100 | Nancy       | 12000.00 |   12000.00 |       0.00 |                    6 |
|          2 |           110 | William     |  8300.00 |   12000.00 |    3700.00 |                    1 |
|          1 |           110 | Shelley     | 12000.00 |   12000.00 |       0.00 |                    2 |
+------------+---------------+-------------+----------+------------+------------+----------------------+
108 rows in set (0.01 sec)

mysql> select row_number() over(partition by department_id) as window_sno, department_id, first_name,salary,max(salary) over (partition by department_id) max_salary, -salary+max(salary) over(partition by department_id) as difference,dense_rank() over(partition by department_id order by salary) dense_rank_by_salary, lead(salary) over(partition by department_id order by salary) lead_salary from employees;
+------------+---------------+-------------+----------+------------+------------+----------------------+-------------+
| window_sno | department_id | first_name  | salary   | max_salary | difference | dense_rank_by_salary | lead_salary |
+------------+---------------+-------------+----------+------------+------------+----------------------+-------------+
|          1 |          NULL | Kimberely   |  7000.00 |    7000.00 |       0.00 |                    1 |        NULL |
|          2 |            10 | Ram         |     NULL |    4400.00 |       NULL |                    1 |     4400.00 |
|          1 |            10 | Jennifer    |  4400.00 |    4400.00 |       0.00 |                    2 |        NULL |
|          2 |            20 | Pat         |  6000.00 |   13000.00 |    7000.00 |                    1 |    13000.00 |
|          1 |            20 | Michael     | 13000.00 |   13000.00 |       0.00 |                    2 |        NULL |
|          6 |            30 | Karen       |  2500.00 |   11000.00 |    8500.00 |                    1 |     2600.00 |
|          5 |            30 | Guy         |  2600.00 |   11000.00 |    8400.00 |                    2 |     2800.00 |
|          4 |            30 | Sigal       |  2800.00 |   11000.00 |    8200.00 |                    3 |     2900.00 |
|          3 |            30 | Shelli      |  2900.00 |   11000.00 |    8100.00 |                    4 |     3100.00 |
|          2 |            30 | Alexander   |  3100.00 |   11000.00 |    7900.00 |                    5 |    11000.00 |
|          1 |            30 | Den         | 11000.00 |   11000.00 |       0.00 |                    6 |        NULL |
|          1 |            40 | Susan       |  6500.00 |    6500.00 |       0.00 |                    1 |        NULL |
|         13 |            50 | TJ          |  2100.00 |    8200.00 |    6100.00 |                    1 |     2200.00 |
|          9 |            50 | Steven      |  2200.00 |    8200.00 |    6000.00 |                    2 |     2200.00 |
|         17 |            50 | Hazel       |  2200.00 |    8200.00 |    6000.00 |                    2 |     2400.00 |
|          8 |            50 | James       |  2400.00 |    8200.00 |    5800.00 |                    3 |     2400.00 |
|         16 |            50 | Ki          |  2400.00 |    8200.00 |    5800.00 |                    3 |     2500.00 |
|         12 |            50 | James       |  2500.00 |    8200.00 |    5700.00 |                    4 |     2500.00 |
|         21 |            50 | Joshua      |  2500.00 |    8200.00 |    5700.00 |                    4 |     2500.00 |
|         25 |            50 | Peter       |  2500.00 |    8200.00 |    5700.00 |                    4 |     2500.00 |
|         28 |            50 | Martha      |  2500.00 |    8200.00 |    5700.00 |                    4 |     2500.00 |
|         37 |            50 | Randall     |  2500.00 |    8200.00 |    5700.00 |                    4 |     2600.00 |
|         24 |            50 | Randall     |  2600.00 |    8200.00 |    5600.00 |                    5 |     2600.00 |
|         44 |            50 | Donald      |  2600.00 |    8200.00 |    5600.00 |                    5 |     2600.00 |
|         45 |            50 | Douglas     |  2600.00 |    8200.00 |    5600.00 |                    5 |     2700.00 |
|          7 |            50 | Irene       |  2700.00 |    8200.00 |    5500.00 |                    6 |     2700.00 |
|         20 |            50 | John        |  2700.00 |    8200.00 |    5500.00 |                    6 |     2800.00 |
|         11 |            50 | Mozhe       |  2800.00 |    8200.00 |    5400.00 |                    7 |     2800.00 |
|         29 |            50 | Girard      |  2800.00 |    8200.00 |    5400.00 |                    7 |     2800.00 |
|         41 |            50 | Vance       |  2800.00 |    8200.00 |    5400.00 |                    7 |     2900.00 |
|         15 |            50 | Michael     |  2900.00 |    8200.00 |    5300.00 |                    8 |     2900.00 |
|         36 |            50 | Timothy     |  2900.00 |    8200.00 |    5300.00 |                    8 |     3000.00 |
|         33 |            50 | Anthony     |  3000.00 |    8200.00 |    5200.00 |                    9 |     3000.00 |
|         43 |            50 | Kevin       |  3000.00 |    8200.00 |    5200.00 |                    9 |     3100.00 |
|         23 |            50 | Curtis      |  3100.00 |    8200.00 |    5100.00 |                   10 |     3100.00 |
|         27 |            50 | Jean        |  3100.00 |    8200.00 |    5100.00 |                   10 |     3100.00 |
|         42 |            50 | Alana       |  3100.00 |    8200.00 |    5100.00 |                   10 |     3200.00 |
|          6 |            50 | Julia       |  3200.00 |    8200.00 |    5000.00 |                   11 |     3200.00 |
|         19 |            50 | Stephen     |  3200.00 |    8200.00 |    5000.00 |                   11 |     3200.00 |
|         26 |            50 | Winston     |  3200.00 |    8200.00 |    5000.00 |                   11 |     3200.00 |
|         40 |            50 | Samuel      |  3200.00 |    8200.00 |    5000.00 |                   11 |     3300.00 |
|         10 |            50 | Laura       |  3300.00 |    8200.00 |    4900.00 |                   12 |     3300.00 |
|         14 |            50 | Jason       |  3300.00 |    8200.00 |    4900.00 |                   12 |     3400.00 |
|         32 |            50 | Julia       |  3400.00 |    8200.00 |    4800.00 |                   13 |     3500.00 |
|         22 |            50 | Trenna      |  3500.00 |    8200.00 |    4700.00 |                   14 |     3600.00 |
|         18 |            50 | Renske      |  3600.00 |    8200.00 |    4600.00 |                   15 |     3600.00 |
|         35 |            50 | Jennifer    |  3600.00 |    8200.00 |    4600.00 |                   15 |     3800.00 |
|         34 |            50 | Kelly       |  3800.00 |    8200.00 |    4400.00 |                   16 |     3900.00 |
|         39 |            50 | Britney     |  3900.00 |    8200.00 |    4300.00 |                   17 |     4000.00 |
|         38 |            50 | Sarah       |  4000.00 |    8200.00 |    4200.00 |                   18 |     4100.00 |
|         31 |            50 | Alexis      |  4100.00 |    8200.00 |    4100.00 |                   19 |     4200.00 |
|         30 |            50 | Nandita     |  4200.00 |    8200.00 |    4000.00 |                   20 |     5800.00 |
|          5 |            50 | Kevin       |  5800.00 |    8200.00 |    2400.00 |                   21 |     6500.00 |
|          4 |            50 | Shanta      |  6500.00 |    8200.00 |    1700.00 |                   22 |     7900.00 |
|          3 |            50 | Payam       |  7900.00 |    8200.00 |     300.00 |                   23 |     8000.00 |
|          1 |            50 | Matthew     |  8000.00 |    8200.00 |     200.00 |                   24 |     8200.00 |
|          2 |            50 | Adam        |  8200.00 |    8200.00 |       0.00 |                   25 |        NULL |
|          5 |            60 | Diana       |  4200.00 |    9000.00 |    4800.00 |                    1 |     4800.00 |
|          3 |            60 | David       |  4800.00 |    9000.00 |    4200.00 |                    2 |     4800.00 |
|          4 |            60 | Valli       |  4800.00 |    9000.00 |    4200.00 |                    2 |     6000.00 |
|          2 |            60 | Bruce       |  6000.00 |    9000.00 |    3000.00 |                    3 |     9000.00 |
|          1 |            60 | Alexander   |  9000.00 |    9000.00 |       0.00 |                    4 |        NULL |
|          1 |            70 | Hermann     | 10000.00 |   10000.00 |       0.00 |                    1 |        NULL |
|         29 |            80 | Sundita     |  6100.00 |   14000.00 |    7900.00 |                    1 |     6200.00 |
|         23 |            80 | Amit        |  6200.00 |   14000.00 |    7800.00 |                    2 |     6200.00 |
|         34 |            80 | Charles     |  6200.00 |   14000.00 |    7800.00 |                    2 |     6400.00 |
|         22 |            80 | Sundar      |  6400.00 |   14000.00 |    7600.00 |                    3 |     6800.00 |
|         21 |            80 | David       |  6800.00 |   14000.00 |    7200.00 |                    4 |     7000.00 |
|         11 |            80 | Oliver      |  7000.00 |   14000.00 |    7000.00 |                    5 |     7000.00 |
|         17 |            80 | Sarath      |  7000.00 |   14000.00 |    7000.00 |                    5 |     7200.00 |
|         20 |            80 | Mattea      |  7200.00 |   14000.00 |    6800.00 |                    6 |     7300.00 |
|         28 |            80 | Elizabeth   |  7300.00 |   14000.00 |    6700.00 |                    7 |     7400.00 |
|         27 |            80 | William     |  7400.00 |   14000.00 |    6600.00 |                    8 |     7500.00 |
|         10 |            80 | Nanette     |  7500.00 |   14000.00 |    6500.00 |                    9 |     7500.00 |
|         16 |            80 | Louise      |  7500.00 |   14000.00 |    6500.00 |                    9 |     8000.00 |
|          9 |            80 | Christopher |  8000.00 |   14000.00 |    6000.00 |                   10 |     8000.00 |
|         15 |            80 | Lindsey     |  8000.00 |   14000.00 |    6000.00 |                   10 |     8400.00 |
|         33 |            80 | Jack        |  8400.00 |   14000.00 |    5600.00 |                   11 |     8600.00 |
|         32 |            80 | Jonathon    |  8600.00 |   14000.00 |    5400.00 |                   12 |     8800.00 |
|         31 |            80 | Alyssa      |  8800.00 |   14000.00 |    5200.00 |                   13 |     9000.00 |
|          8 |            80 | Peter       |  9000.00 |   14000.00 |    5000.00 |                   14 |     9000.00 |
|         14 |            80 | Allan       |  9000.00 |   14000.00 |    5000.00 |                   14 |     9500.00 |
|          7 |            80 | David       |  9500.00 |   14000.00 |    4500.00 |                   15 |     9500.00 |
|         13 |            80 | Patrick     |  9500.00 |   14000.00 |    4500.00 |                   15 |     9500.00 |
|         19 |            80 | Danielle    |  9500.00 |   14000.00 |    4500.00 |                   15 |     9600.00 |
|         26 |            80 | Tayler      |  9600.00 |   14000.00 |    4400.00 |                   16 |    10000.00 |
|          6 |            80 | Peter       | 10000.00 |   14000.00 |    4000.00 |                   17 |    10000.00 |
|         12 |            80 | Janette     | 10000.00 |   14000.00 |    4000.00 |                   17 |    10000.00 |
|         25 |            80 | Harrison    | 10000.00 |   14000.00 |    4000.00 |                   17 |    10500.00 |
|          5 |            80 | Eleni       | 10500.00 |   14000.00 |    3500.00 |                   18 |    10500.00 |
|         18 |            80 | Clara       | 10500.00 |   14000.00 |    3500.00 |                   18 |    11000.00 |
|          4 |            80 | Gerald      | 11000.00 |   14000.00 |    3000.00 |                   19 |    11000.00 |
|         30 |            80 | Ellen       | 11000.00 |   14000.00 |    3000.00 |                   19 |    11500.00 |
|         24 |            80 | Lisa        | 11500.00 |   14000.00 |    2500.00 |                   20 |    12000.00 |
|          3 |            80 | Alberto     | 12000.00 |   14000.00 |    2000.00 |                   21 |    13500.00 |
|          2 |            80 | Karen       | 13500.00 |   14000.00 |     500.00 |                   22 |    14000.00 |
|          1 |            80 | John        | 14000.00 |   14000.00 |       0.00 |                   23 |        NULL |
|          2 |            90 | Neena       | 17000.00 |   24000.00 |    7000.00 |                    1 |    17000.00 |
|          3 |            90 | Lex         | 17000.00 |   24000.00 |    7000.00 |                    1 |    24000.00 |
|          1 |            90 | Steven      | 24000.00 |   24000.00 |       0.00 |                    2 |        NULL |
|          6 |           100 | Luis        |  6900.00 |   12000.00 |    5100.00 |                    1 |     7700.00 |
|          4 |           100 | Ismael      |  7700.00 |   12000.00 |    4300.00 |                    2 |     7800.00 |
|          5 |           100 | Jose Manuel |  7800.00 |   12000.00 |    4200.00 |                    3 |     8200.00 |
|          3 |           100 | John        |  8200.00 |   12000.00 |    3800.00 |                    4 |     9000.00 |
|          2 |           100 | Daniel      |  9000.00 |   12000.00 |    3000.00 |                    5 |    12000.00 |
|          1 |           100 | Nancy       | 12000.00 |   12000.00 |       0.00 |                    6 |        NULL |
|          2 |           110 | William     |  8300.00 |   12000.00 |    3700.00 |                    1 |    12000.00 |
|          1 |           110 | Shelley     | 12000.00 |   12000.00 |       0.00 |                    2 |        NULL |
+------------+---------------+-------------+----------+------------+------------+----------------------+-------------+
108 rows in set (0.01 sec)

mysql> select row_number() over(partition by department_id) as window_sno, department_id, first_name,salary,max(salary) over (partition by department_id) max_salary, -salary+max(salary) over(partition by department_id) as difference,dense_rank() over(partition by department_id order by salary) dense_rank_by_salary, lead(salary) over(partition by department_id order by salary) lead_salary,lag(salary) over(partition by department_id order by salary) lag_salary from employees;
+------------+---------------+-------------+----------+------------+------------+----------------------+-------------+------------+
| window_sno | department_id | first_name  | salary   | max_salary | difference | dense_rank_by_salary | lead_salary | lag_salary |
+------------+---------------+-------------+----------+------------+------------+----------------------+-------------+------------+
|          1 |          NULL | Kimberely   |  7000.00 |    7000.00 |       0.00 |                    1 |        NULL |       NULL |
|          2 |            10 | Ram         |     NULL |    4400.00 |       NULL |                    1 |     4400.00 |       NULL |
|          1 |            10 | Jennifer    |  4400.00 |    4400.00 |       0.00 |                    2 |        NULL |       NULL |
|          2 |            20 | Pat         |  6000.00 |   13000.00 |    7000.00 |                    1 |    13000.00 |       NULL |
|          1 |            20 | Michael     | 13000.00 |   13000.00 |       0.00 |                    2 |        NULL |    6000.00 |
|          6 |            30 | Karen       |  2500.00 |   11000.00 |    8500.00 |                    1 |     2600.00 |       NULL |
|          5 |            30 | Guy         |  2600.00 |   11000.00 |    8400.00 |                    2 |     2800.00 |    2500.00 |
|          4 |            30 | Sigal       |  2800.00 |   11000.00 |    8200.00 |                    3 |     2900.00 |    2600.00 |
|          3 |            30 | Shelli      |  2900.00 |   11000.00 |    8100.00 |                    4 |     3100.00 |    2800.00 |
|          2 |            30 | Alexander   |  3100.00 |   11000.00 |    7900.00 |                    5 |    11000.00 |    2900.00 |
|          1 |            30 | Den         | 11000.00 |   11000.00 |       0.00 |                    6 |        NULL |    3100.00 |
|          1 |            40 | Susan       |  6500.00 |    6500.00 |       0.00 |                    1 |        NULL |       NULL |
|         13 |            50 | TJ          |  2100.00 |    8200.00 |    6100.00 |                    1 |     2200.00 |       NULL |
|          9 |            50 | Steven      |  2200.00 |    8200.00 |    6000.00 |                    2 |     2200.00 |    2100.00 |
|         17 |            50 | Hazel       |  2200.00 |    8200.00 |    6000.00 |                    2 |     2400.00 |    2200.00 |
|          8 |            50 | James       |  2400.00 |    8200.00 |    5800.00 |                    3 |     2400.00 |    2200.00 |
|         16 |            50 | Ki          |  2400.00 |    8200.00 |    5800.00 |                    3 |     2500.00 |    2400.00 |
|         12 |            50 | James       |  2500.00 |    8200.00 |    5700.00 |                    4 |     2500.00 |    2400.00 |
|         21 |            50 | Joshua      |  2500.00 |    8200.00 |    5700.00 |                    4 |     2500.00 |    2500.00 |
|         25 |            50 | Peter       |  2500.00 |    8200.00 |    5700.00 |                    4 |     2500.00 |    2500.00 |
|         28 |            50 | Martha      |  2500.00 |    8200.00 |    5700.00 |                    4 |     2500.00 |    2500.00 |
|         37 |            50 | Randall     |  2500.00 |    8200.00 |    5700.00 |                    4 |     2600.00 |    2500.00 |
|         24 |            50 | Randall     |  2600.00 |    8200.00 |    5600.00 |                    5 |     2600.00 |    2500.00 |
|         44 |            50 | Donald      |  2600.00 |    8200.00 |    5600.00 |                    5 |     2600.00 |    2600.00 |
|         45 |            50 | Douglas     |  2600.00 |    8200.00 |    5600.00 |                    5 |     2700.00 |    2600.00 |
|          7 |            50 | Irene       |  2700.00 |    8200.00 |    5500.00 |                    6 |     2700.00 |    2600.00 |
|         20 |            50 | John        |  2700.00 |    8200.00 |    5500.00 |                    6 |     2800.00 |    2700.00 |
|         11 |            50 | Mozhe       |  2800.00 |    8200.00 |    5400.00 |                    7 |     2800.00 |    2700.00 |
|         29 |            50 | Girard      |  2800.00 |    8200.00 |    5400.00 |                    7 |     2800.00 |    2800.00 |
|         41 |            50 | Vance       |  2800.00 |    8200.00 |    5400.00 |                    7 |     2900.00 |    2800.00 |
|         15 |            50 | Michael     |  2900.00 |    8200.00 |    5300.00 |                    8 |     2900.00 |    2800.00 |
|         36 |            50 | Timothy     |  2900.00 |    8200.00 |    5300.00 |                    8 |     3000.00 |    2900.00 |
|         33 |            50 | Anthony     |  3000.00 |    8200.00 |    5200.00 |                    9 |     3000.00 |    2900.00 |
|         43 |            50 | Kevin       |  3000.00 |    8200.00 |    5200.00 |                    9 |     3100.00 |    3000.00 |
|         23 |            50 | Curtis      |  3100.00 |    8200.00 |    5100.00 |                   10 |     3100.00 |    3000.00 |
|         27 |            50 | Jean        |  3100.00 |    8200.00 |    5100.00 |                   10 |     3100.00 |    3100.00 |
|         42 |            50 | Alana       |  3100.00 |    8200.00 |    5100.00 |                   10 |     3200.00 |    3100.00 |
|          6 |            50 | Julia       |  3200.00 |    8200.00 |    5000.00 |                   11 |     3200.00 |    3100.00 |
|         19 |            50 | Stephen     |  3200.00 |    8200.00 |    5000.00 |                   11 |     3200.00 |    3200.00 |
|         26 |            50 | Winston     |  3200.00 |    8200.00 |    5000.00 |                   11 |     3200.00 |    3200.00 |
|         40 |            50 | Samuel      |  3200.00 |    8200.00 |    5000.00 |                   11 |     3300.00 |    3200.00 |
|         10 |            50 | Laura       |  3300.00 |    8200.00 |    4900.00 |                   12 |     3300.00 |    3200.00 |
|         14 |            50 | Jason       |  3300.00 |    8200.00 |    4900.00 |                   12 |     3400.00 |    3300.00 |
|         32 |            50 | Julia       |  3400.00 |    8200.00 |    4800.00 |                   13 |     3500.00 |    3300.00 |
|         22 |            50 | Trenna      |  3500.00 |    8200.00 |    4700.00 |                   14 |     3600.00 |    3400.00 |
|         18 |            50 | Renske      |  3600.00 |    8200.00 |    4600.00 |                   15 |     3600.00 |    3500.00 |
|         35 |            50 | Jennifer    |  3600.00 |    8200.00 |    4600.00 |                   15 |     3800.00 |    3600.00 |
|         34 |            50 | Kelly       |  3800.00 |    8200.00 |    4400.00 |                   16 |     3900.00 |    3600.00 |
|         39 |            50 | Britney     |  3900.00 |    8200.00 |    4300.00 |                   17 |     4000.00 |    3800.00 |
|         38 |            50 | Sarah       |  4000.00 |    8200.00 |    4200.00 |                   18 |     4100.00 |    3900.00 |
|         31 |            50 | Alexis      |  4100.00 |    8200.00 |    4100.00 |                   19 |     4200.00 |    4000.00 |
|         30 |            50 | Nandita     |  4200.00 |    8200.00 |    4000.00 |                   20 |     5800.00 |    4100.00 |
|          5 |            50 | Kevin       |  5800.00 |    8200.00 |    2400.00 |                   21 |     6500.00 |    4200.00 |
|          4 |            50 | Shanta      |  6500.00 |    8200.00 |    1700.00 |                   22 |     7900.00 |    5800.00 |
|          3 |            50 | Payam       |  7900.00 |    8200.00 |     300.00 |                   23 |     8000.00 |    6500.00 |
|          1 |            50 | Matthew     |  8000.00 |    8200.00 |     200.00 |                   24 |     8200.00 |    7900.00 |
|          2 |            50 | Adam        |  8200.00 |    8200.00 |       0.00 |                   25 |        NULL |    8000.00 |
|          5 |            60 | Diana       |  4200.00 |    9000.00 |    4800.00 |                    1 |     4800.00 |       NULL |
|          3 |            60 | David       |  4800.00 |    9000.00 |    4200.00 |                    2 |     4800.00 |    4200.00 |
|          4 |            60 | Valli       |  4800.00 |    9000.00 |    4200.00 |                    2 |     6000.00 |    4800.00 |
|          2 |            60 | Bruce       |  6000.00 |    9000.00 |    3000.00 |                    3 |     9000.00 |    4800.00 |
|          1 |            60 | Alexander   |  9000.00 |    9000.00 |       0.00 |                    4 |        NULL |    6000.00 |
|          1 |            70 | Hermann     | 10000.00 |   10000.00 |       0.00 |                    1 |        NULL |       NULL |
|         29 |            80 | Sundita     |  6100.00 |   14000.00 |    7900.00 |                    1 |     6200.00 |       NULL |
|         23 |            80 | Amit        |  6200.00 |   14000.00 |    7800.00 |                    2 |     6200.00 |    6100.00 |
|         34 |            80 | Charles     |  6200.00 |   14000.00 |    7800.00 |                    2 |     6400.00 |    6200.00 |
|         22 |            80 | Sundar      |  6400.00 |   14000.00 |    7600.00 |                    3 |     6800.00 |    6200.00 |
|         21 |            80 | David       |  6800.00 |   14000.00 |    7200.00 |                    4 |     7000.00 |    6400.00 |
|         11 |            80 | Oliver      |  7000.00 |   14000.00 |    7000.00 |                    5 |     7000.00 |    6800.00 |
|         17 |            80 | Sarath      |  7000.00 |   14000.00 |    7000.00 |                    5 |     7200.00 |    7000.00 |
|         20 |            80 | Mattea      |  7200.00 |   14000.00 |    6800.00 |                    6 |     7300.00 |    7000.00 |
|         28 |            80 | Elizabeth   |  7300.00 |   14000.00 |    6700.00 |                    7 |     7400.00 |    7200.00 |
|         27 |            80 | William     |  7400.00 |   14000.00 |    6600.00 |                    8 |     7500.00 |    7300.00 |
|         10 |            80 | Nanette     |  7500.00 |   14000.00 |    6500.00 |                    9 |     7500.00 |    7400.00 |
|         16 |            80 | Louise      |  7500.00 |   14000.00 |    6500.00 |                    9 |     8000.00 |    7500.00 |
|          9 |            80 | Christopher |  8000.00 |   14000.00 |    6000.00 |                   10 |     8000.00 |    7500.00 |
|         15 |            80 | Lindsey     |  8000.00 |   14000.00 |    6000.00 |                   10 |     8400.00 |    8000.00 |
|         33 |            80 | Jack        |  8400.00 |   14000.00 |    5600.00 |                   11 |     8600.00 |    8000.00 |
|         32 |            80 | Jonathon    |  8600.00 |   14000.00 |    5400.00 |                   12 |     8800.00 |    8400.00 |
|         31 |            80 | Alyssa      |  8800.00 |   14000.00 |    5200.00 |                   13 |     9000.00 |    8600.00 |
|          8 |            80 | Peter       |  9000.00 |   14000.00 |    5000.00 |                   14 |     9000.00 |    8800.00 |
|         14 |            80 | Allan       |  9000.00 |   14000.00 |    5000.00 |                   14 |     9500.00 |    9000.00 |
|          7 |            80 | David       |  9500.00 |   14000.00 |    4500.00 |                   15 |     9500.00 |    9000.00 |
|         13 |            80 | Patrick     |  9500.00 |   14000.00 |    4500.00 |                   15 |     9500.00 |    9500.00 |
|         19 |            80 | Danielle    |  9500.00 |   14000.00 |    4500.00 |                   15 |     9600.00 |    9500.00 |
|         26 |            80 | Tayler      |  9600.00 |   14000.00 |    4400.00 |                   16 |    10000.00 |    9500.00 |
|          6 |            80 | Peter       | 10000.00 |   14000.00 |    4000.00 |                   17 |    10000.00 |    9600.00 |
|         12 |            80 | Janette     | 10000.00 |   14000.00 |    4000.00 |                   17 |    10000.00 |   10000.00 |
|         25 |            80 | Harrison    | 10000.00 |   14000.00 |    4000.00 |                   17 |    10500.00 |   10000.00 |
|          5 |            80 | Eleni       | 10500.00 |   14000.00 |    3500.00 |                   18 |    10500.00 |   10000.00 |
|         18 |            80 | Clara       | 10500.00 |   14000.00 |    3500.00 |                   18 |    11000.00 |   10500.00 |
|          4 |            80 | Gerald      | 11000.00 |   14000.00 |    3000.00 |                   19 |    11000.00 |   10500.00 |
|         30 |            80 | Ellen       | 11000.00 |   14000.00 |    3000.00 |                   19 |    11500.00 |   11000.00 |
|         24 |            80 | Lisa        | 11500.00 |   14000.00 |    2500.00 |                   20 |    12000.00 |   11000.00 |
|          3 |            80 | Alberto     | 12000.00 |   14000.00 |    2000.00 |                   21 |    13500.00 |   11500.00 |
|          2 |            80 | Karen       | 13500.00 |   14000.00 |     500.00 |                   22 |    14000.00 |   12000.00 |
|          1 |            80 | John        | 14000.00 |   14000.00 |       0.00 |                   23 |        NULL |   13500.00 |
|          2 |            90 | Neena       | 17000.00 |   24000.00 |    7000.00 |                    1 |    17000.00 |       NULL |
|          3 |            90 | Lex         | 17000.00 |   24000.00 |    7000.00 |                    1 |    24000.00 |   17000.00 |
|          1 |            90 | Steven      | 24000.00 |   24000.00 |       0.00 |                    2 |        NULL |   17000.00 |
|          6 |           100 | Luis        |  6900.00 |   12000.00 |    5100.00 |                    1 |     7700.00 |       NULL |
|          4 |           100 | Ismael      |  7700.00 |   12000.00 |    4300.00 |                    2 |     7800.00 |    6900.00 |
|          5 |           100 | Jose Manuel |  7800.00 |   12000.00 |    4200.00 |                    3 |     8200.00 |    7700.00 |
|          3 |           100 | John        |  8200.00 |   12000.00 |    3800.00 |                    4 |     9000.00 |    7800.00 |
|          2 |           100 | Daniel      |  9000.00 |   12000.00 |    3000.00 |                    5 |    12000.00 |    8200.00 |
|          1 |           100 | Nancy       | 12000.00 |   12000.00 |       0.00 |                    6 |        NULL |    9000.00 |
|          2 |           110 | William     |  8300.00 |   12000.00 |    3700.00 |                    1 |    12000.00 |       NULL |
|          1 |           110 | Shelley     | 12000.00 |   12000.00 |       0.00 |                    2 |        NULL |    8300.00 |
+------------+---------------+-------------+----------+------------+------------+----------------------+-------------+------------+
108 rows in set (0.01 sec)

mysql> select row_number() over(partition by department_id) as window_sno, department_id, first_name,salary,lead(salary,2) over(partition by department_id order by salary) lead_salary_add2,lag(salary,2) over(partition by department_id order by salary) lag_salary_add2 from employees;
+------------+---------------+-------------+----------+------------------+-----------------+
| window_sno | department_id | first_name  | salary   | lead_salary_add2 | lag_salary_add2 |
+------------+---------------+-------------+----------+------------------+-----------------+
|          1 |          NULL | Kimberely   |  7000.00 |             NULL |            NULL |
|          2 |            10 | Ram         |     NULL |             NULL |            NULL |
|          1 |            10 | Jennifer    |  4400.00 |             NULL |            NULL |
|          2 |            20 | Pat         |  6000.00 |             NULL |            NULL |
|          1 |            20 | Michael     | 13000.00 |             NULL |            NULL |
|          6 |            30 | Karen       |  2500.00 |          2800.00 |            NULL |
|          5 |            30 | Guy         |  2600.00 |          2900.00 |            NULL |
|          4 |            30 | Sigal       |  2800.00 |          3100.00 |         2500.00 |
|          3 |            30 | Shelli      |  2900.00 |         11000.00 |         2600.00 |
|          2 |            30 | Alexander   |  3100.00 |             NULL |         2800.00 |
|          1 |            30 | Den         | 11000.00 |             NULL |         2900.00 |
|          1 |            40 | Susan       |  6500.00 |             NULL |            NULL |
|         13 |            50 | TJ          |  2100.00 |          2200.00 |            NULL |
|          9 |            50 | Steven      |  2200.00 |          2400.00 |            NULL |
|         17 |            50 | Hazel       |  2200.00 |          2400.00 |         2100.00 |
|          8 |            50 | James       |  2400.00 |          2500.00 |         2200.00 |
|         16 |            50 | Ki          |  2400.00 |          2500.00 |         2200.00 |
|         12 |            50 | James       |  2500.00 |          2500.00 |         2400.00 |
|         21 |            50 | Joshua      |  2500.00 |          2500.00 |         2400.00 |
|         25 |            50 | Peter       |  2500.00 |          2500.00 |         2500.00 |
|         28 |            50 | Martha      |  2500.00 |          2600.00 |         2500.00 |
|         37 |            50 | Randall     |  2500.00 |          2600.00 |         2500.00 |
|         24 |            50 | Randall     |  2600.00 |          2600.00 |         2500.00 |
|         44 |            50 | Donald      |  2600.00 |          2700.00 |         2500.00 |
|         45 |            50 | Douglas     |  2600.00 |          2700.00 |         2600.00 |
|          7 |            50 | Irene       |  2700.00 |          2800.00 |         2600.00 |
|         20 |            50 | John        |  2700.00 |          2800.00 |         2600.00 |
|         11 |            50 | Mozhe       |  2800.00 |          2800.00 |         2700.00 |
|         29 |            50 | Girard      |  2800.00 |          2900.00 |         2700.00 |
|         41 |            50 | Vance       |  2800.00 |          2900.00 |         2800.00 |
|         15 |            50 | Michael     |  2900.00 |          3000.00 |         2800.00 |
|         36 |            50 | Timothy     |  2900.00 |          3000.00 |         2800.00 |
|         33 |            50 | Anthony     |  3000.00 |          3100.00 |         2900.00 |
|         43 |            50 | Kevin       |  3000.00 |          3100.00 |         2900.00 |
|         23 |            50 | Curtis      |  3100.00 |          3100.00 |         3000.00 |
|         27 |            50 | Jean        |  3100.00 |          3200.00 |         3000.00 |
|         42 |            50 | Alana       |  3100.00 |          3200.00 |         3100.00 |
|          6 |            50 | Julia       |  3200.00 |          3200.00 |         3100.00 |
|         19 |            50 | Stephen     |  3200.00 |          3200.00 |         3100.00 |
|         26 |            50 | Winston     |  3200.00 |          3300.00 |         3200.00 |
|         40 |            50 | Samuel      |  3200.00 |          3300.00 |         3200.00 |
|         10 |            50 | Laura       |  3300.00 |          3400.00 |         3200.00 |
|         14 |            50 | Jason       |  3300.00 |          3500.00 |         3200.00 |
|         32 |            50 | Julia       |  3400.00 |          3600.00 |         3300.00 |
|         22 |            50 | Trenna      |  3500.00 |          3600.00 |         3300.00 |
|         18 |            50 | Renske      |  3600.00 |          3800.00 |         3400.00 |
|         35 |            50 | Jennifer    |  3600.00 |          3900.00 |         3500.00 |
|         34 |            50 | Kelly       |  3800.00 |          4000.00 |         3600.00 |
|         39 |            50 | Britney     |  3900.00 |          4100.00 |         3600.00 |
|         38 |            50 | Sarah       |  4000.00 |          4200.00 |         3800.00 |
|         31 |            50 | Alexis      |  4100.00 |          5800.00 |         3900.00 |
|         30 |            50 | Nandita     |  4200.00 |          6500.00 |         4000.00 |
|          5 |            50 | Kevin       |  5800.00 |          7900.00 |         4100.00 |
|          4 |            50 | Shanta      |  6500.00 |          8000.00 |         4200.00 |
|          3 |            50 | Payam       |  7900.00 |          8200.00 |         5800.00 |
|          1 |            50 | Matthew     |  8000.00 |             NULL |         6500.00 |
|          2 |            50 | Adam        |  8200.00 |             NULL |         7900.00 |
|          5 |            60 | Diana       |  4200.00 |          4800.00 |            NULL |
|          3 |            60 | David       |  4800.00 |          6000.00 |            NULL |
|          4 |            60 | Valli       |  4800.00 |          9000.00 |         4200.00 |
|          2 |            60 | Bruce       |  6000.00 |             NULL |         4800.00 |
|          1 |            60 | Alexander   |  9000.00 |             NULL |         4800.00 |
|          1 |            70 | Hermann     | 10000.00 |             NULL |            NULL |
|         29 |            80 | Sundita     |  6100.00 |          6200.00 |            NULL |
|         23 |            80 | Amit        |  6200.00 |          6400.00 |            NULL |
|         34 |            80 | Charles     |  6200.00 |          6800.00 |         6100.00 |
|         22 |            80 | Sundar      |  6400.00 |          7000.00 |         6200.00 |
|         21 |            80 | David       |  6800.00 |          7000.00 |         6200.00 |
|         11 |            80 | Oliver      |  7000.00 |          7200.00 |         6400.00 |
|         17 |            80 | Sarath      |  7000.00 |          7300.00 |         6800.00 |
|         20 |            80 | Mattea      |  7200.00 |          7400.00 |         7000.00 |
|         28 |            80 | Elizabeth   |  7300.00 |          7500.00 |         7000.00 |
|         27 |            80 | William     |  7400.00 |          7500.00 |         7200.00 |
|         10 |            80 | Nanette     |  7500.00 |          8000.00 |         7300.00 |
|         16 |            80 | Louise      |  7500.00 |          8000.00 |         7400.00 |
|          9 |            80 | Christopher |  8000.00 |          8400.00 |         7500.00 |
|         15 |            80 | Lindsey     |  8000.00 |          8600.00 |         7500.00 |
|         33 |            80 | Jack        |  8400.00 |          8800.00 |         8000.00 |
|         32 |            80 | Jonathon    |  8600.00 |          9000.00 |         8000.00 |
|         31 |            80 | Alyssa      |  8800.00 |          9000.00 |         8400.00 |
|          8 |            80 | Peter       |  9000.00 |          9500.00 |         8600.00 |
|         14 |            80 | Allan       |  9000.00 |          9500.00 |         8800.00 |
|          7 |            80 | David       |  9500.00 |          9500.00 |         9000.00 |
|         13 |            80 | Patrick     |  9500.00 |          9600.00 |         9000.00 |
|         19 |            80 | Danielle    |  9500.00 |         10000.00 |         9500.00 |
|         26 |            80 | Tayler      |  9600.00 |         10000.00 |         9500.00 |
|          6 |            80 | Peter       | 10000.00 |         10000.00 |         9500.00 |
|         12 |            80 | Janette     | 10000.00 |         10500.00 |         9600.00 |
|         25 |            80 | Harrison    | 10000.00 |         10500.00 |        10000.00 |
|          5 |            80 | Eleni       | 10500.00 |         11000.00 |        10000.00 |
|         18 |            80 | Clara       | 10500.00 |         11000.00 |        10000.00 |
|          4 |            80 | Gerald      | 11000.00 |         11500.00 |        10500.00 |
|         30 |            80 | Ellen       | 11000.00 |         12000.00 |        10500.00 |
|         24 |            80 | Lisa        | 11500.00 |         13500.00 |        11000.00 |
|          3 |            80 | Alberto     | 12000.00 |         14000.00 |        11000.00 |
|          2 |            80 | Karen       | 13500.00 |             NULL |        11500.00 |
|          1 |            80 | John        | 14000.00 |             NULL |        12000.00 |
|          2 |            90 | Neena       | 17000.00 |         24000.00 |            NULL |
|          3 |            90 | Lex         | 17000.00 |             NULL |            NULL |
|          1 |            90 | Steven      | 24000.00 |             NULL |        17000.00 |
|          6 |           100 | Luis        |  6900.00 |          7800.00 |            NULL |
|          4 |           100 | Ismael      |  7700.00 |          8200.00 |            NULL |
|          5 |           100 | Jose Manuel |  7800.00 |          9000.00 |         6900.00 |
|          3 |           100 | John        |  8200.00 |         12000.00 |         7700.00 |
|          2 |           100 | Daniel      |  9000.00 |             NULL |         7800.00 |
|          1 |           100 | Nancy       | 12000.00 |             NULL |         8200.00 |
|          2 |           110 | William     |  8300.00 |             NULL |            NULL |
|          1 |           110 | Shelley     | 12000.00 |             NULL |            NULL |
+------------+---------------+-------------+----------+------------------+-----------------+
108 rows in set (0.01 sec)

mysql> select row_number() over(partition by department_id) as window_sno, department_id, first_name,salary,first_value(salary) over(partition by department_id order by salary) first_value_sal,last_value(salary) over(partition by department_id order by salary) last_value_sal from employees;
+------------+---------------+-------------+----------+-----------------+----------------+
| window_sno | department_id | first_name  | salary   | first_value_sal | last_value_sal |
+------------+---------------+-------------+----------+-----------------+----------------+
|          1 |          NULL | Kimberely   |  7000.00 |         7000.00 |        7000.00 |
|          2 |            10 | Ram         |     NULL |            NULL |           NULL |
|          1 |            10 | Jennifer    |  4400.00 |            NULL |        4400.00 |
|          2 |            20 | Pat         |  6000.00 |         6000.00 |        6000.00 |
|          1 |            20 | Michael     | 13000.00 |         6000.00 |       13000.00 |
|          6 |            30 | Karen       |  2500.00 |         2500.00 |        2500.00 |
|          5 |            30 | Guy         |  2600.00 |         2500.00 |        2600.00 |
|          4 |            30 | Sigal       |  2800.00 |         2500.00 |        2800.00 |
|          3 |            30 | Shelli      |  2900.00 |         2500.00 |        2900.00 |
|          2 |            30 | Alexander   |  3100.00 |         2500.00 |        3100.00 |
|          1 |            30 | Den         | 11000.00 |         2500.00 |       11000.00 |
|          1 |            40 | Susan       |  6500.00 |         6500.00 |        6500.00 |
|         13 |            50 | TJ          |  2100.00 |         2100.00 |        2100.00 |
|          9 |            50 | Steven      |  2200.00 |         2100.00 |        2200.00 |
|         17 |            50 | Hazel       |  2200.00 |         2100.00 |        2200.00 |
|          8 |            50 | James       |  2400.00 |         2100.00 |        2400.00 |
|         16 |            50 | Ki          |  2400.00 |         2100.00 |        2400.00 |
|         12 |            50 | James       |  2500.00 |         2100.00 |        2500.00 |
|         21 |            50 | Joshua      |  2500.00 |         2100.00 |        2500.00 |
|         25 |            50 | Peter       |  2500.00 |         2100.00 |        2500.00 |
|         28 |            50 | Martha      |  2500.00 |         2100.00 |        2500.00 |
|         37 |            50 | Randall     |  2500.00 |         2100.00 |        2500.00 |
|         24 |            50 | Randall     |  2600.00 |         2100.00 |        2600.00 |
|         44 |            50 | Donald      |  2600.00 |         2100.00 |        2600.00 |
|         45 |            50 | Douglas     |  2600.00 |         2100.00 |        2600.00 |
|          7 |            50 | Irene       |  2700.00 |         2100.00 |        2700.00 |
|         20 |            50 | John        |  2700.00 |         2100.00 |        2700.00 |
|         11 |            50 | Mozhe       |  2800.00 |         2100.00 |        2800.00 |
|         29 |            50 | Girard      |  2800.00 |         2100.00 |        2800.00 |
|         41 |            50 | Vance       |  2800.00 |         2100.00 |        2800.00 |
|         15 |            50 | Michael     |  2900.00 |         2100.00 |        2900.00 |
|         36 |            50 | Timothy     |  2900.00 |         2100.00 |        2900.00 |
|         33 |            50 | Anthony     |  3000.00 |         2100.00 |        3000.00 |
|         43 |            50 | Kevin       |  3000.00 |         2100.00 |        3000.00 |
|         23 |            50 | Curtis      |  3100.00 |         2100.00 |        3100.00 |
|         27 |            50 | Jean        |  3100.00 |         2100.00 |        3100.00 |
|         42 |            50 | Alana       |  3100.00 |         2100.00 |        3100.00 |
|          6 |            50 | Julia       |  3200.00 |         2100.00 |        3200.00 |
|         19 |            50 | Stephen     |  3200.00 |         2100.00 |        3200.00 |
|         26 |            50 | Winston     |  3200.00 |         2100.00 |        3200.00 |
|         40 |            50 | Samuel      |  3200.00 |         2100.00 |        3200.00 |
|         10 |            50 | Laura       |  3300.00 |         2100.00 |        3300.00 |
|         14 |            50 | Jason       |  3300.00 |         2100.00 |        3300.00 |
|         32 |            50 | Julia       |  3400.00 |         2100.00 |        3400.00 |
|         22 |            50 | Trenna      |  3500.00 |         2100.00 |        3500.00 |
|         18 |            50 | Renske      |  3600.00 |         2100.00 |        3600.00 |
|         35 |            50 | Jennifer    |  3600.00 |         2100.00 |        3600.00 |
|         34 |            50 | Kelly       |  3800.00 |         2100.00 |        3800.00 |
|         39 |            50 | Britney     |  3900.00 |         2100.00 |        3900.00 |
|         38 |            50 | Sarah       |  4000.00 |         2100.00 |        4000.00 |
|         31 |            50 | Alexis      |  4100.00 |         2100.00 |        4100.00 |
|         30 |            50 | Nandita     |  4200.00 |         2100.00 |        4200.00 |
|          5 |            50 | Kevin       |  5800.00 |         2100.00 |        5800.00 |
|          4 |            50 | Shanta      |  6500.00 |         2100.00 |        6500.00 |
|          3 |            50 | Payam       |  7900.00 |         2100.00 |        7900.00 |
|          1 |            50 | Matthew     |  8000.00 |         2100.00 |        8000.00 |
|          2 |            50 | Adam        |  8200.00 |         2100.00 |        8200.00 |
|          5 |            60 | Diana       |  4200.00 |         4200.00 |        4200.00 |
|          3 |            60 | David       |  4800.00 |         4200.00 |        4800.00 |
|          4 |            60 | Valli       |  4800.00 |         4200.00 |        4800.00 |
|          2 |            60 | Bruce       |  6000.00 |         4200.00 |        6000.00 |
|          1 |            60 | Alexander   |  9000.00 |         4200.00 |        9000.00 |
|          1 |            70 | Hermann     | 10000.00 |        10000.00 |       10000.00 |
|         29 |            80 | Sundita     |  6100.00 |         6100.00 |        6100.00 |
|         23 |            80 | Amit        |  6200.00 |         6100.00 |        6200.00 |
|         34 |            80 | Charles     |  6200.00 |         6100.00 |        6200.00 |
|         22 |            80 | Sundar      |  6400.00 |         6100.00 |        6400.00 |
|         21 |            80 | David       |  6800.00 |         6100.00 |        6800.00 |
|         11 |            80 | Oliver      |  7000.00 |         6100.00 |        7000.00 |
|         17 |            80 | Sarath      |  7000.00 |         6100.00 |        7000.00 |
|         20 |            80 | Mattea      |  7200.00 |         6100.00 |        7200.00 |
|         28 |            80 | Elizabeth   |  7300.00 |         6100.00 |        7300.00 |
|         27 |            80 | William     |  7400.00 |         6100.00 |        7400.00 |
|         10 |            80 | Nanette     |  7500.00 |         6100.00 |        7500.00 |
|         16 |            80 | Louise      |  7500.00 |         6100.00 |        7500.00 |
|          9 |            80 | Christopher |  8000.00 |         6100.00 |        8000.00 |
|         15 |            80 | Lindsey     |  8000.00 |         6100.00 |        8000.00 |
|         33 |            80 | Jack        |  8400.00 |         6100.00 |        8400.00 |
|         32 |            80 | Jonathon    |  8600.00 |         6100.00 |        8600.00 |
|         31 |            80 | Alyssa      |  8800.00 |         6100.00 |        8800.00 |
|          8 |            80 | Peter       |  9000.00 |         6100.00 |        9000.00 |
|         14 |            80 | Allan       |  9000.00 |         6100.00 |        9000.00 |
|          7 |            80 | David       |  9500.00 |         6100.00 |        9500.00 |
|         13 |            80 | Patrick     |  9500.00 |         6100.00 |        9500.00 |
|         19 |            80 | Danielle    |  9500.00 |         6100.00 |        9500.00 |
|         26 |            80 | Tayler      |  9600.00 |         6100.00 |        9600.00 |
|          6 |            80 | Peter       | 10000.00 |         6100.00 |       10000.00 |
|         12 |            80 | Janette     | 10000.00 |         6100.00 |       10000.00 |
|         25 |            80 | Harrison    | 10000.00 |         6100.00 |       10000.00 |
|          5 |            80 | Eleni       | 10500.00 |         6100.00 |       10500.00 |
|         18 |            80 | Clara       | 10500.00 |         6100.00 |       10500.00 |
|          4 |            80 | Gerald      | 11000.00 |         6100.00 |       11000.00 |
|         30 |            80 | Ellen       | 11000.00 |         6100.00 |       11000.00 |
|         24 |            80 | Lisa        | 11500.00 |         6100.00 |       11500.00 |
|          3 |            80 | Alberto     | 12000.00 |         6100.00 |       12000.00 |
|          2 |            80 | Karen       | 13500.00 |         6100.00 |       13500.00 |
|          1 |            80 | John        | 14000.00 |         6100.00 |       14000.00 |
|          2 |            90 | Neena       | 17000.00 |        17000.00 |       17000.00 |
|          3 |            90 | Lex         | 17000.00 |        17000.00 |       17000.00 |
|          1 |            90 | Steven      | 24000.00 |        17000.00 |       24000.00 |
|          6 |           100 | Luis        |  6900.00 |         6900.00 |        6900.00 |
|          4 |           100 | Ismael      |  7700.00 |         6900.00 |        7700.00 |
|          5 |           100 | Jose Manuel |  7800.00 |         6900.00 |        7800.00 |
|          3 |           100 | John        |  8200.00 |         6900.00 |        8200.00 |
|          2 |           100 | Daniel      |  9000.00 |         6900.00 |        9000.00 |
|          1 |           100 | Nancy       | 12000.00 |         6900.00 |       12000.00 |
|          2 |           110 | William     |  8300.00 |         8300.00 |        8300.00 |
|          1 |           110 | Shelley     | 12000.00 |         8300.00 |       12000.00 |
+------------+---------------+-------------+----------+-----------------+----------------+
108 rows in set (0.01 sec)

select row_number() over(partition by department_id) as window_sno, department_id, first_name,salary, count(employee_id) over(partition by department_id order by employee_id) as count_emp from employees;
+------------+---------------+-------------+----------+-----------+
| window_sno | department_id | first_name  | salary   | count_emp |
+------------+---------------+-------------+----------+-----------+
|          1 |          NULL | Kimberely   |  7000.00 |         1 |
|          1 |            10 | Jennifer    |  4400.00 |         1 |
|          2 |            10 | Ram         |     NULL |         2 |
|          1 |            20 | Michael     | 13000.00 |         1 |
|          2 |            20 | Pat         |  6000.00 |         2 |
|          1 |            30 | Den         | 11000.00 |         1 |
|          2 |            30 | Alexander   |  3100.00 |         2 |
|          3 |            30 | Shelli      |  2900.00 |         3 |
|          4 |            30 | Sigal       |  2800.00 |         4 |
|          5 |            30 | Guy         |  2600.00 |         5 |
|          6 |            30 | Karen       |  2500.00 |         6 |
|          1 |            40 | Susan       |  6500.00 |         1 |
|          1 |            50 | Matthew     |  8000.00 |         1 |
|          2 |            50 | Adam        |  8200.00 |         2 |
|          3 |            50 | Payam       |  7900.00 |         3 |
|          4 |            50 | Shanta      |  6500.00 |         4 |
|          5 |            50 | Kevin       |  5800.00 |         5 |
|          6 |            50 | Julia       |  3200.00 |         6 |
|          7 |            50 | Irene       |  2700.00 |         7 |
|          8 |            50 | James       |  2400.00 |         8 |
|          9 |            50 | Steven      |  2200.00 |         9 |
|         10 |            50 | Laura       |  3300.00 |        10 |
|         11 |            50 | Mozhe       |  2800.00 |        11 |
|         12 |            50 | James       |  2500.00 |        12 |
|         13 |            50 | TJ          |  2100.00 |        13 |
|         14 |            50 | Jason       |  3300.00 |        14 |
|         15 |            50 | Michael     |  2900.00 |        15 |
|         16 |            50 | Ki          |  2400.00 |        16 |
|         17 |            50 | Hazel       |  2200.00 |        17 |
|         18 |            50 | Renske      |  3600.00 |        18 |
|         19 |            50 | Stephen     |  3200.00 |        19 |
|         20 |            50 | John        |  2700.00 |        20 |
|         21 |            50 | Joshua      |  2500.00 |        21 |
|         22 |            50 | Trenna      |  3500.00 |        22 |
|         23 |            50 | Curtis      |  3100.00 |        23 |
|         24 |            50 | Randall     |  2600.00 |        24 |
|         25 |            50 | Peter       |  2500.00 |        25 |
|         26 |            50 | Winston     |  3200.00 |        26 |
|         27 |            50 | Jean        |  3100.00 |        27 |
|         28 |            50 | Martha      |  2500.00 |        28 |
|         29 |            50 | Girard      |  2800.00 |        29 |
|         30 |            50 | Nandita     |  4200.00 |        30 |
|         31 |            50 | Alexis      |  4100.00 |        31 |
|         32 |            50 | Julia       |  3400.00 |        32 |
|         33 |            50 | Anthony     |  3000.00 |        33 |
|         34 |            50 | Kelly       |  3800.00 |        34 |
|         35 |            50 | Jennifer    |  3600.00 |        35 |
|         36 |            50 | Timothy     |  2900.00 |        36 |
|         37 |            50 | Randall     |  2500.00 |        37 |
|         38 |            50 | Sarah       |  4000.00 |        38 |
|         39 |            50 | Britney     |  3900.00 |        39 |
|         40 |            50 | Samuel      |  3200.00 |        40 |
|         41 |            50 | Vance       |  2800.00 |        41 |
|         42 |            50 | Alana       |  3100.00 |        42 |
|         43 |            50 | Kevin       |  3000.00 |        43 |
|         44 |            50 | Donald      |  2600.00 |        44 |
|         45 |            50 | Douglas     |  2600.00 |        45 |
|          1 |            60 | Alexander   |  9000.00 |         1 |
|          2 |            60 | Bruce       |  6000.00 |         2 |
|          3 |            60 | David       |  4800.00 |         3 |
|          4 |            60 | Valli       |  4800.00 |         4 |
|          5 |            60 | Diana       |  4200.00 |         5 |
|          1 |            70 | Hermann     | 10000.00 |         1 |
|          1 |            80 | John        | 14000.00 |         1 |
|          2 |            80 | Karen       | 13500.00 |         2 |
|          3 |            80 | Alberto     | 12000.00 |         3 |
|          4 |            80 | Gerald      | 11000.00 |         4 |
|          5 |            80 | Eleni       | 10500.00 |         5 |
|          6 |            80 | Peter       | 10000.00 |         6 |
|          7 |            80 | David       |  9500.00 |         7 |
|          8 |            80 | Peter       |  9000.00 |         8 |
|          9 |            80 | Christopher |  8000.00 |         9 |
|         10 |            80 | Nanette     |  7500.00 |        10 |
|         11 |            80 | Oliver      |  7000.00 |        11 |
|         12 |            80 | Janette     | 10000.00 |        12 |
|         13 |            80 | Patrick     |  9500.00 |        13 |
|         14 |            80 | Allan       |  9000.00 |        14 |
|         15 |            80 | Lindsey     |  8000.00 |        15 |
|         16 |            80 | Louise      |  7500.00 |        16 |
|         17 |            80 | Sarath      |  7000.00 |        17 |
|         18 |            80 | Clara       | 10500.00 |        18 |
|         19 |            80 | Danielle    |  9500.00 |        19 |
|         20 |            80 | Mattea      |  7200.00 |        20 |
|         21 |            80 | David       |  6800.00 |        21 |
|         22 |            80 | Sundar      |  6400.00 |        22 |
|         23 |            80 | Amit        |  6200.00 |        23 |
|         24 |            80 | Lisa        | 11500.00 |        24 |
|         25 |            80 | Harrison    | 10000.00 |        25 |
|         26 |            80 | Tayler      |  9600.00 |        26 |
|         27 |            80 | William     |  7400.00 |        27 |
|         28 |            80 | Elizabeth   |  7300.00 |        28 |
|         29 |            80 | Sundita     |  6100.00 |        29 |
|         30 |            80 | Ellen       | 11000.00 |        30 |
|         31 |            80 | Alyssa      |  8800.00 |        31 |
|         32 |            80 | Jonathon    |  8600.00 |        32 |
|         33 |            80 | Jack        |  8400.00 |        33 |
|         34 |            80 | Charles     |  6200.00 |        34 |
|          1 |            90 | Steven      | 24000.00 |         1 |
|          2 |            90 | Neena       | 17000.00 |         2 |
|          3 |            90 | Lex         | 17000.00 |         3 |
|          1 |           100 | Nancy       | 12000.00 |         1 |
|          2 |           100 | Daniel      |  9000.00 |         2 |
|          3 |           100 | John        |  8200.00 |         3 |
|          4 |           100 | Ismael      |  7700.00 |         4 |
|          5 |           100 | Jose Manuel |  7800.00 |         5 |
|          6 |           100 | Luis        |  6900.00 |         6 |
|          1 |           110 | Shelley     | 12000.00 |         1 |
|          2 |           110 | William     |  8300.00 |         2 |
+------------+---------------+-------------+----------+-----------+
108 rows in set (0.01 sec)

mysql> select row_number() over(partition by department_id) as window_sno, department_id, first_name,salary,  sum(salary) over (partition by department_id order by salary) cummulative_salary from employees;
+------------+---------------+-------------+----------+--------------------+
| window_sno | department_id | first_name  | salary   | cummulative_salary |
+------------+---------------+-------------+----------+--------------------+
|          1 |          NULL | Kimberely   |  7000.00 |            7000.00 |
|          2 |            10 | Ram         |     NULL |               NULL |
|          1 |            10 | Jennifer    |  4400.00 |            4400.00 |
|          2 |            20 | Pat         |  6000.00 |            6000.00 |
|          1 |            20 | Michael     | 13000.00 |           19000.00 |
|          6 |            30 | Karen       |  2500.00 |            2500.00 |
|          5 |            30 | Guy         |  2600.00 |            5100.00 |
|          4 |            30 | Sigal       |  2800.00 |            7900.00 |
|          3 |            30 | Shelli      |  2900.00 |           10800.00 |
|          2 |            30 | Alexander   |  3100.00 |           13900.00 |
|          1 |            30 | Den         | 11000.00 |           24900.00 |
|          1 |            40 | Susan       |  6500.00 |            6500.00 |
|         13 |            50 | TJ          |  2100.00 |            2100.00 |
|          9 |            50 | Steven      |  2200.00 |            6500.00 |
|         17 |            50 | Hazel       |  2200.00 |            6500.00 |
|          8 |            50 | James       |  2400.00 |           11300.00 |
|         16 |            50 | Ki          |  2400.00 |           11300.00 |
|         12 |            50 | James       |  2500.00 |           23800.00 |
|         21 |            50 | Joshua      |  2500.00 |           23800.00 |
|         25 |            50 | Peter       |  2500.00 |           23800.00 |
|         28 |            50 | Martha      |  2500.00 |           23800.00 |
|         37 |            50 | Randall     |  2500.00 |           23800.00 |
|         24 |            50 | Randall     |  2600.00 |           31600.00 |
|         44 |            50 | Donald      |  2600.00 |           31600.00 |
|         45 |            50 | Douglas     |  2600.00 |           31600.00 |
|          7 |            50 | Irene       |  2700.00 |           37000.00 |
|         20 |            50 | John        |  2700.00 |           37000.00 |
|         11 |            50 | Mozhe       |  2800.00 |           45400.00 |
|         29 |            50 | Girard      |  2800.00 |           45400.00 |
|         41 |            50 | Vance       |  2800.00 |           45400.00 |
|         15 |            50 | Michael     |  2900.00 |           51200.00 |
|         36 |            50 | Timothy     |  2900.00 |           51200.00 |
|         33 |            50 | Anthony     |  3000.00 |           57200.00 |
|         43 |            50 | Kevin       |  3000.00 |           57200.00 |
|         23 |            50 | Curtis      |  3100.00 |           66500.00 |
|         27 |            50 | Jean        |  3100.00 |           66500.00 |
|         42 |            50 | Alana       |  3100.00 |           66500.00 |
|          6 |            50 | Julia       |  3200.00 |           79300.00 |
|         19 |            50 | Stephen     |  3200.00 |           79300.00 |
|         26 |            50 | Winston     |  3200.00 |           79300.00 |
|         40 |            50 | Samuel      |  3200.00 |           79300.00 |
|         10 |            50 | Laura       |  3300.00 |           85900.00 |
|         14 |            50 | Jason       |  3300.00 |           85900.00 |
|         32 |            50 | Julia       |  3400.00 |           89300.00 |
|         22 |            50 | Trenna      |  3500.00 |           92800.00 |
|         18 |            50 | Renske      |  3600.00 |          100000.00 |
|         35 |            50 | Jennifer    |  3600.00 |          100000.00 |
|         34 |            50 | Kelly       |  3800.00 |          103800.00 |
|         39 |            50 | Britney     |  3900.00 |          107700.00 |
|         38 |            50 | Sarah       |  4000.00 |          111700.00 |
|         31 |            50 | Alexis      |  4100.00 |          115800.00 |
|         30 |            50 | Nandita     |  4200.00 |          120000.00 |
|          5 |            50 | Kevin       |  5800.00 |          125800.00 |
|          4 |            50 | Shanta      |  6500.00 |          132300.00 |
|          3 |            50 | Payam       |  7900.00 |          140200.00 |
|          1 |            50 | Matthew     |  8000.00 |          148200.00 |
|          2 |            50 | Adam        |  8200.00 |          156400.00 |
|          5 |            60 | Diana       |  4200.00 |            4200.00 |
|          3 |            60 | David       |  4800.00 |           13800.00 |
|          4 |            60 | Valli       |  4800.00 |           13800.00 |
|          2 |            60 | Bruce       |  6000.00 |           19800.00 |
|          1 |            60 | Alexander   |  9000.00 |           28800.00 |
|          1 |            70 | Hermann     | 10000.00 |           10000.00 |
|         29 |            80 | Sundita     |  6100.00 |            6100.00 |
|         23 |            80 | Amit        |  6200.00 |           18500.00 |
|         34 |            80 | Charles     |  6200.00 |           18500.00 |
|         22 |            80 | Sundar      |  6400.00 |           24900.00 |
|         21 |            80 | David       |  6800.00 |           31700.00 |
|         11 |            80 | Oliver      |  7000.00 |           45700.00 |
|         17 |            80 | Sarath      |  7000.00 |           45700.00 |
|         20 |            80 | Mattea      |  7200.00 |           52900.00 |
|         28 |            80 | Elizabeth   |  7300.00 |           60200.00 |
|         27 |            80 | William     |  7400.00 |           67600.00 |
|         10 |            80 | Nanette     |  7500.00 |           82600.00 |
|         16 |            80 | Louise      |  7500.00 |           82600.00 |
|          9 |            80 | Christopher |  8000.00 |           98600.00 |
|         15 |            80 | Lindsey     |  8000.00 |           98600.00 |
|         33 |            80 | Jack        |  8400.00 |          107000.00 |
|         32 |            80 | Jonathon    |  8600.00 |          115600.00 |
|         31 |            80 | Alyssa      |  8800.00 |          124400.00 |
|          8 |            80 | Peter       |  9000.00 |          142400.00 |
|         14 |            80 | Allan       |  9000.00 |          142400.00 |
|          7 |            80 | David       |  9500.00 |          170900.00 |
|         13 |            80 | Patrick     |  9500.00 |          170900.00 |
|         19 |            80 | Danielle    |  9500.00 |          170900.00 |
|         26 |            80 | Tayler      |  9600.00 |          180500.00 |
|          6 |            80 | Peter       | 10000.00 |          210500.00 |
|         12 |            80 | Janette     | 10000.00 |          210500.00 |
|         25 |            80 | Harrison    | 10000.00 |          210500.00 |
|          5 |            80 | Eleni       | 10500.00 |          231500.00 |
|         18 |            80 | Clara       | 10500.00 |          231500.00 |
|          4 |            80 | Gerald      | 11000.00 |          253500.00 |
|         30 |            80 | Ellen       | 11000.00 |          253500.00 |
|         24 |            80 | Lisa        | 11500.00 |          265000.00 |
|          3 |            80 | Alberto     | 12000.00 |          277000.00 |
|          2 |            80 | Karen       | 13500.00 |          290500.00 |
|          1 |            80 | John        | 14000.00 |          304500.00 |
|          2 |            90 | Neena       | 17000.00 |           34000.00 |
|          3 |            90 | Lex         | 17000.00 |           34000.00 |
|          1 |            90 | Steven      | 24000.00 |           58000.00 |
|          6 |           100 | Luis        |  6900.00 |            6900.00 |
|          4 |           100 | Ismael      |  7700.00 |           14600.00 |
|          5 |           100 | Jose Manuel |  7800.00 |           22400.00 |
|          3 |           100 | John        |  8200.00 |           30600.00 |
|          2 |           100 | Daniel      |  9000.00 |           39600.00 |
|          1 |           100 | Nancy       | 12000.00 |           51600.00 |
|          2 |           110 | William     |  8300.00 |            8300.00 |
|          1 |           110 | Shelley     | 12000.00 |           20300.00 |
+------------+---------------+-------------+----------+--------------------+
108 rows in set (0.00 sec)

mysql> select first_name, salary, department_id, count(*) over(partition by department_id order by salary rows unbounded preceding) as rrun from employees;
+-------------+----------+---------------+------+
| first_name  | salary   | department_id | rrun |
+-------------+----------+---------------+------+
| Kimberely   |  7000.00 |          NULL |    1 |
| Ram         |     NULL |            10 |    1 |
| Jennifer    |  4400.00 |            10 |    2 |
| Pat         |  6000.00 |            20 |    1 |
| Michael     | 13000.00 |            20 |    2 |
| Karen       |  2500.00 |            30 |    1 |
| Guy         |  2600.00 |            30 |    2 |
| Sigal       |  2800.00 |            30 |    3 |
| Shelli      |  2900.00 |            30 |    4 |
| Alexander   |  3100.00 |            30 |    5 |
| Den         | 11000.00 |            30 |    6 |
| Susan       |  6500.00 |            40 |    1 |
| TJ          |  2100.00 |            50 |    1 |
| Steven      |  2200.00 |            50 |    2 |
| Hazel       |  2200.00 |            50 |    3 |
| James       |  2400.00 |            50 |    4 |
| Ki          |  2400.00 |            50 |    5 |
| James       |  2500.00 |            50 |    6 |
| Joshua      |  2500.00 |            50 |    7 |
| Peter       |  2500.00 |            50 |    8 |
| Martha      |  2500.00 |            50 |    9 |
| Randall     |  2500.00 |            50 |   10 |
| Randall     |  2600.00 |            50 |   11 |
| Donald      |  2600.00 |            50 |   12 |
| Douglas     |  2600.00 |            50 |   13 |
| Irene       |  2700.00 |            50 |   14 |
| John        |  2700.00 |            50 |   15 |
| Mozhe       |  2800.00 |            50 |   16 |
| Girard      |  2800.00 |            50 |   17 |
| Vance       |  2800.00 |            50 |   18 |
| Michael     |  2900.00 |            50 |   19 |
| Timothy     |  2900.00 |            50 |   20 |
| Anthony     |  3000.00 |            50 |   21 |
| Kevin       |  3000.00 |            50 |   22 |
| Curtis      |  3100.00 |            50 |   23 |
| Jean        |  3100.00 |            50 |   24 |
| Alana       |  3100.00 |            50 |   25 |
| Julia       |  3200.00 |            50 |   26 |
| Stephen     |  3200.00 |            50 |   27 |
| Winston     |  3200.00 |            50 |   28 |
| Samuel      |  3200.00 |            50 |   29 |
| Laura       |  3300.00 |            50 |   30 |
| Jason       |  3300.00 |            50 |   31 |
| Julia       |  3400.00 |            50 |   32 |
| Trenna      |  3500.00 |            50 |   33 |
| Renske      |  3600.00 |            50 |   34 |
| Jennifer    |  3600.00 |            50 |   35 |
| Kelly       |  3800.00 |            50 |   36 |
| Britney     |  3900.00 |            50 |   37 |
| Sarah       |  4000.00 |            50 |   38 |
| Alexis      |  4100.00 |            50 |   39 |
| Nandita     |  4200.00 |            50 |   40 |
| Kevin       |  5800.00 |            50 |   41 |
| Shanta      |  6500.00 |            50 |   42 |
| Payam       |  7900.00 |            50 |   43 |
| Matthew     |  8000.00 |            50 |   44 |
| Adam        |  8200.00 |            50 |   45 |
| Diana       |  4200.00 |            60 |    1 |
| David       |  4800.00 |            60 |    2 |
| Valli       |  4800.00 |            60 |    3 |
| Bruce       |  6000.00 |            60 |    4 |
| Alexander   |  9000.00 |            60 |    5 |
| Hermann     | 10000.00 |            70 |    1 |
| Sundita     |  6100.00 |            80 |    1 |
| Amit        |  6200.00 |            80 |    2 |
| Charles     |  6200.00 |            80 |    3 |
| Sundar      |  6400.00 |            80 |    4 |
| David       |  6800.00 |            80 |    5 |
| Oliver      |  7000.00 |            80 |    6 |
| Sarath      |  7000.00 |            80 |    7 |
| Mattea      |  7200.00 |            80 |    8 |
| Elizabeth   |  7300.00 |            80 |    9 |
| William     |  7400.00 |            80 |   10 |
| Nanette     |  7500.00 |            80 |   11 |
| Louise      |  7500.00 |            80 |   12 |
| Christopher |  8000.00 |            80 |   13 |
| Lindsey     |  8000.00 |            80 |   14 |
| Jack        |  8400.00 |            80 |   15 |
| Jonathon    |  8600.00 |            80 |   16 |
| Alyssa      |  8800.00 |            80 |   17 |
| Peter       |  9000.00 |            80 |   18 |
| Allan       |  9000.00 |            80 |   19 |
| David       |  9500.00 |            80 |   20 |
| Patrick     |  9500.00 |            80 |   21 |
| Danielle    |  9500.00 |            80 |   22 |
| Tayler      |  9600.00 |            80 |   23 |
| Peter       | 10000.00 |            80 |   24 |
| Janette     | 10000.00 |            80 |   25 |
| Harrison    | 10000.00 |            80 |   26 |
| Eleni       | 10500.00 |            80 |   27 |
| Clara       | 10500.00 |            80 |   28 |
| Gerald      | 11000.00 |            80 |   29 |
| Ellen       | 11000.00 |            80 |   30 |
| Lisa        | 11500.00 |            80 |   31 |
| Alberto     | 12000.00 |            80 |   32 |
| Karen       | 13500.00 |            80 |   33 |
| John        | 14000.00 |            80 |   34 |
| Neena       | 17000.00 |            90 |    1 |
| Lex         | 17000.00 |            90 |    2 |
| Steven      | 24000.00 |            90 |    3 |
| Luis        |  6900.00 |           100 |    1 |
| Ismael      |  7700.00 |           100 |    2 |
| Jose Manuel |  7800.00 |           100 |    3 |
| John        |  8200.00 |           100 |    4 |
| Daniel      |  9000.00 |           100 |    5 |
| Nancy       | 12000.00 |           100 |    6 |
| William     |  8300.00 |           110 |    1 |
| Shelley     | 12000.00 |           110 |    2 |
+-------------+----------+---------------+------+
108 rows in set (0.00 sec)

mysql> SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_NAME='student';
+-----------------+-----------------+
| CONSTRAINT_NAME | CONSTRAINT_TYPE |
+-----------------+-----------------+
| contact         | UNIQUE          |
| PRIMARY         | PRIMARY KEY     |
+-----------------+-----------------+
2 rows in set (0.01 sec)

mysql> create view stu_view as select * from student;
Query OK, 0 rows affected (0.02 sec)

mysql> select * from stu_view;
+------------+---------------+------------+------------+
| student_id | firstname     | contact    | address    |
+------------+---------------+------------+------------+
|          1 | Amir          | 9345983458 | SSM Hostel |
|          2 | Varun         | 9345       | SSM Hostel |
|          3 | YadhuKrishna  | 898443     | SSM Hostel |
|          4 | AnanduKrishna | 909743     | SSM Hostel |
|          5 | Jaga          | 934593     | SSM Hostel |
|          6 | Vishal        | 94353      | SSM Hostel |
|          7 | Hari          | 93434      | SSM Hostel |
|          8 | Siva          | 9345234    | SSM Hostel |
+------------+---------------+------------+------------+
8 rows in set (0.00 sec)

mysql> desc stu_view;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | NO   |     | NULL    |       |
| firstname  | varchar(30) | NO   |     | NULL    |       |
| contact    | varchar(10) | YES  |     | NULL    |       |
| address    | varchar(30) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into stu_view values(9,"Dinesh",9345902,"SSM Hostel");
Query OK, 1 row affected (0.00 sec)

mysql> select * from stu_view;
+------------+---------------+------------+------------+
| student_id | firstname     | contact    | address    |
+------------+---------------+------------+------------+
|          1 | Amir          | 9345983458 | SSM Hostel |
|          2 | Varun         | 9345       | SSM Hostel |
|          3 | YadhuKrishna  | 898443     | SSM Hostel |
|          4 | AnanduKrishna | 909743     | SSM Hostel |
|          5 | Jaga          | 934593     | SSM Hostel |
|          6 | Vishal        | 94353      | SSM Hostel |
|          7 | Hari          | 93434      | SSM Hostel |
|          8 | Siva          | 9345234    | SSM Hostel |
|          9 | Dinesh        | 9345902    | SSM Hostel |
+------------+---------------+------------+------------+
9 rows in set (0.00 sec)

mysql> select * from student;
+------------+---------------+------------+------------+
| student_id | firstname     | contact    | address    |
+------------+---------------+------------+------------+
|          1 | Amir          | 9345983458 | SSM Hostel |
|          2 | Varun         | 9345       | SSM Hostel |
|          3 | YadhuKrishna  | 898443     | SSM Hostel |
|          4 | AnanduKrishna | 909743     | SSM Hostel |
|          5 | Jaga          | 934593     | SSM Hostel |
|          6 | Vishal        | 94353      | SSM Hostel |
|          7 | Hari          | 93434      | SSM Hostel |
|          8 | Siva          | 9345234    | SSM Hostel |
|          9 | Dinesh        | 9345902    | SSM Hostel |
+------------+---------------+------------+------------+
9 rows in set (0.00 sec)

mysql> update stu_view set firstname="Viswa" where student_id=9;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> delete from stu_view where student_id=9;
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+------------+---------------+------------+------------+
| student_id | firstname     | contact    | address    |
+------------+---------------+------------+------------+
|          1 | Amir          | 9345983458 | SSM Hostel |
|          2 | Varun         | 9345       | SSM Hostel |
|          3 | YadhuKrishna  | 898443     | SSM Hostel |
|          4 | AnanduKrishna | 909743     | SSM Hostel |
|          5 | Jaga          | 934593     | SSM Hostel |
|          6 | Vishal        | 94353      | SSM Hostel |
|          7 | Hari          | 93434      | SSM Hostel |
|          8 | Siva          | 9345234    | SSM Hostel |
+------------+---------------+------------+------------+
8 rows in set (0.00 sec)

mysql> insert into exam values(4,2,12,34);
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+------------+---------------+------------+------------+
| student_id | firstname     | contact    | address    |
+------------+---------------+------------+------------+
|          1 | Amir          | 9345983458 | SSM Hostel |
|          3 | YadhuKrishna  | 898443     | SSM Hostel |
|          4 | AnanduKrishna | 909743     | SSM Hostel |
+------------+---------------+------------+------------+
3 rows in set (0.00 sec)

mysql> show create table student;
+---------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table   | Create Table                                                                                                                                                                                                                                                                                              |
+---------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| student | CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `contact` (`contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+---------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> show create table exam;
+-------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                                                                                                       |
+-------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| exam  | CREATE TABLE `exam` (
  `examno` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `sub1` int DEFAULT NULL,
  `sub2` int DEFAULT NULL,
  KEY `my_constraint1` (`student_id`),
  CONSTRAINT `my_constraint1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+-------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> set foreign_key_checks=1;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into student values(2,"Varun",89543,"SSM Hostel");
Query OK, 1 row affected (0.01 sec)

mysql> delete from student where student_id=2;
Query OK, 1 row affected (0.01 sec)

mysql> select * from exam;
+--------+------------+------+------+
| examno | student_id | sub1 | sub2 |
+--------+------------+------+------+
|      2 |          1 |   17 |   16 |
|      1 |          3 |   17 |   16 |
|      4 |          4 |   92 |   32 |
+--------+------------+------+------+
3 rows in set (0.00 sec)

mysql> create view stud_v2 as select * from student where student_id>300;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from students;
ERROR 1146 (42S02): Table 'varunm15t38hedu.students' doesn't exist
mysql> select * from stud_v2;
Empty set (0.00 sec)

mysql> select * from student;
+------------+---------------+------------+------------+
| student_id | firstname     | contact    | address    |
+------------+---------------+------------+------------+
|          1 | Amir          | 9345983458 | SSM Hostel |
|          2 | Varun         | 9345       | SSM Hostel |
|          3 | YadhuKrishna  | 898443     | SSM Hostel |
|          4 | AnanduKrishna | 909743     | SSM Hostel |
|          5 | Jaga          | 934593     | SSM Hostel |
|          6 | Vishal        | 94353      | SSM Hostel |
|          7 | Hari          | 93434      | SSM Hostel |
|          8 | Siva          | 9345234    | SSM Hostel |
+------------+---------------+------------+------------+
8 rows in set (0.00 sec)

mysql> insert into stu_view values(700,'Dinesh',82348238,"SSM Hostel");
Query OK, 1 row affected (0.01 sec)

mysql> select * from stu_view;
+------------+---------------+------------+------------+
| student_id | firstname     | contact    | address    |
+------------+---------------+------------+------------+
|          1 | Amir          | 9345983458 | SSM Hostel |
|          2 | Varun         | 9345       | SSM Hostel |
|          3 | YadhuKrishna  | 898443     | SSM Hostel |
|          4 | AnanduKrishna | 909743     | SSM Hostel |
|          5 | Jaga          | 934593     | SSM Hostel |
|          6 | Vishal        | 94353      | SSM Hostel |
|          7 | Hari          | 93434      | SSM Hostel |
|          8 | Siva          | 9345234    | SSM Hostel |
|        700 | Dinesh        | 82348238   | SSM Hostel |
+------------+---------------+------------+------------+
9 rows in set (0.01 sec)

mysql> select * from stud_v2;
+------------+-----------+----------+------------+
| student_id | firstname | contact  | address    |
+------------+-----------+----------+------------+
|        700 | Dinesh    | 82348238 | SSM Hostel |
+------------+-----------+----------+------------+
1 row in set (0.00 sec)

mysql> insert into stud_v1 values(50,'aditya',9234823,'Mumbai');
ERROR 1146 (42S02): Table 'varunm15t38hedu.stud_v1' doesn't exist
mysql> insert into stu_view values(50,'aditya',9234823,'Mumbai');
Query OK, 1 row affected (0.00 sec)

mysql> select * from stud_v2;
+------------+-----------+----------+------------+
| student_id | firstname | contact  | address    |
+------------+-----------+----------+------------+
|        700 | Dinesh    | 82348238 | SSM Hostel |
+------------+-----------+----------+------------+
1 row in set (0.00 sec)

mysql> select * from student;
+------------+---------------+------------+------------+
| student_id | firstname     | contact    | address    |
+------------+---------------+------------+------------+
|          1 | Amir          | 9345983458 | SSM Hostel |
|          2 | Varun         | 9345       | SSM Hostel |
|          3 | YadhuKrishna  | 898443     | SSM Hostel |
|          4 | AnanduKrishna | 909743     | SSM Hostel |
|          5 | Jaga          | 934593     | SSM Hostel |
|          6 | Vishal        | 94353      | SSM Hostel |
|          7 | Hari          | 93434      | SSM Hostel |
|          8 | Siva          | 9345234    | SSM Hostel |
|         50 | aditya        | 9234823    | Mumbai     |
|        700 | Dinesh        | 82348238   | SSM Hostel |
+------------+---------------+------------+------------+
10 rows in set (0.00 sec)

mysql> update stud_v1 set firstname = 'Sumit' where student_id=50;
-- ERROR 1146 (42S02): Table 'varunm15t38hedu.stud_v1' doesn't exist
mysql> update stu_view set firstname = 'Sumit' where student_id=50;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+------------+---------------+------------+------------+
| student_id | firstname     | contact    | address    |
+------------+---------------+------------+------------+
|          1 | Amir          | 9345983458 | SSM Hostel |
|          2 | Varun         | 9345       | SSM Hostel |
|          3 | YadhuKrishna  | 898443     | SSM Hostel |
|          4 | AnanduKrishna | 909743     | SSM Hostel |
|          5 | Jaga          | 934593     | SSM Hostel |
|          6 | Vishal        | 94353      | SSM Hostel |
|          7 | Hari          | 93434      | SSM Hostel |
|          8 | Siva          | 9345234    | SSM Hostel |
|         50 | Sumit         | 9234823    | Mumbai     |
|        700 | Dinesh        | 82348238   | SSM Hostel |
+------------+---------------+------------+------------+
10 rows in set (0.00 sec)

mysql> select * from stud_v2;
+------------+-----------+----------+------------+
| student_id | firstname | contact  | address    |
+------------+-----------+----------+------------+
|        700 | Dinesh    | 82348238 | SSM Hostel |
+------------+-----------+----------+------------+
1 row in set (0.00 sec)

mysql> delete from stu_view whee student student_id=50;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'student student_id=50' at line 1
mysql> delete from stu_view where student_id=50;
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+------------+---------------+------------+------------+
| student_id | firstname     | contact    | address    |
+------------+---------------+------------+------------+
|          1 | Amir          | 9345983458 | SSM Hostel |
|          2 | Varun         | 9345       | SSM Hostel |
|          3 | YadhuKrishna  | 898443     | SSM Hostel |
|          4 | AnanduKrishna | 909743     | SSM Hostel |
|          5 | Jaga          | 934593     | SSM Hostel |
|          6 | Vishal        | 94353      | SSM Hostel |
|          7 | Hari          | 93434      | SSM Hostel |
|          8 | Siva          | 9345234    | SSM Hostel |
|        700 | Dinesh        | 82348238   | SSM Hostel |
+------------+---------------+------------+------------+
9 rows in set (0.00 sec)

mysql> select * from stu_view;;
+------------+---------------+------------+------------+
| student_id | firstname     | contact    | address    |
+------------+---------------+------------+------------+
|          1 | Amir          | 9345983458 | SSM Hostel |
|          2 | Varun         | 9345       | SSM Hostel |
|          3 | YadhuKrishna  | 898443     | SSM Hostel |
|          4 | AnanduKrishna | 909743     | SSM Hostel |
|          5 | Jaga          | 934593     | SSM Hostel |
|          6 | Vishal        | 94353      | SSM Hostel |
|          7 | Hari          | 93434      | SSM Hostel |
|          8 | Siva          | 9345234    | SSM Hostel |
|        700 | Dinesh        | 82348238   | SSM Hostel |
+------------+---------------+------------+------------+
9 rows in set (0.00 sec)

ERROR: 
No query specified

mysql> select * from stu_view;
+------------+---------------+------------+------------+
| student_id | firstname     | contact    | address    |
+------------+---------------+------------+------------+
|          1 | Amir          | 9345983458 | SSM Hostel |
|          2 | Varun         | 9345       | SSM Hostel |
|          3 | YadhuKrishna  | 898443     | SSM Hostel |
|          4 | AnanduKrishna | 909743     | SSM Hostel |
|          5 | Jaga          | 934593     | SSM Hostel |
|          6 | Vishal        | 94353      | SSM Hostel |
|          7 | Hari          | 93434      | SSM Hostel |
|          8 | Siva          | 9345234    | SSM Hostel |
|        700 | Dinesh        | 82348238   | SSM Hostel |
+------------+---------------+------------+------------+
9 rows in set (0.00 sec)

mysql> create or replace view stud_v3 as
    -> select firstname, contact, address from student where student_id>300;
Query OK, 0 rows affected (0.02 sec)

mysql> insert into stud_v3 values(400, "Finesh", 8432982, "SSM Hostel");
-- ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into stud_v3(student_id, firstname, contact, address) values(400, "Finesh", 8432982, "SSM Hostel");
-- ERROR 1054 (42S22): Unknown column 'student_id' in 'field list'

mysql> create view stud_v5 as
    -> select s.student_id, s.firstname, s.address, s.contact,e.examno, e.sub1, e.sub2  from student s join exam e on s.student_id=e.student_id;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from stud_v5;
+------------+---------------+------------+------------+--------+------+------+
| student_id | firstname     | address    | contact    | examno | sub1 | sub2 |
+------------+---------------+------------+------------+--------+------+------+
|          1 | Amir          | SSM Hostel | 9345983458 |      2 |   17 |   16 |
|          3 | YadhuKrishna  | SSM Hostel | 898443     |      1 |   17 |   16 |
|          4 | AnanduKrishna | SSM Hostel | 909743     |      4 |   92 |   32 |
+------------+---------------+------------+------------+--------+------+------+
3 rows in set (0.00 sec)

mysql> insert into stud_v5 values(78,'lax','Mum',873743743,12,83,84);
-- ERROR 1394 (HY000): Can not insert into join view 'varunm15t38hedu.stud_v5' without fields list

mysql> explain analyze select * from employees where employee_id=900;
+--------------------------------------------------------------------------------------------------+
| EXPLAIN                                                                                          |
+--------------------------------------------------------------------------------------------------+
| -> Rows fetched before execution  (cost=0..0 rows=1) (actual time=90e-6..150e-6 rows=1 loops=1)
 |
+--------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> show indexes from employees;
+-----------+------------+-------------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table     | Non_unique | Key_name          | Seq_in_index | Column_name   | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+-----------+------------+-------------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| employees |          0 | PRIMARY           |            1 | employee_id   | A         |         108 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| employees |          0 | emp_emp_id_pk     |            1 | employee_id   | A         |         108 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| employees |          1 | emp_department_ix |            1 | department_id | A         |          12 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| employees |          1 | emp_job_ix        |            1 | job_id        | A         |          19 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| employees |          1 | emp_manager_ix    |            1 | manager_id    | A         |          19 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| employees |          1 | emp_name_ix       |            1 | last_name     | A         |         103 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| employees |          1 | emp_name_ix       |            2 | first_name    | A         |         108 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+-----------+------------+-------------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
7 rows in set (0.01 sec)

mysql> explain analyze select * from employees;
+-----------------------------------------------------------------------------------------------+
| EXPLAIN                                                                                       |
+-----------------------------------------------------------------------------------------------+
| -> Table scan on employees  (cost=11.1 rows=108) (actual time=0.101..0.141 rows=108 loops=1)
 |
+-----------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> explain analyze select * from employees where employee_id=158;
+---------------------------------------------------------------------------------------------------+
| EXPLAIN                                                                                           |
+---------------------------------------------------------------------------------------------------+
| -> Rows fetched before execution  (cost=0..0 rows=1) (actual time=130e-6..180e-6 rows=1 loops=1)
 |
+---------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> show indexes from student;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| student |          0 | PRIMARY  |            1 | student_id  | A         |           9 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| student |          0 | contact  |            1 | contact     | A         |           9 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
2 rows in set (0.01 sec)

mysql> select * from student where student_id>50;
+------------+-----------+----------+------------+
| student_id | firstname | contact  | address    |
+------------+-----------+----------+------------+
|        700 | Dinesh    | 82348238 | SSM Hostel |
+------------+-----------+----------+------------+
1 row in set (0.00 sec)

mysql> explain select * from student where student_id>50;
+----+-------------+---------+------------+-------+---------------+---------+---------+------+------+----------+-------------+
| id | select_type | table   | partitions | type  | possible_keys | key     | key_len | ref  | rows | filtered | Extra       |
+----+-------------+---------+------------+-------+---------------+---------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | student | NULL       | range | PRIMARY       | PRIMARY | 4       | NULL |    1 |   100.00 | Using where |
+----+-------------+---------+------------+-------+---------------+---------+---------+------+------+----------+-------------+
1 row in set, 1 warning (0.00 sec)

mysql> alter table student drop index `primary`;
Query OK, 9 rows affected (0.12 sec)
Records: 9  Duplicates: 0  Warnings: 0

mysql> create table Items(
    -> Itemid decimal(10,2),
    -> descri varchar(30),
    -> details JSON);
Query OK, 0 rows affected (0.04 sec)

mysql> desc Items;
+---------+---------------+------+-----+---------+-------+
| Field   | Type          | Null | Key | Default | Extra |
+---------+---------------+------+-----+---------+-------+
| Itemid  | decimal(10,2) | YES  |     | NULL    |       |
| descri  | varchar(30)   | YES  |     | NULL    |       |
| details | json          | YES  |     | NULL    |       |
+---------+---------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into Items value(100.6,"Pen1",'{"Author":"JK Rowlong","Price":2001}'),(100.7,"Pen2",'{"Author":"ksksdl","Price":3001}')
    -> ,(100.8,"Pen3",'{"Author":"sdfsdws","Price":4001}'),(100.9,"Pen4",'{"Author":"ioufwwjhfd","Price":5000}');
Query OK, 4 rows affected (0.00 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from Items;
+--------+--------+-----------------------------------------+
| Itemid | descri | details                                 |
+--------+--------+-----------------------------------------+
| 100.50 | Pen    | {"Price": 200, "Author": "Kipling"}     |
| 100.60 | Pen1   | {"Price": 2001, "Author": "JK Rowlong"} |
| 100.70 | Pen2   | {"Price": 3001, "Author": "ksksdl"}     |
| 100.80 | Pen3   | {"Price": 4001, "Author": "sdfsdws"}    |
| 100.90 | Pen4   | {"Price": 5000, "Author": "ioufwwjhfd"} |
+--------+--------+-----------------------------------------+
5 rows in set (0.00 sec)

mysql> select Itemid, details ->'$.Price' as price from Items where details ->'$.Price'>200;
+--------+-------+
| Itemid | price |
+--------+-------+
| 100.60 | 2001  |
| 100.70 | 3001  |
| 100.80 | 4001  |
| 100.90 | 5000  |
+--------+-------+
4 rows in set (0.00 sec)

mysql> insert into Items value(100.5,"Pen",'{"Author":"Kipling","Price":200}');
Query OK, 1 row affected (0.01 sec)

select details ->'$.Price',count(details ->'$.Price') price_count  from Items group by details ->'$.Price';
+---------------------+-------------+
| details ->'$.Price' | price_count |
+---------------------+-------------+
| 200                 |           1 |
| 2001                |           1 |
| 3001                |           1 |
| 4001                |           1 |
| 5000                |           1 |
+---------------------+-------------+
5 rows in set (0.00 sec)

mysql> update Items set details = JSON_SET(details,"$.Price",399) where Itemid=100.6;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select Itemid, details ->'$.Price' as price from Items where details ->'$.Price'>200;
+--------+-------+
| Itemid | price |
+--------+-------+
| 100.60 | 399   |
| 100.70 | 3001  |
| 100.80 | 4001  |
| 100.90 | 5000  |
+--------+-------+
4 rows in set (0.00 sec)

mysql> select @@version;
+-------------------------+
| @@version               |
+-------------------------+
| 8.0.39-0ubuntu0.20.04.1 |
+-------------------------+
1 row in set (0.00 sec)

mysql> create table emppartition1(
    -> employee_id int,
    -> first_name varchar(40),
    -> department_id int
    -> )
    -> PARTITION BY HASH(department_id) PARTITIONS 4;
Query OK, 0 rows affected (0.13 sec)

mysql> DESC emppartition1;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | YES  |     | NULL    |       |
| first_name    | varchar(40) | YES  |     | NULL    |       |
| department_id | int         | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into emppartition1 select employee_id, first_name, department_id from employees;
Query OK, 108 rows affected (0.01 sec)
Records: 108  Duplicates: 0  Warnings: 0

mysql> select * from emppartition1;
+-------------+-------------+---------------+
| employee_id | first_name  | department_id |
+-------------+-------------+---------------+
|         103 | Alexander   |            60 |
|         104 | Bruce       |            60 |
|         105 | David       |            60 |
|         106 | Valli       |            60 |
|         107 | Diana       |            60 |
|         108 | Nancy       |           100 |
|         109 | Daniel      |           100 |
|         110 | John        |           100 |
|         111 | Ismael      |           100 |
|         112 | Jose Manuel |           100 |
|         113 | Luis        |           100 |
|         145 | John        |            80 |
|         146 | Karen       |            80 |
|         147 | Alberto     |            80 |
|         148 | Gerald      |            80 |
|         149 | Eleni       |            80 |
|         150 | Peter       |            80 |
|         151 | David       |            80 |
|         152 | Peter       |            80 |
|         153 | Christopher |            80 |
|         154 | Nanette     |            80 |
|         155 | Oliver      |            80 |
|         156 | Janette     |            80 |
|         157 | Patrick     |            80 |
|         158 | Allan       |            80 |
|         159 | Lindsey     |            80 |
|         160 | Louise      |            80 |
|         161 | Sarath      |            80 |
|         162 | Clara       |            80 |
|         163 | Danielle    |            80 |
|         164 | Mattea      |            80 |
|         165 | David       |            80 |
|         166 | Sundar      |            80 |
|         167 | Amit        |            80 |
|         168 | Lisa        |            80 |
|         169 | Harrison    |            80 |
|         170 | Tayler      |            80 |
|         171 | William     |            80 |
|         172 | Elizabeth   |            80 |
|         173 | Sundita     |            80 |
|         174 | Ellen       |            80 |
|         175 | Alyssa      |            80 |
|         176 | Jonathon    |            80 |
|         177 | Jack        |            80 |
|         178 | Kimberely   |          NULL |
|         179 | Charles     |            80 |
|         201 | Michael     |            20 |
|         202 | Pat         |            20 |
|         203 | Susan       |            40 |
|         100 | Steven      |            90 |
|         101 | Neena       |            90 |
|         102 | Lex         |            90 |
|         114 | Den         |            30 |
|         115 | Alexander   |            30 |
|         116 | Shelli      |            30 |
|         117 | Sigal       |            30 |
|         118 | Guy         |            30 |
|         119 | Karen       |            30 |
|         120 | Matthew     |            50 |
|         121 | Adam        |            50 |
|         122 | Payam       |            50 |
|         123 | Shanta      |            50 |
|         124 | Kevin       |            50 |
|         125 | Julia       |            50 |
|         126 | Irene       |            50 |
|         127 | James       |            50 |
|         128 | Steven      |            50 |
|         129 | Laura       |            50 |
|         130 | Mozhe       |            50 |
|         131 | James       |            50 |
|         132 | TJ          |            50 |
|         133 | Jason       |            50 |
|         134 | Michael     |            50 |
|         135 | Ki          |            50 |
|         136 | Hazel       |            50 |
|         137 | Renske      |            50 |
|         138 | Stephen     |            50 |
|         139 | John        |            50 |
|         140 | Joshua      |            50 |
|         141 | Trenna      |            50 |
|         142 | Curtis      |            50 |
|         143 | Randall     |            50 |
|         144 | Peter       |            50 |
|         180 | Winston     |            50 |
|         181 | Jean        |            50 |
|         182 | Martha      |            50 |
|         183 | Girard      |            50 |
|         184 | Nandita     |            50 |
|         185 | Alexis      |            50 |
|         186 | Julia       |            50 |
|         187 | Anthony     |            50 |
|         188 | Kelly       |            50 |
|         189 | Jennifer    |            50 |
|         190 | Timothy     |            50 |
|         191 | Randall     |            50 |
|         192 | Sarah       |            50 |
|         193 | Britney     |            50 |
|         194 | Samuel      |            50 |
|         195 | Vance       |            50 |
|         196 | Alana       |            50 |
|         197 | Kevin       |            50 |
|         198 | Donald      |            50 |
|         199 | Douglas     |            50 |
|         200 | Jennifer    |            10 |
|         204 | Hermann     |            70 |
|         205 | Shelley     |           110 |
|         206 | William     |           110 |
|         900 | Ram         |            10 |
+-------------+-------------+---------------+
108 rows in set (0.00 sec)

mysql> explain select * from emppartition1;
+----+-------------+---------------+-------------+------+---------------+------+---------+------+------+----------+-------+
| id | select_type | table         | partitions  | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra |
+----+-------------+---------------+-------------+------+---------------+------+---------+------+------+----------+-------+
|  1 | SIMPLE      | emppartition1 | p0,p1,p2,p3 | ALL  | NULL          | NULL | NULL    | NULL |  108 |   100.00 | NULL  |
+----+-------------+---------------+-------------+------+---------------+------+---------+------+------+----------+-------+
1 row in set, 1 warning (0.00 sec)

mysql> select partition_name from information_schema.partitions where table_name="emppartition1";
+----------------+
| PARTITION_NAME |
+----------------+
| p0             |
| p1             |
| p2             |
| p3             |
+----------------+
4 rows in set (0.00 sec)

mysql> create table empPartitionKey( empid int, firstname varchar(40), dept_id int)
    -> PARTITION BY KEY(dept_id) PARTITIONS 5;
Query OK, 0 rows affected (0.16 sec)

mysql> insert into empPartitionKey select employee_id, first_name, de
delimiter                    department_name              departments.department_id    departments.location_id     
department_id                departments                  departments.department_name  departments.manager_id      
mysql> insert into empPartitionKey select employee_id, first_name, department_id from employees;
Query OK, 108 rows affected (0.01 sec)
Records: 108  Duplicates: 0  Warnings: 0

mysql> select table_rows, avg_row_length, data_length from information_schema.partitions where table_name="empPartitionKey";
+------------+----------------+-------------+
| TABLE_ROWS | AVG_ROW_LENGTH | DATA_LENGTH |
+------------+----------------+-------------+
|          0 |              0 |       16384 |
|        101 |            162 |       16384 |
|          1 |          16384 |       16384 |
|          0 |              0 |       16384 |
|          6 |           2730 |       16384 |
+------------+----------------+-------------+
5 rows in set (0.01 sec)

mysql> create table empPartitionRange(
    -> empid int,
    -> first varchar(40),
    -> deptno int,
    -> hiredate date)
    -> partition by range(Year(hire_date))
    -> (
    -> Partition p0 values less than (1980),
    -> partition p1 values less than (2000),
    -> partition p2 values less than (2010),
    -> partition p3 values less than (2025));
    
mysql> insert into empPartitionRange select employee_id, first_name, department_id,hire_date from employees;
Query OK, 108 rows affected (0.02 sec)
Records: 108  Duplicates: 0  Warnings: 0

mysql> select table_rows, avg_row_length, data_length from information_schema.partitions where table_name="empPartitionKey";
+------------+----------------+-------------+
| TABLE_ROWS | AVG_ROW_LENGTH | DATA_LENGTH |
+------------+----------------+-------------+
|          0 |              0 |       16384 |
|        101 |            162 |       16384 |
|          1 |          16384 |       16384 |
|          0 |              0 |       16384 |
|          6 |           2730 |       16384 |
+------------+----------------+-------------+
5 rows in set (0.01 sec)

mysql> select table_rows, avg_row_length, data_length from information_schema.partitions where table_name="empPartitionRange";
+------------+----------------+-------------+
| TABLE_ROWS | AVG_ROW_LENGTH | DATA_LENGTH |
+------------+----------------+-------------+
|          1 |          16384 |       16384 |
|         96 |            170 |       16384 |
|         11 |           1489 |       16384 |
|          0 |              0 |       16384 |
+------------+----------------+-------------+
4 rows in set (0.01 sec)