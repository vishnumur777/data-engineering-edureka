
| last_name      | varchar(25)  | YES  | MUL | NULL    |       |                                                                                              
| email          | varchar(25)  | YES  |     | NULL    |       |                                                                                              
| phone_number   | varchar(20)  | YES  |     | NULL    |       |                                                                                              
| hire_date      | date         | YES  |     | NULL    |       |                                                                                              
| job_id         | varchar(10)  | YES  | MUL | NULL    |       |                                                                                              
| salary         | decimal(8,2) | YES  |     | NULL    |       |                                                                                              
| commission_pct | decimal(2,2) | YES  |     | NULL    |       |                                                                                              
| manager_id     | int          | YES  | MUL | NULL    |       |                                                                                              
| department_id  | int          | YES  | MUL | NULL    |       |                                                                                              
+----------------+--------------+------+-----+---------+-------+                                                                                              
11 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select first_name,salary,department_id from employees wheere not commission_pct;                                                                       
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'not
 commission_pct' at line 1                                                                                                                                    
mysql> select first_name,salary,department_id from employees where not commission_pct;                                                                        
Empty set (0.00 sec)                                                                                                                                          
                                                                                                                                                              
mysql> select first_name,salary,department_id from employees where commission_pct not null;                                                                   
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'nul
l' at line 1                                                                                                                                                  
mysql> select first_name,salary,department_id from employees where commission_pct is null;                                                                    
+-------------+----------+---------------+                                                                                                                    
| first_name  | salary   | department_id |                                                                                                                    
+-------------+----------+---------------+                                                                                                                    
| Steven      | 24000.00 |            90 |                                                                                                                    
| Neena       | 17000.00 |            90 |                                                                                                                    
| Lex         | 17000.00 |            90 |                                                                                                                    
| Alexander   |  9000.00 |            60 |                                                                                                                    
| Bruce       |  6000.00 |            60 |                                                                                                                    
| David       |  4800.00 |            60 |                                                                                                                    
| Valli       |  4800.00 |            60 |                                                                                                                    
| Diana       |  4200.00 |            60 |                                                                                                                    
| Nancy       | 12000.00 |           100 |                                                                                                                    
| Daniel      |  9000.00 |           100 |                                                                                                                    
| John        |  8200.00 |           100 |                                                                                                                    
| Ismael      |  7700.00 |           100 |                                                                                                                    
| Jose Manuel |  7800.00 |           100 |                                                                                                                    
| Luis        |  6900.00 |           100 |                                                                                                                    
| Den         | 11000.00 |            30 |                                                                                                                    
| Alexander   |  3100.00 |            30 |                                                                                                                    
| Shelli      |  2900.00 |            30 |                                                                                                                    
| Sigal       |  2800.00 |            30 |                                                                                                                    
| Guy         |  2600.00 |            30 |                                                                                                                    
| Karen       |  2500.00 |            30 |                                                                                                                    
| Matthew     |  8000.00 |            50 |                                                                                                                    
| Adam        |  8200.00 |            50 |                                                                                                                    
| Payam       |  7900.00 |            50 |                                                                                                                    
| Shanta      |  6500.00 |            50 |                                                                                                                    
| Kevin       |  5800.00 |            50 |                                                                                                                    
| Julia       |  3200.00 |            50 |                                                                                                                    
| Irene       |  2700.00 |            50 |                                                                                                                    
| James       |  2400.00 |            50 |                                                                                                                    
| Steven      |  2200.00 |            50 |                                                                                                                    
| Laura       |  3300.00 |            50 |                                                                                                                    
| Mozhe       |  2800.00 |            50 |                                                                                                                    
| James       |  2500.00 |            50 |                                                                                                                    
| TJ          |  2100.00 |            50 |                                                                                                                    
| Jason       |  3300.00 |            50 |                                                                                                                    
| Michael     |  2900.00 |            50 |                                                                                                                    
| Ki          |  2400.00 |            50 |                                                                                                                    
| Hazel       |  2200.00 |            50 |                                                                                                                    
| Renske      |  3600.00 |            50 |                                                                                                                    
| Stephen     |  3200.00 |            50 |                                                                                                                    
| John        |  2700.00 |            50 |                                                                                                                    
| Joshua      |  2500.00 |            50 |                                                                                                                    
| Trenna      |  3500.00 |            50 |                                                                                                                    
| Curtis      |  3100.00 |            50 |                                                                                                                    
| Randall     |  2600.00 |            50 |                                                                                                                    
| Peter       |  2500.00 |            50 |                                                                                                                    
| Winston     |  3200.00 |            50 |                                                                                                                    
| Jean        |  3100.00 |            50 |                                                                                                                    
| Martha      |  2500.00 |            50 |                                                                                                                    
| Girard      |  2800.00 |            50 |                                                                                                                    
| Nandita     |  4200.00 |            50 |                                                                                                                    
| Alexis      |  4100.00 |            50 |                                                                                                                    
| Julia       |  3400.00 |            50 |                                                                                                                    
| Anthony     |  3000.00 |            50 |                                                                                                                    
| Kelly       |  3800.00 |            50 |                                                                                                                    
| Jennifer    |  3600.00 |            50 |                                                                                                                    
| Timothy     |  2900.00 |            50 |                                                                                                                    
| Randall     |  2500.00 |            50 |                                                                                                                    
| Sarah       |  4000.00 |            50 |                                                                                                                    
| Britney     |  3900.00 |            50 |                                                                                                                    
| Samuel      |  3200.00 |            50 |                                                                                                                    
| Vance       |  2800.00 |            50 |                                                                                                                    
| Alana       |  3100.00 |            50 |                                                                                                                    
| Kevin       |  3000.00 |            50 |                                                                                                                    
| Donald      |  2600.00 |            50 |                                                                                                                    
| Douglas     |  2600.00 |            50 |                                                                                                                    
| Jennifer    |  4400.00 |            10 |                                                                                                                    
| Michael     | 13000.00 |            20 |                                                                                                                    
| Pat         |  6000.00 |            20 |                                                                                                                    
| Susan       |  6500.00 |            40 |                                                                                                                    
| Hermann     | 10000.00 |            70 |                                                                                                                    
| Shelley     | 12000.00 |           110 |                                                                                                                    
| William     |  8300.00 |           110 |                                                                                                                    
| Ram         |     NULL |            10 |                                                                                                                    
+-------------+----------+---------------+                                                                                                                    
73 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select first_name,salary,department_id from employees where department-id is null;                                                                     
ERROR 1054 (42S22): Unknown column 'department' in 'where clause'                                                                                             
mysql> select first_name,salary,department_id from employees where department_id is null;                                                                     
+------------+---------+---------------+                                                                                                                      
| first_name | salary  | department_id |                                                                                                                      
+------------+---------+---------------+                                                                                                                      
| Kimberely  | 7000.00 |          NULL |                                                                                                                      
+------------+---------+---------------+                                                                                                                      
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select first_name,salary,department_id from employees where manager_id is null;                                                                        
+------------+----------+---------------+                                                                                                                     
| first_name | salary   | department_id |                                                                                                                     
+------------+----------+---------------+                                                                                                                     
| Steven     | 24000.00 |            90 |                                                                                                                     
| Ram        |     NULL |            10 |                                                                                                                     
+------------+----------+---------------+                                                                                                                     
2 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql>                                                                                                                                                        
mysql>                                                                                                                                                        
mysql> desc employees;                                                                                                                                        
+----------------+--------------+------+-----+---------+-------+                                                                                              
| Field          | Type         | Null | Key | Default | Extra |                                                                                              
+----------------+--------------+------+-----+---------+-------+                                                                                              
| employee_id    | int          | NO   | PRI | NULL    |       |                                                                                              
| first_name     | varchar(20)  | YES  |     | NULL    |       |                                                                                              
| last_name      | varchar(25)  | YES  | MUL | NULL    |       |                                                                                              
| email          | varchar(25)  | YES  |     | NULL    |       |                                                                                              
| phone_number   | varchar(20)  | YES  |     | NULL    |       |                                                                                              
| hire_date      | date         | YES  |     | NULL    |       |                                                                                              
| job_id         | varchar(10)  | YES  | MUL | NULL    |       |                                                                                              
| salary         | decimal(8,2) | YES  |     | NULL    |       |                                                                                              
| commission_pct | decimal(2,2) | YES  |     | NULL    |       |                                                                                              
| manager_id     | int          | YES  | MUL | NULL    |       |                                                                                              
| department_id  | int          | YES  | MUL | NULL    |       |                                                                                              
+----------------+--------------+------+-----+---------+-------+                                                                                              
11 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select count(*) from employees group by job_id;                                                                                                        
+----------+                                                                                                                                                  
| count(*) |                                                                                                                                                  
+----------+                                                                                                                                                  
|        1 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        5 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        5 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        5 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        5 |                                                                                                                                                  
|       30 |                                                                                                                                                  
|       20 |                                                                                                                                                  
|       20 |                                                                                                                                                  
|        5 |                                                                                                                                                  
+----------+                                                                                                                                                  
19 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select job_id,count(*) from employees group by job_id;                                                                                                 
+------------+----------+                                                                                                                                     
| job_id     | count(*) |                                                                                                                                     
+------------+----------+                                                                                                                                     
| AC_ACCOUNT |        1 |                                                                                                                                     
| AC_MGR     |        2 |                                                                                                                                     
| AD_ASST    |        1 |                                                                                                                                     
| AD_PRES    |        1 |                                                                                                                                     
| AD_VP      |        2 |                                                                                                                                     
| FI_ACCOUNT |        5 |                                                                                                                                     
| FI_MGR     |        1 |                                                                                                                                     
| HR_REP     |        1 |                                                                                                                                     
| IT_PROG    |        5 |                                                                                                                                     
| MK_MAN     |        1 |                                                                                                                                     
| MK_REP     |        1 |                                                                                                                                     
| PR_REP     |        1 |                                                                                                                                     
| PU_CLERK   |        5 |                                                                                                                                     
| PU_MAN     |        1 |                                                                                                                                     
| SA_MAN     |        5 |                                                                                                                                     
| SA_REP     |       30 |                                                                                                                                     
| SH_CLERK   |       20 |                                                                                                                                     
| ST_CLERK   |       20 |                                                                                                                                     
| ST_MAN     |        5 |                                                                                                                                     
+------------+----------+                                                                                                                                     
19 rows in set (0.01 sec)                                                                                                                                     
                                                                                                                                                              
mysql>                                                                                                                                                        
mysql> select job_id,count(*) from employees group by manager_id;                                                                                             
ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'shyleshar86medu.employees.job_id' which is not f
unctionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by                                                    
mysql> select job_id,count(*) from employees group by department_id;                                                                                          
ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'shyleshar86medu.employees.job_id' which is not f
unctionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by                                                    
mysql> select count(*) from employees group by department_id;                                                                                                 
+----------+                                                                                                                                                  
| count(*) |                                                                                                                                                  
+----------+                                                                                                                                                  
|        1 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        6 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|       45 |                                                                                                                                                  
|        5 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|       34 |                                                                                                                                                  
|        3 |                                                                                                                                                  
|        6 |                                                                                                                                                  
|        2 |                                                                                                                                                  
+----------+                                                                                                                                                  
12 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select department_id, count(*) from employees group by department_id;                                                                                  
+---------------+----------+                                                                                                                                  
| department_id | count(*) |                                                                                                                                  
+---------------+----------+                                                                                                                                  
|          NULL |        1 |                                                                                                                                  
|            10 |        2 |                                                                                                                                  
|            20 |        2 |                                                                                                                                  
|            30 |        6 |                                                                                                                                  
|            40 |        1 |                                                                                                                                  
|            50 |       45 |                                                                                                                                  
|            60 |        5 |                                                                                                                                  
|            70 |        1 |                                                                                                                                  
|            80 |       34 |                                                                                                                                  
|            90 |        3 |                                                                                                                                  
|           100 |        6 |                                                                                                                                  
|           110 |        2 |                                                                                                                                  
+---------------+----------+                                                                                                                                  
12 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> show tables;                                                                                                                                           
+---------------------------+                                                                                                                                 
| Tables_in_shyleshar86medu |                                                                                                                                 
+---------------------------+                                                                                                                                 
| countries                 |                                                                                                                                 
| departments               |                                                                                                                                 
| employees                 |                                                                                                                                 
| job_history               |                                                                                                                                 
| jobs                      |                                                                                                                                 
| locations                 |                                                                                                                                 
| regions                   |                                                                                                                                 
+---------------------------+                                                                                                                                 
7 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select department_id, count(*) from employees group by salary;                                                                                         
ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'shyleshar86medu.employees.department_id' which i
s not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by                                             
mysql> select count(*) from employees group by salary;                                                                                                        
+----------+                                                                                                                                                  
| count(*) |                                                                                                                                                  
+----------+                                                                                                                                                  
|        1 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        4 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        3 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        3 |                                                                                                                                                  
|        4 |                                                                                                                                                  
|        3 |                                                                                                                                                  
|        4 |                                                                                                                                                  
|        4 |                                                                                                                                                  
|        6 |                                                                                                                                                  
|        3 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        4 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        4 |                                                                                                                                                  
|        3 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        3 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
+----------+                                                                                                                                                  
58 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select max(salary) from employees group by salary;                                                                                                     
+-------------+                                                                                                                                               
| max(salary) |                                                                                                                                               
+-------------+                                                                                                                                               
|    24000.00 |                                                                                                                                               
|    17000.00 |                                                                                                                                               
|     9000.00 |                                                                                                                                               
|     6000.00 |                                                                                                                                               
|     4800.00 |                                                                                                                                               
|     4200.00 |                                                                                                                                               
|    12000.00 |                                                                                                                                               
|     8200.00 |                                                                                                                                               
|     7700.00 |                                                                                                                                               
|     7800.00 |                                                                                                                                               
|     6900.00 |                                                                                                                                               
|    11000.00 |                                                                                                                                               
|     3100.00 |                                                                                                                                               
|     2900.00 |                                                                                                                                               
|     2800.00 |                                                                                                                                               
|     2600.00 |                                                                                                                                               
|     2500.00 |                                                                                                                                               
|     8000.00 |                                                                                                                                               
|     7900.00 |                                                                                                                                               
|     6500.00 |                                                                                                                                               
|     5800.00 |                                                                                                                                               
|     3200.00 |                                                                                                                                               
|     2700.00 |                                                                                                                                               
|     2400.00 |                                                                                                                                               
|     2200.00 |                                                                                                                                               
|     3300.00 |                                                                                                                                               
|     2100.00 |                                                                                                                                               
|     3600.00 |                                                                                                                                               
|     3500.00 |                                                                                                                                               
|    14000.00 |                                                                                                                                               
|    13500.00 |                                                                                                                                               
|    10500.00 |                                                                                                                                               
|    10000.00 |                                                                                                                                               
|     9500.00 |                                                                                                                                               
|     7500.00 |                                                                                                                                               
|     7000.00 |                                                                                                                                               
|     7200.00 |                                                                                                                                               
|     6800.00 |                                                                                                                                               
|     6400.00 |                                                                                                                                               
|     6200.00 |                                                                                                                                               
|    11500.00 |                                                                                                                                               
|     9600.00 |                                                                                                                                               
|     7400.00 |                                                                                                                                               
|     7300.00 |                                                                                                                                               
|     6100.00 |                                                                                                                                               
|     8800.00 |                                                                                                                                               
|     8600.00 |                                                                                                                                               
|     8400.00 |                                                                                                                                               
|     4100.00 |                                                                                                                                               
|     3400.00 |                                                                                                                                               
|     3000.00 |                                                                                                                                               
|     3800.00 |                                                                                                                                               
|     4000.00 |                                                                                                                                               
|     3900.00 |                                                                                                                                               
|     4400.00 |                                                                                                                                               
|    13000.00 |                                                                                                                                               
|     8300.00 |                                                                                                                                               
|        NULL |                                                                                                                                               
+-------------+                                                                                                                                               
58 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select max(salary) from employees ;                                                                                                                    
+-------------+                                                                                                                                               
| max(salary) |                                                                                                                                               
+-------------+                                                                                                                                               
|    24000.00 |                                                                                                                                               
+-------------+                                                                                                                                               
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select min(salary) from employees ;                                                                                                                    
+-------------+                                                                                                                                               
| min(salary) |                                                                                                                                               
+-------------+                                                                                                                                               
|     2100.00 |                                                                                                                                               
+-------------+                                                                                                                                               
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select min(salary) from employees group by department_id;                                                                                              
+-------------+                                                                                                                                               
| min(salary) |                                                                                                                                               
+-------------+                                                                                                                                               
|     7000.00 |                                                                                                                                               
|     4400.00 |                                                                                                                                               
|     6000.00 |                                                                                                                                               
|     2500.00 |                                                                                                                                               
|     6500.00 |                                                                                                                                               
|     2100.00 |                                                                                                                                               
|     4200.00 |                                                                                                                                               
|    10000.00 |                                                                                                                                               
|     6100.00 |                                                                                                                                               
|    17000.00 |                                                                                                                                               
|     6900.00 |                                                                                                                                               
|     8300.00 |                                                                                                                                               
+-------------+                                                                                                                                               
12 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select min(salary) from employees ;                                                                                                                    
+-------------+                                                                                                                                               
| min(salary) |                                                                                                                                               
+-------------+                                                                                                                                               
|     2100.00 |                                                                                                                                               
+-------------+                                                                                                                                               
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select avg(salary) from employees ;                                                                                                                    
+-------------+                                                                                                                                               
| avg(salary) |                                                                                                                                               
+-------------+                                                                                                                                               
| 6461.682243 |                                                                                                                                               
+-------------+                                                                                                                                               
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select sum(salary) from employees ;                                                                                                                    
+-------------+                                                                                                                                               
| sum(salary) |                                                                                                                                               
+-------------+                                                                                                                                               
|   691400.00 |                                                                                                                                               
+-------------+                                                                                                                                               
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select department_id , min(salary) from employees group by department_id;                                                                              
+---------------+-------------+                                                                                                                               
| department_id | min(salary) |                                                                                                                               
+---------------+-------------+                                                                                                                               
|          NULL |     7000.00 |                                                                                                                               
|            10 |     4400.00 |                                                                                                                               
|            20 |     6000.00 |                                                                                                                               
|            30 |     2500.00 |                                                                                                                               
|            40 |     6500.00 |                                                                                                                               
|            50 |     2100.00 |                                                                                                                               
|            60 |     4200.00 |                                                                                                                               
|            70 |    10000.00 |                                                                                                                               
|            80 |     6100.00 |                                                                                                                               
|            90 |    17000.00 |                                                                                                                               
|           100 |     6900.00 |                                                                                                                               
|           110 |     8300.00 |                                                                                                                               
+---------------+-------------+                                                                                                                               
12 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select department_id , sum(salary) from employees group by department_id;                                                                              
+---------------+-------------+                                                                                                                               
| department_id | sum(salary) |                                                                                                                               
+---------------+-------------+                                                                                                                               
|          NULL |     7000.00 |                                                                                                                               
|            10 |     4400.00 |                                                                                                                               
|            20 |    19000.00 |                                                                                                                               
|            30 |    24900.00 |                                                                                                                               
|            40 |     6500.00 |                                                                                                                               
|            50 |   156400.00 |                                                                                                                               
|            60 |    28800.00 |                                                                                                                               
|            70 |    10000.00 |                                                                                                                               
|            80 |   304500.00 |                                                                                                                               
|            90 |    58000.00 |                                                                                                                               
|           100 |    51600.00 |                                                                                                                               
|           110 |    20300.00 |                                                                                                                               
+---------------+-------------+                                                                                                                               
12 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select department_id , avg(salary) from employees group by department_id;                                                                              
+---------------+--------------+                                                                                                                              
| department_id | avg(salary)  |                                                                                                                              
+---------------+--------------+                                                                                                                              
|          NULL |  7000.000000 |                                                                                                                              
|            10 |  4400.000000 |                                                                                                                              
|            20 |  9500.000000 |                                                                                                                              
|            30 |  4150.000000 |                                                                                                                              
|            40 |  6500.000000 |                                                                                                                              
|            50 |  3475.555556 |                                                                                                                              
|            60 |  5760.000000 |                                                                                                                              
|            70 | 10000.000000 |                                                                                                                              
|            80 |  8955.882353 |                                                                                                                              
|            90 | 19333.333333 |                                                                                                                              
|           100 |  8600.000000 |                                                                                                                              
|           110 | 10150.000000 |                                                                                                                              
+---------------+--------------+                                                                                                                              
12 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select department_id , avg(salary) from employeeswhere department_id between 20 and 40  group by department_id ;                                       
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'bet
ween 20 and 40  group by department_id' at line 1                                                                                                             
mysql> select department_id , avg(salary) from employees where department_id between 20 and 40 ;                                                              
ERROR 1140 (42000): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'shyleshar86medu.employees.department_id'
; this is incompatible with sql_mode=only_full_group_by                                                                                                       
mysql> select  avg(salary) from employees where department_id between 20 and 40 ;                                                                             
+-------------+                                                                                                                                               
| avg(salary) |                                                                                                                                               
+-------------+                                                                                                                                               
| 5600.000000 |                                                                                                                                               
+-------------+                                                                                                                                               
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select  avg(salary) from employees where department_id between 20 and 60 ;                                                                             
+-------------+                                                                                                                                               
| avg(salary) |                                                                                                                                               
+-------------+                                                                                                                                               
| 3993.220339 |                                                                                                                                               
+-------------+                                                                                                                                               
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select  avg(salary) from employees where department_id between 20 and 60 group by department_id;                                                       
+-------------+                                                                                                                                               
| avg(salary) |                                                                                                                                               
+-------------+                                                                                                                                               
| 9500.000000 |                                                                                                                                               
| 4150.000000 |                                                                                                                                               
| 6500.000000 |                                                                                                                                               
| 3475.555556 |                                                                                                                                               
| 5760.000000 |                                                                                                                                               
+-------------+                                                                                                                                               
5 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select  sum(salary) from employees where department_id between 20 and 60 group by department_id;                                                       
+-------------+                                                                                                                                               
| sum(salary) |                                                                                                                                               
+-------------+                                                                                                                                               
|    19000.00 |                                                                                                                                               
|    24900.00 |                                                                                                                                               
|     6500.00 |                                                                                                                                               
|   156400.00 |                                                                                                                                               
|    28800.00 |                                                                                                                                               
+-------------+                                                                                                                                               
5 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select count(*) from employees group by department_id;                                                                                                 
+----------+                                                                                                                                                  
| count(*) |                                                                                                                                                  
+----------+                                                                                                                                                  
|        1 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        6 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|       45 |                                                                                                                                                  
|        5 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|       34 |                                                                                                                                                  
|        3 |                                                                                                                                                  
|        6 |                                                                                                                                                  
|        2 |                                                                                                                                                  
+----------+                                                                                                                                                  
12 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select count(*),job_id from employees group by department_id;                                                                                          
ERROR 1055 (42000): Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'shyleshar86medu.employees.job_id' which is not f
unctionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by                                                    
mysql> select count(*) from employees group by job_id group by  department_id;                                                                                
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'gro
up by  department_id' at line 1                                                                                                                               
mysql> select count(*) from employees group by job_id group by department_id;                                                                                 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'gro
up by department_id' at line 1                                                                                                                                
mysql> select count(*) from employees group by job_id, department_id;                                                                                         
+----------+                                                                                                                                                  
| count(*) |                                                                                                                                                  
+----------+                                                                                                                                                  
|        1 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        5 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        5 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        5 |                                                                                                                                                  
|        5 |                                                                                                                                                  
|       20 |                                                                                                                                                  
|        5 |                                                                                                                                                  
|       29 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|       20 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|        1 |                                                                                                                                                  
+----------+                                                                                                                                                  
21 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select job_id, department_id ,count(*) from employees group by job_id, department_id;                                                                  
+------------+---------------+----------+                                                                                                                     
| job_id     | department_id | count(*) |                                                                                                                     
+------------+---------------+----------+                                                                                                                     
| AD_PRES    |            90 |        1 |                                                                                                                     
| AD_VP      |            90 |        2 |                                                                                                                     
| IT_PROG    |            60 |        5 |                                                                                                                     
| FI_MGR     |           100 |        1 |                                                                                                                     
| FI_ACCOUNT |           100 |        5 |                                                                                                                     
| PU_MAN     |            30 |        1 |                                                                                                                     
| PU_CLERK   |            30 |        5 |                                                                                                                     
| ST_MAN     |            50 |        5 |                                                                                                                     
| ST_CLERK   |            50 |       20 |                                                                                                                     
| SA_MAN     |            80 |        5 |                                                                                                                     
| SA_REP     |            80 |       29 |                                                                                                                     
| SA_REP     |          NULL |        1 |                                                                                                                     
| SH_CLERK   |            50 |       20 |                                                                                                                     
| AD_ASST    |            10 |        1 |                                                                                                                     
| MK_MAN     |            20 |        1 |                                                                                                                     
| MK_REP     |            20 |        1 |                                                                                                                     
| HR_REP     |            40 |        1 |                                                                                                                     
| PR_REP     |            70 |        1 |                                                                                                                     
| AC_MGR     |           110 |        1 |                                                                                                                     
| AC_ACCOUNT |           110 |        1 |                                                                                                                     
| AC_MGR     |            10 |        1 |                                                                                                                     
+------------+---------------+----------+                                                                                                                     
21 rows in set (0.01 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select job_id, department_id ,count(*) from employees group by department_id,job_id;                                                                   
+------------+---------------+----------+                                                                                                                     
| job_id     | department_id | count(*) |                                                                                                                     
+------------+---------------+----------+                                                                                                                     
| AD_PRES    |            90 |        1 |                                                                                                                     
| AD_VP      |            90 |        2 |                                                                                                                     
| IT_PROG    |            60 |        5 |                                                                                                                     
| FI_MGR     |           100 |        1 |                                                                                                                     
| FI_ACCOUNT |           100 |        5 |                                                                                                                     
| PU_MAN     |            30 |        1 |                                                                                                                     
| PU_CLERK   |            30 |        5 |                                                                                                                     
| ST_MAN     |            50 |        5 |                                                                                                                     
| ST_CLERK   |            50 |       20 |                                                                                                                     
| SA_MAN     |            80 |        5 |                                                                                                                     
| SA_REP     |            80 |       29 |                                                                                                                     
| SA_REP     |          NULL |        1 |                                                                                                                     
| SH_CLERK   |            50 |       20 |                                                                                                                     
| AD_ASST    |            10 |        1 |                                                                                                                     
| MK_MAN     |            20 |        1 |                                                                                                                     
| MK_REP     |            20 |        1 |                                                                                                                     
| HR_REP     |            40 |        1 |                                                                                                                     
| PR_REP     |            70 |        1 |                                                                                                                     
| AC_MGR     |           110 |        1 |                                                                                                                     
| AC_ACCOUNT |           110 |        1 |                                                                                                                     
| AC_MGR     |            10 |        1 |                                                                                                                     
+------------+---------------+----------+                                                                                                                     
21 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select job_id, department_id ,count(*) from employees group by department_id having job_id="AD_PRES";                                                  
ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'shyleshar86medu.employees.job_id' which is not f
unctionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by                                                    
mysql> select count(*) from employees group by department_id having job_id="AD_PRES";                                                                         
ERROR 1054 (42S22): Unknown column 'job_id' in 'having clause'                                                                                                
mysql> select count(*) from employees group by department_id having sum(salary)>2000;                                                                         
+----------+                                                                                                                                                  
| count(*) |                                                                                                                                                  
+----------+                                                                                                                                                  
|        1 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        2 |                                                                                                                                                  
|        6 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|       45 |                                                                                                                                                  
|        5 |                                                                                                                                                  
|        1 |                                                                                                                                                  
|       34 |                                                                                                                                                  
|        3 |                                                                                                                                                  
|        6 |                                                                                                                                                  
|        2 |                                                                                                                                                  
+----------+                                                                                                                                                  
12 rows in set (0.01 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select count(*) as cnt from employees group by department_id having cnt>2;                                                                             
+-----+                                                                                                                                                       
| cnt |                                                                                                                                                       
+-----+                                                                                                                                                       
|   6 |                                                                                                                                                       
|  45 |                                                                                                                                                       
|   5 |                                                                                                                                                       
|  34 |                                                                                                                                                       
|   3 |                                                                                                                                                       
|   6 |                                                                                                                                                       
+-----+                                                                                                                                                       
6 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select count(*) as cnt from employees group by department_id having cnt between 2 and 10;                                                              
+-----+                                                                                                                                                       
| cnt |                                                                                                                                                       
+-----+                                                                                                                                                       
|   2 |                                                                                                                                                       
|   2 |                                                                                                                                                       
|   6 |                                                                                                                                                       
|   5 |                                                                                                                                                       
|   3 |                                                                                                                                                       
|   6 |                                                                                                                                                       
|   2 |                                                                                                                                                       
+-----+                                                                                                                                                       
7 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select department_id ,count(*) as cnt from employees group by department_id having cnt between 2 and 10;                                               
+---------------+-----+                                                                                                                                       
| department_id | cnt |                                                                                                                                       
+---------------+-----+                                                                                                                                       
|            10 |   2 |                                                                                                                                       
|            20 |   2 |                                                                                                                                       
|            30 |   6 |                                                                                                                                       
|            60 |   5 |                                                                                                                                       
|            90 |   3 |                                                                                                                                       
|           100 |   6 |                                                                                                                                       
|           110 |   2 |                                                                                                                                       
+---------------+-----+                                                                                                                                       
7 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select department_id ,count(*) as cnt from employees group by department_id having job_id like 'a%';                                                   
ERROR 1054 (42S22): Unknown column 'job_id' in 'having clause'                                                                                                
mysql> select department_id ,count(*) as cnt from employees group by department_id having cnt between 2 and 10 where job_id like 'a%';                        
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'whe
re job_id like 'a%'' at line 1                                                                                                                                
mysql> select department_id ,count(*) as cnt from employees where job_id like 'a%'  group by department_id having cnt between 2 and 10 ;                      
+---------------+-----+                                                                                                                                       
| department_id | cnt |                                                                                                                                       
+---------------+-----+                                                                                                                                       
|           110 |   2 |                                                                                                                                       
|            10 |   2 |                                                                                                                                       
|            90 |   3 |                                                                                                                                       
+---------------+-----+                                                                                                                                       
3 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select department_id,job_id ,count(*) as cnt from employees where job_id like 'a%'  group by department_id having cnt between 2 and 10 ;               
ERROR 1055 (42000): Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'shyleshar86medu.employees.job_id' which is not f
unctionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by                                                    
mysql> select department_id ,count(*) as cnt from employees where job_id like 'a%'  group by department_id having cnt between 2 and 10 ;                      
+---------------+-----+                                                                                                                                       
| department_id | cnt |                                                                                                                                       
+---------------+-----+                                                                                                                                       
|           110 |   2 |                                                                                                                                       
|            10 |   2 |                                                                                                                                       
|            90 |   3 |                                                                                                                                       
+---------------+-----+                                                                                                                                       
3 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select department_id ,count(*) as cnt from employees group by department_id having cnt between 2 and 10 and job_id like 'a%';                          
ERROR 1054 (42S22): Unknown column 'job_id' in 'having clause'                                                                                                
mysql> select department_id ,job_id,count(*) as cnt from employees group by department_id having cnt between 2 and 10 and job_id like 'a%';                   
ERROR 1055 (42000): Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'shyleshar86medu.employees.job_id' which is not f
unctionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by                                                    
mysql> select count(*) as cnt from employees group by department_id having cnt between 2 and 10 and job_id like 'a%';                                         
ERROR 1054 (42S22): Unknown column 'job_id' in 'having clause'                                                                                                
mysql> select count(*) as cnt from employees group by department_id,job_id having cnt between 2 and 10 and job_id like 'a%';                                  
+-----+                                                                                                                                                       
| cnt |                                                                                                                                                       
+-----+                                                                                                                                                       
|   2 |                                                                                                                                                       
+-----+                                                                                                                                                       
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select count(*) as cnt from employees group by job_id,department_id having cnt between 2 and 10 and job_id like 'a%';                                  
+-----+                                                                                                                                                       
| cnt |                                                                                                                                                       
+-----+                                                                                                                                                       
|   2 |                                                                                                                                                       
+-----+                                                                                                                                                       
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select job_id, count(*) as cnt from employees group by job_id,department_id having cnt between 2 and 10 and job_id like 'a%';                          
+--------+-----+                                                                                                                                              
| job_id | cnt |                                                                                                                                              
+--------+-----+                                                                                                                                              
| AD_VP  |   2 |                                                                                                                                              
+--------+-----+                                                                                                                                              
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select department_id, count(*) as cnt from employees group by job_id,department_id having cnt between 2 and 10 and job_id like 'a%';                   
+---------------+-----+                                                                                                                                       
| department_id | cnt |                                                                                                                                       
+---------------+-----+                                                                                                                                       
|            90 |   2 |                                                                                                                                       
+---------------+-----+                                                                                                                                       
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select department_id, count(*) as cnt from employees group by job_id,department_id having department between 2 and 10 and job_id like 'a%';            
ERROR 1054 (42S22): Unknown column 'department' in 'having clause'                                                                                            
mysql> select department_id, count(*) as cnt from employees group by job_id,department_id having department_id between 2 and 10 and job_id like 'a%';         
+---------------+-----+                                                                                                                                       
| department_id | cnt |                                                                                                                                       
+---------------+-----+                                                                                                                                       
|            10 |   1 |                                                                                                                                       
|            10 |   1 |                                                                                                                                       
+---------------+-----+                                                                                                                                       
2 rows in set (0.01 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select department_id ,count(*) as cnt from employees where job_id like 'a%'  group by department_id having cnt between 2 and 10 ;                      
+---------------+-----+                                                                                                                                       
| department_id | cnt |                                                                                                                                       
+---------------+-----+                                                                                                                                       
|           110 |   2 |                                                                                                                                       
|            10 |   2 |                                                                                                                                       
|            90 |   3 |                                                                                                                                       
+---------------+-----+                                                                                                                                       
3 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select department_id ,job_id,count(*) as cnt from employees where job_id like 'a%'  group by department_id having cnt between 2 and 10 ;               
ERROR 1055 (42000): Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'shyleshar86medu.employees.job_id' which is not f
unctionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by                                                    
mysql> select job_id,count(*) as cnt from employees where job_id like 'a%'  group by department_id having cnt between 2 and 10 ;                              
ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'shyleshar86medu.employees.job_id' which is not f
unctionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by                                                    
mysql> select job_id from employees where job_id like 'a%'  group by department_id ;                                                                          
ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'shyleshar86medu.employees.job_id' which is not f
unctionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by                                                    
mysql> select job_id from employees where job_id like 'a%'  ;                                                                                                 
+------------+                                                                                                                                                
| job_id     |                                                                                                                                                
+------------+                                                                                                                                                
| AC_ACCOUNT |                                                                                                                                                
| AC_MGR     |                                                                                                                                                
| AC_MGR     |                                                                                                                                                
| AD_ASST    |                                                                                                                                                
| AD_PRES    |                                                                                                                                                
| AD_VP      |                                                                                                                                                
| AD_VP      |                                                                                                                                                
+------------+                                                                                                                                                
7 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select * from employees where job_id like 'a%'  group by department_id ;                                                                               
ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'shyleshar86medu.employees.employee_id' which is 
not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by                                               
mysql> select department_id from employees where job_id like 'a%'  group by department_id ;                                                                   
+---------------+                                                                                                                                             
| department_id |                                                                                                                                             
+---------------+                                                                                                                                             
|           110 |                                                                                                                                             
|            10 |                                                                                                                                             
|            90 |                                                                                                                                             
+---------------+                                                                                                                                             
3 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select department_id from employees where job_id like 'a%'  group by department_id ;                                                                   
+---------------+                                                                                                                                             
| department_id |                                                                                                                                             
+---------------+                                                                                                                                             
|           110 |                                                                                                                                             
|            10 |                                                                                                                                             
|            90 |                                                                                                                                             
+---------------+                                                                                                                                             
3 rows in set (0.01 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select department_id,count(*) from employees where job_id like 'a%'  group by department_id ;                                                          
+---------------+----------+                                                                                                                                  
| department_id | count(*) |                                                                                                                                  
+---------------+----------+                                                                                                                                  
|           110 |        2 |                                                                                                                                  
|            10 |        2 |                                                                                                                                  
|            90 |        3 |                                                                                                                                  
+---------------+----------+                                                                                                                                  
3 rows in set (0.01 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select department_id,count(*) from employees where job_id like 'a%'  group by department_id having cnt > 2;                                            
ERROR 1054 (42S22): Unknown column 'cnt' in 'having clause'                                                                                                   
mysql> select department_id,count(*) as cnt from employees where job_id like 'a%'  group by department_id having cnt > 2;                                     
+---------------+-----+                                                                                                                                       
| department_id | cnt |                                                                                                                                       
+---------------+-----+                                                                                                                                       
|            90 |   3 |                                                                                                                                       
+---------------+-----+                                                                                                                                       
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select department_id,count(*) as cnt from employees where job_id like 'a%'  group by department_id having cnt between 2 and 10;                        
+---------------+-----+                                                                                                                                       
| department_id | cnt |                                                                                                                                       
+---------------+-----+                                                                                                                                       
|           110 |   2 |                                                                                                                                       
|            10 |   2 |                                                                                                                                       
|            90 |   3 |                                                                                                                                       
+---------------+-----+                                                                                                                                       
3 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select department_id,count(*) as cnt from employees  group by department_id having cnt between 2 and 10;                                               
+---------------+-----+                                                                                                                                       
| department_id | cnt |                                                                                                                                       
+---------------+-----+                                                                                                                                       
|            10 |   2 |                                                                                                                                       
|            20 |   2 |                                                                                                                                       
|            30 |   6 |                                                                                                                                       
|            60 |   5 |                                                                                                                                       
|            90 |   3 |                                                                                                                                       
|           100 |   6 |                                                                                                                                       
|           110 |   2 |                                                                                                                                       
+---------------+-----+                                                                                                                                       
7 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select department_id,count(*) as cnt from employees  group by department_id,job_id having cnt between 2 and 10;                                        
+---------------+-----+                                                                                                                                       
| department_id | cnt |                                                                                                                                       
+---------------+-----+                                                                                                                                       
|            90 |   2 |                                                                                                                                       
|            60 |   5 |                                                                                                                                       
|           100 |   5 |                                                                                                                                       
|            30 |   5 |                                                                                                                                       
|            50 |   5 |                                                                                                                                       
|            80 |   5 |                                                                                                                                       
+---------------+-----+                                                                                                                                       
6 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select department_id,count(*) as cnt from employees  group by department_id,job_id having cnt between 2 and 10 and job_id like 'a%';                   
+---------------+-----+                                                                                                                                       
| department_id | cnt |                                                                                                                                       
+---------------+-----+                                                                                                                                       
|            90 |   2 |                                                                                                                                       
+---------------+-----+                                                                                                                                       
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select * from employees order by department_id;                                                                                                        
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| employee_id | first_name  | last_name   | email    | phone_number       | hire_date  | job_id     | salary   | commission_pct | manager_id | department_id |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1999-05-24 | SA_REP     |  7000.00 |           0.15 |        149 |          NULL |
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-17 | AD_ASST    |  4400.00 |           NULL |        101 |            10 |
|         900 | Ram         | NULL        | NULL     | NULL               | NULL       | AC_MGR     |     NULL |           NULL |       NULL |            10 |
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1996-02-17 | MK_MAN     | 13000.00 |           NULL |        100 |            20 |
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1997-08-17 | MK_REP     |  6000.00 |           NULL |        201 |            20 |
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1994-12-07 | PU_MAN     | 11000.00 |           NULL |        100 |            30 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1995-05-18 | PU_CLERK   |  3100.00 |           NULL |        114 |            30 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1997-12-24 | PU_CLERK   |  2900.00 |           NULL |        114 |            30 |
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1997-07-24 | PU_CLERK   |  2800.00 |           NULL |        114 |            30 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1998-11-15 | PU_CLERK   |  2600.00 |           NULL |        114 |            30 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1999-08-10 | PU_CLERK   |  2500.00 |           NULL |        114 |            30 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1994-06-07 | HR_REP     |  6500.00 |           NULL |        101 |            40 |
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1996-07-18 | ST_MAN     |  8000.00 |           NULL |        100 |            50 |
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1997-04-10 | ST_MAN     |  8200.00 |           NULL |        100 |            50 |
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1995-05-01 | ST_MAN     |  7900.00 |           NULL |        100 |            50 |
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1997-10-10 | ST_MAN     |  6500.00 |           NULL |        100 |            50 |
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1999-11-16 | ST_MAN     |  5800.00 |           NULL |        100 |            50 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1997-07-16 | ST_CLERK   |  3200.00 |           NULL |        120 |            50 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1998-09-28 | ST_CLERK   |  2700.00 |           NULL |        120 |            50 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1999-01-14 | ST_CLERK   |  2400.00 |           NULL |        120 |            50 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 2000-03-08 | ST_CLERK   |  2200.00 |           NULL |        120 |            50 |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1997-08-20 | ST_CLERK   |  3300.00 |           NULL |        121 |            50 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1997-10-30 | ST_CLERK   |  2800.00 |           NULL |        121 |            50 |
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1997-02-16 | ST_CLERK   |  2500.00 |           NULL |        121 |            50 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1999-04-10 | ST_CLERK   |  2100.00 |           NULL |        121 |            50 |
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1996-06-14 | ST_CLERK   |  3300.00 |           NULL |        122 |            50 |
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1998-08-26 | ST_CLERK   |  2900.00 |           NULL |        122 |            50 |
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1999-12-12 | ST_CLERK   |  2400.00 |           NULL |        122 |            50 |
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 2000-02-06 | ST_CLERK   |  2200.00 |           NULL |        122 |            50 |
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1995-07-14 | ST_CLERK   |  3600.00 |           NULL |        123 |            50 |
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1997-10-26 | ST_CLERK   |  3200.00 |           NULL |        123 |            50 |
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1998-02-12 | ST_CLERK   |  2700.00 |           NULL |        123 |            50 |
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1998-04-06 | ST_CLERK   |  2500.00 |           NULL |        123 |            50 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1995-10-17 | ST_CLERK   |  3500.00 |           NULL |        124 |            50 |
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1997-01-29 | ST_CLERK   |  3100.00 |           NULL |        124 |            50 |
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1998-03-15 | ST_CLERK   |  2600.00 |           NULL |        124 |            50 |
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1998-07-09 | ST_CLERK   |  2500.00 |           NULL |        124 |            50 |
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1998-01-24 | SH_CLERK   |  3200.00 |           NULL |        120 |            50 |
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1998-02-23 | SH_CLERK   |  3100.00 |           NULL |        120 |            50 |
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1999-06-21 | SH_CLERK   |  2500.00 |           NULL |        120 |            50 |
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 2000-02-03 | SH_CLERK   |  2800.00 |           NULL |        120 |            50 |
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1996-01-27 | SH_CLERK   |  4200.00 |           NULL |        121 |            50 |
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1997-02-20 | SH_CLERK   |  4100.00 |           NULL |        121 |            50 |
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1998-06-24 | SH_CLERK   |  3400.00 |           NULL |        121 |            50 |
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1999-02-07 | SH_CLERK   |  3000.00 |           NULL |        121 |            50 |
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1997-06-14 | SH_CLERK   |  3800.00 |           NULL |        122 |            50 |
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1997-08-13 | SH_CLERK   |  3600.00 |           NULL |        122 |            50 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1998-07-11 | SH_CLERK   |  2900.00 |           NULL |        122 |            50 |
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1999-12-19 | SH_CLERK   |  2500.00 |           NULL |        122 |            50 |
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1996-02-04 | SH_CLERK   |  4000.00 |           NULL |        123 |            50 |
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1997-03-03 | SH_CLERK   |  3900.00 |           NULL |        123 |            50 |
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1998-07-01 | SH_CLERK   |  3200.00 |           NULL |        123 |            50 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1999-03-17 | SH_CLERK   |  2800.00 |           NULL |        123 |            50 |
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1998-04-24 | SH_CLERK   |  3100.00 |           NULL |        124 |            50 |
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1998-05-23 | SH_CLERK   |  3000.00 |           NULL |        124 |            50 |
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1999-06-21 | SH_CLERK   |  2600.00 |           NULL |        124 |            50 |
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 2000-01-13 | SH_CLERK   |  2600.00 |           NULL |        124 |            50 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1990-01-03 | IT_PROG    |  9000.00 |           NULL |        102 |            60 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1991-05-21 | IT_PROG    |  6000.00 |           NULL |        103 |            60 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1997-06-25 | IT_PROG    |  4800.00 |           NULL |        103 |            60 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1998-02-05 | IT_PROG    |  4800.00 |           NULL |        103 |            60 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1999-02-07 | IT_PROG    |  4200.00 |           NULL |        103 |            60 |
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1994-06-07 | PR_REP     | 10000.00 |           NULL |        101 |            70 |
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1996-10-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1997-01-05 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1997-03-10 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 |
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1999-10-15 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 |
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 2000-01-29 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 |
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1997-01-30 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1997-03-24 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1997-08-20 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1998-03-30 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1998-12-09 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1999-11-23 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1996-01-30 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1996-03-04 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1996-08-01 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1997-03-10 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1997-12-15 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1998-11-03 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1997-11-11 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1999-03-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 2000-01-24 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 2000-02-23 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 2000-03-24 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 2000-04-21 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1997-03-11 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1998-03-23 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1998-01-24 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1999-02-23 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1999-03-24 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 2000-04-21 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1996-05-11 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1997-03-19 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1998-03-24 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1998-04-23 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 2000-01-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           NULL |       NULL |            90 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1989-09-21 | AD_VP      | 17000.00 |           NULL |        100 |            90 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1993-01-13 | AD_VP      | 17000.00 |           NULL |        100 |            90 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1994-08-17 | FI_MGR     | 12000.00 |           NULL |        101 |           100 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1994-08-16 | FI_ACCOUNT |  9000.00 |           NULL |        108 |           100 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1997-09-28 | FI_ACCOUNT |  8200.00 |           NULL |        108 |           100 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1997-09-30 | FI_ACCOUNT |  7700.00 |           NULL |        108 |           100 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1998-03-07 | FI_ACCOUNT |  7800.00 |           NULL |        108 |           100 |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1999-12-07 | FI_ACCOUNT |  6900.00 |           NULL |        108 |           100 |
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1994-06-07 | AC_MGR     | 12000.00 |           NULL |        101 |           110 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1994-06-07 | AC_ACCOUNT |  8300.00 |           NULL |        205 |           110 |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
108 rows in set (0.00 sec)                                                                                                                                    
                                                                                                                                                              
mysql> select * from employees order by first_name;                                                                                                           
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| employee_id | first_name  | last_name   | email    | phone_number       | hire_date  | job_id     | salary   | commission_pct | manager_id | department_id |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1997-04-10 | ST_MAN     |  8200.00 |           NULL |        100 |            50 |
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1998-04-24 | SH_CLERK   |  3100.00 |           NULL |        124 |            50 |
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1997-03-10 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1990-01-03 | IT_PROG    |  9000.00 |           NULL |        102 |            60 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1995-05-18 | PU_CLERK   |  3100.00 |           NULL |        114 |            30 |
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1997-02-20 | SH_CLERK   |  4100.00 |           NULL |        121 |            50 |
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1996-08-01 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1997-03-19 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 2000-04-21 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1999-02-07 | SH_CLERK   |  3000.00 |           NULL |        121 |            50 |
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1997-03-03 | SH_CLERK   |  3900.00 |           NULL |        123 |            50 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1991-05-21 | IT_PROG    |  6000.00 |           NULL |        103 |            60 |
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 2000-01-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1998-03-30 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1997-11-11 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1997-01-29 | ST_CLERK   |  3100.00 |           NULL |        124 |            50 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1994-08-16 | FI_ACCOUNT |  9000.00 |           NULL |        108 |           100 |
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1999-03-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 2000-02-23 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1997-03-24 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1997-06-25 | IT_PROG    |  4800.00 |           NULL |        103 |            60 |
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1994-12-07 | PU_MAN     | 11000.00 |           NULL |        100 |            30 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1999-02-07 | IT_PROG    |  4200.00 |           NULL |        103 |            60 |
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1999-06-21 | SH_CLERK   |  2600.00 |           NULL |        124 |            50 |
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 2000-01-13 | SH_CLERK   |  2600.00 |           NULL |        124 |            50 |
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 2000-01-29 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 |
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1999-03-24 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1996-05-11 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1999-10-15 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 |
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 2000-02-03 | SH_CLERK   |  2800.00 |           NULL |        120 |            50 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1998-11-15 | PU_CLERK   |  2600.00 |           NULL |        114 |            30 |
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1998-03-23 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 2000-02-06 | ST_CLERK   |  2200.00 |           NULL |        122 |            50 |
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1994-06-07 | PR_REP     | 10000.00 |           NULL |        101 |            70 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1998-09-28 | ST_CLERK   |  2700.00 |           NULL |        120 |            50 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1997-09-30 | FI_ACCOUNT |  7700.00 |           NULL |        108 |           100 |
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1998-04-23 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1997-02-16 | ST_CLERK   |  2500.00 |           NULL |        121 |            50 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1999-01-14 | ST_CLERK   |  2400.00 |           NULL |        120 |            50 |
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1996-01-30 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1996-06-14 | ST_CLERK   |  3300.00 |           NULL |        122 |            50 |
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1998-02-23 | SH_CLERK   |  3100.00 |           NULL |        120 |            50 |
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-17 | AD_ASST    |  4400.00 |           NULL |        101 |            10 |
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1997-08-13 | SH_CLERK   |  3600.00 |           NULL |        122 |            50 |
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1996-10-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1997-09-28 | FI_ACCOUNT |  8200.00 |           NULL |        108 |           100 |
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1998-02-12 | ST_CLERK   |  2700.00 |           NULL |        123 |            50 |
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1998-03-24 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1998-03-07 | FI_ACCOUNT |  7800.00 |           NULL |        108 |           100 |
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1998-04-06 | ST_CLERK   |  2500.00 |           NULL |        123 |            50 |
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1998-06-24 | SH_CLERK   |  3400.00 |           NULL |        121 |            50 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1997-07-16 | ST_CLERK   |  3200.00 |           NULL |        120 |            50 |
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1997-01-05 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1999-08-10 | PU_CLERK   |  2500.00 |           NULL |        114 |            30 |
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1997-06-14 | SH_CLERK   |  3800.00 |           NULL |        122 |            50 |
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1999-11-16 | ST_MAN     |  5800.00 |           NULL |        100 |            50 |
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1998-05-23 | SH_CLERK   |  3000.00 |           NULL |        124 |            50 |
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1999-12-12 | ST_CLERK   |  2400.00 |           NULL |        122 |            50 |
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1999-05-24 | SA_REP     |  7000.00 |           0.15 |        149 |          NULL |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1997-08-20 | ST_CLERK   |  3300.00 |           NULL |        121 |            50 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1993-01-13 | AD_VP      | 17000.00 |           NULL |        100 |            90 |
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1997-03-10 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1997-03-11 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1997-12-15 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1999-12-07 | FI_ACCOUNT |  6900.00 |           NULL |        108 |           100 |
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1999-06-21 | SH_CLERK   |  2500.00 |           NULL |        120 |            50 |
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 2000-01-24 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1996-07-18 | ST_MAN     |  8000.00 |           NULL |        100 |            50 |
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1998-08-26 | ST_CLERK   |  2900.00 |           NULL |        122 |            50 |
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1996-02-17 | MK_MAN     | 13000.00 |           NULL |        100 |            20 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1997-10-30 | ST_CLERK   |  2800.00 |           NULL |        121 |            50 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1994-08-17 | FI_MGR     | 12000.00 |           NULL |        101 |           100 |
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1996-01-27 | SH_CLERK   |  4200.00 |           NULL |        121 |            50 |
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1998-12-09 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1989-09-21 | AD_VP      | 17000.00 |           NULL |        100 |            90 |
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1999-11-23 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1997-08-17 | MK_REP     |  6000.00 |           NULL |        201 |            20 |
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1996-03-04 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1995-05-01 | ST_MAN     |  7900.00 |           NULL |        100 |            50 |
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1998-07-09 | ST_CLERK   |  2500.00 |           NULL |        124 |            50 |
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1997-08-20 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1997-01-30 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |
|         900 | Ram         | NULL        | NULL     | NULL               | NULL       | AC_MGR     |     NULL |           NULL |       NULL |            10 |
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1999-12-19 | SH_CLERK   |  2500.00 |           NULL |        122 |            50 |
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1998-03-15 | ST_CLERK   |  2600.00 |           NULL |        124 |            50 |
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1995-07-14 | ST_CLERK   |  3600.00 |           NULL |        123 |            50 |
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1998-07-01 | SH_CLERK   |  3200.00 |           NULL |        123 |            50 |
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1996-02-04 | SH_CLERK   |  4000.00 |           NULL |        123 |            50 |
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1998-11-03 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1997-10-10 | ST_MAN     |  6500.00 |           NULL |        100 |            50 |
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1994-06-07 | AC_MGR     | 12000.00 |           NULL |        101 |           110 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1997-12-24 | PU_CLERK   |  2900.00 |           NULL |        114 |            30 |
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1997-07-24 | PU_CLERK   |  2800.00 |           NULL |        114 |            30 |
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1997-10-26 | ST_CLERK   |  3200.00 |           NULL |        123 |            50 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 2000-03-08 | ST_CLERK   |  2200.00 |           NULL |        120 |            50 |
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           NULL |       NULL |            90 |
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 2000-03-24 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 2000-04-21 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1994-06-07 | HR_REP     |  6500.00 |           NULL |        101 |            40 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1998-01-24 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1998-07-11 | SH_CLERK   |  2900.00 |           NULL |        122 |            50 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1999-04-10 | ST_CLERK   |  2100.00 |           NULL |        121 |            50 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1995-10-17 | ST_CLERK   |  3500.00 |           NULL |        124 |            50 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1998-02-05 | IT_PROG    |  4800.00 |           NULL |        103 |            60 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1999-03-17 | SH_CLERK   |  2800.00 |           NULL |        123 |            50 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1994-06-07 | AC_ACCOUNT |  8300.00 |           NULL |        205 |           110 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1999-02-23 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1998-01-24 | SH_CLERK   |  3200.00 |           NULL |        120 |            50 |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
108 rows in set (0.00 sec)                                                                                                                                    
                                                                                                                                                              
mysql> select * from employees order by salary desc;                                                                                                          
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| employee_id | first_name  | last_name   | email    | phone_number       | hire_date  | job_id     | salary   | commission_pct | manager_id | department_id |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           NULL |       NULL |            90 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1989-09-21 | AD_VP      | 17000.00 |           NULL |        100 |            90 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1993-01-13 | AD_VP      | 17000.00 |           NULL |        100 |            90 |
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1996-10-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1997-01-05 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1996-02-17 | MK_MAN     | 13000.00 |           NULL |        100 |            20 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1994-08-17 | FI_MGR     | 12000.00 |           NULL |        101 |           100 |
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1997-03-10 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 |
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1994-06-07 | AC_MGR     | 12000.00 |           NULL |        101 |           110 |
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1997-03-11 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1994-12-07 | PU_MAN     | 11000.00 |           NULL |        100 |            30 |
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1999-10-15 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 |
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1996-05-11 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 2000-01-29 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 |
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1997-11-11 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1997-01-30 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1996-01-30 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1998-03-23 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1994-06-07 | PR_REP     | 10000.00 |           NULL |        101 |            70 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1998-01-24 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1997-03-24 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1996-03-04 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1999-03-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1990-01-03 | IT_PROG    |  9000.00 |           NULL |        102 |            60 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1994-08-16 | FI_ACCOUNT |  9000.00 |           NULL |        108 |           100 |
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1997-08-20 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1996-08-01 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1997-03-19 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1998-03-24 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1998-04-23 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1994-06-07 | AC_ACCOUNT |  8300.00 |           NULL |        205 |           110 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1997-09-28 | FI_ACCOUNT |  8200.00 |           NULL |        108 |           100 |
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1997-04-10 | ST_MAN     |  8200.00 |           NULL |        100 |            50 |
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1996-07-18 | ST_MAN     |  8000.00 |           NULL |        100 |            50 |
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1998-03-30 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1997-03-10 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1995-05-01 | ST_MAN     |  7900.00 |           NULL |        100 |            50 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1998-03-07 | FI_ACCOUNT |  7800.00 |           NULL |        108 |           100 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1997-09-30 | FI_ACCOUNT |  7700.00 |           NULL |        108 |           100 |
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1998-12-09 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1997-12-15 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1999-02-23 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1999-03-24 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 2000-01-24 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1999-11-23 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1998-11-03 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1999-05-24 | SA_REP     |  7000.00 |           0.15 |        149 |          NULL |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1999-12-07 | FI_ACCOUNT |  6900.00 |           NULL |        108 |           100 |
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 2000-02-23 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1997-10-10 | ST_MAN     |  6500.00 |           NULL |        100 |            50 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1994-06-07 | HR_REP     |  6500.00 |           NULL |        101 |            40 |
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 2000-03-24 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 2000-04-21 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 2000-01-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 2000-04-21 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1991-05-21 | IT_PROG    |  6000.00 |           NULL |        103 |            60 |
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1997-08-17 | MK_REP     |  6000.00 |           NULL |        201 |            20 |
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1999-11-16 | ST_MAN     |  5800.00 |           NULL |        100 |            50 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1997-06-25 | IT_PROG    |  4800.00 |           NULL |        103 |            60 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1998-02-05 | IT_PROG    |  4800.00 |           NULL |        103 |            60 |
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-17 | AD_ASST    |  4400.00 |           NULL |        101 |            10 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1999-02-07 | IT_PROG    |  4200.00 |           NULL |        103 |            60 |
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1996-01-27 | SH_CLERK   |  4200.00 |           NULL |        121 |            50 |
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1997-02-20 | SH_CLERK   |  4100.00 |           NULL |        121 |            50 |
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1996-02-04 | SH_CLERK   |  4000.00 |           NULL |        123 |            50 |
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1997-03-03 | SH_CLERK   |  3900.00 |           NULL |        123 |            50 |
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1997-06-14 | SH_CLERK   |  3800.00 |           NULL |        122 |            50 |
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1995-07-14 | ST_CLERK   |  3600.00 |           NULL |        123 |            50 |
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1997-08-13 | SH_CLERK   |  3600.00 |           NULL |        122 |            50 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1995-10-17 | ST_CLERK   |  3500.00 |           NULL |        124 |            50 |
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1998-06-24 | SH_CLERK   |  3400.00 |           NULL |        121 |            50 |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1997-08-20 | ST_CLERK   |  3300.00 |           NULL |        121 |            50 |
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1996-06-14 | ST_CLERK   |  3300.00 |           NULL |        122 |            50 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1997-07-16 | ST_CLERK   |  3200.00 |           NULL |        120 |            50 |
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1997-10-26 | ST_CLERK   |  3200.00 |           NULL |        123 |            50 |
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1998-01-24 | SH_CLERK   |  3200.00 |           NULL |        120 |            50 |
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1998-07-01 | SH_CLERK   |  3200.00 |           NULL |        123 |            50 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1995-05-18 | PU_CLERK   |  3100.00 |           NULL |        114 |            30 |
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1997-01-29 | ST_CLERK   |  3100.00 |           NULL |        124 |            50 |
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1998-02-23 | SH_CLERK   |  3100.00 |           NULL |        120 |            50 |
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1998-04-24 | SH_CLERK   |  3100.00 |           NULL |        124 |            50 |
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1999-02-07 | SH_CLERK   |  3000.00 |           NULL |        121 |            50 |
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1998-05-23 | SH_CLERK   |  3000.00 |           NULL |        124 |            50 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1997-12-24 | PU_CLERK   |  2900.00 |           NULL |        114 |            30 |
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1998-08-26 | ST_CLERK   |  2900.00 |           NULL |        122 |            50 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1998-07-11 | SH_CLERK   |  2900.00 |           NULL |        122 |            50 |
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1997-07-24 | PU_CLERK   |  2800.00 |           NULL |        114 |            30 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1997-10-30 | ST_CLERK   |  2800.00 |           NULL |        121 |            50 |
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 2000-02-03 | SH_CLERK   |  2800.00 |           NULL |        120 |            50 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1999-03-17 | SH_CLERK   |  2800.00 |           NULL |        123 |            50 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1998-09-28 | ST_CLERK   |  2700.00 |           NULL |        120 |            50 |
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1998-02-12 | ST_CLERK   |  2700.00 |           NULL |        123 |            50 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1998-11-15 | PU_CLERK   |  2600.00 |           NULL |        114 |            30 |
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1998-03-15 | ST_CLERK   |  2600.00 |           NULL |        124 |            50 |
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1999-06-21 | SH_CLERK   |  2600.00 |           NULL |        124 |            50 |
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 2000-01-13 | SH_CLERK   |  2600.00 |           NULL |        124 |            50 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1999-08-10 | PU_CLERK   |  2500.00 |           NULL |        114 |            30 |
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1997-02-16 | ST_CLERK   |  2500.00 |           NULL |        121 |            50 |
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1998-04-06 | ST_CLERK   |  2500.00 |           NULL |        123 |            50 |
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1998-07-09 | ST_CLERK   |  2500.00 |           NULL |        124 |            50 |
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1999-06-21 | SH_CLERK   |  2500.00 |           NULL |        120 |            50 |
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1999-12-19 | SH_CLERK   |  2500.00 |           NULL |        122 |            50 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1999-01-14 | ST_CLERK   |  2400.00 |           NULL |        120 |            50 |
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1999-12-12 | ST_CLERK   |  2400.00 |           NULL |        122 |            50 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 2000-03-08 | ST_CLERK   |  2200.00 |           NULL |        120 |            50 |
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 2000-02-06 | ST_CLERK   |  2200.00 |           NULL |        122 |            50 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1999-04-10 | ST_CLERK   |  2100.00 |           NULL |        121 |            50 |
|         900 | Ram         | NULL        | NULL     | NULL               | NULL       | AC_MGR     |     NULL |           NULL |       NULL |            10 |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
108 rows in set (0.00 sec)                                                                                                                                    
                                                                                                                                                              
mysql> select * from employees order by salary desc limit 1 ;                                                                                                 
+-------------+------------+-----------+-------+--------------+------------+---------+----------+----------------+------------+---------------+               
| employee_id | first_name | last_name | email | phone_number | hire_date  | job_id  | salary   | commission_pct | manager_id | department_id |               
+-------------+------------+-----------+-------+--------------+------------+---------+----------+----------------+------------+---------------+               
|         100 | Steven     | King      | SKING | 515.123.4567 | 1987-06-17 | AD_PRES | 24000.00 |           NULL |       NULL |            90 |               
+-------------+------------+-----------+-------+--------------+------------+---------+----------+----------------+------------+---------------+               
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select * from employees order by salary desc limit 1 offset 1 ;                                                                                        
+-------------+------------+-----------+----------+--------------+------------+--------+----------+----------------+------------+---------------+             
| employee_id | first_name | last_name | email    | phone_number | hire_date  | job_id | salary   | commission_pct | manager_id | department_id |             
+-------------+------------+-----------+----------+--------------+------------+--------+----------+----------------+------------+---------------+             
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568 | 1989-09-21 | AD_VP  | 17000.00 |           NULL |        100 |            90 |             
+-------------+------------+-----------+----------+--------------+------------+--------+----------+----------------+------------+---------------+             
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select * from employees order by salary desc limit 1 offset 2 ;                                                                                        
+-------------+------------+-----------+---------+--------------+------------+--------+----------+----------------+------------+---------------+              
| employee_id | first_name | last_name | email   | phone_number | hire_date  | job_id | salary   | commission_pct | manager_id | department_id |              
+-------------+------------+-----------+---------+--------------+------------+--------+----------+----------------+------------+---------------+              
|         102 | Lex        | De Haan   | LDEHAAN | 515.123.4569 | 1993-01-13 | AD_VP  | 17000.00 |           NULL |        100 |            90 |              
+-------------+------------+-----------+---------+--------------+------------+--------+----------+----------------+------------+---------------+              
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql>                                                                                                                                                        
mysql>                                                                                                                                                        
mysql>                                                                                                                                                        
mysql>                                                                                                                                                        
mysql>                                                                                                                                                        
mysql> select * from employees order by salary desc limit 2;                                                                                                  
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+            
| employee_id | first_name | last_name | email    | phone_number | hire_date  | job_id  | salary   | commission_pct | manager_id | department_id |            
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+            
|         100 | Steven     | King      | SKING    | 515.123.4567 | 1987-06-17 | AD_PRES | 24000.00 |           NULL |       NULL |            90 |            
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568 | 1989-09-21 | AD_VP   | 17000.00 |           NULL |        100 |            90 |            
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+            
2 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select * from employees order by salary desc limit 3 offset 2;                                                                                         
+-------------+------------+-----------+----------+--------------------+------------+--------+----------+----------------+------------+---------------+       
| employee_id | first_name | last_name | email    | phone_number       | hire_date  | job_id | salary   | commission_pct | manager_id | department_id |       
+-------------+------------+-----------+----------+--------------------+------------+--------+----------+----------------+------------+---------------+       
|         102 | Lex        | De Haan   | LDEHAAN  | 515.123.4569       | 1993-01-13 | AD_VP  | 17000.00 |           NULL |        100 |            90 |       
|         145 | John       | Russell   | JRUSSEL  | 011.44.1344.429268 | 1996-10-01 | SA_MAN | 14000.00 |           0.40 |        100 |            80 |       
|         146 | Karen      | Partners  | KPARTNER | 011.44.1344.467268 | 1997-01-05 | SA_MAN | 13500.00 |           0.30 |        100 |            80 |       
+-------------+------------+-----------+----------+--------------------+------------+--------+----------+----------------+------------+---------------+       
3 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select * from employees order by salary desc limit 1 offset 2;                                                                                         
+-------------+------------+-----------+---------+--------------+------------+--------+----------+----------------+------------+---------------+              
| employee_id | first_name | last_name | email   | phone_number | hire_date  | job_id | salary   | commission_pct | manager_id | department_id |              
+-------------+------------+-----------+---------+--------------+------------+--------+----------+----------------+------------+---------------+              
|         102 | Lex        | De Haan   | LDEHAAN | 515.123.4569 | 1993-01-13 | AD_VP  | 17000.00 |           NULL |        100 |            90 |              
+-------------+------------+-----------+---------+--------------+------------+--------+----------+----------------+------------+---------------+              
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select salary from employees order by salary desc limit 1 offset 2;                                                                                    
+----------+                                                                                                                                                  
| salary   |                                                                                                                                                  
+----------+                                                                                                                                                  
| 17000.00 |                                                                                                                                                  
+----------+                                                                                                                                                  
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select salary from employees order by salary desc limit 3;                                                                                             
+----------+                                                                                                                                                  
| salary   |                                                                                                                                                  
+----------+                                                                                                                                                  
| 24000.00 |                                                                                                                                                  
| 17000.00 |                                                                                                                                                  
| 17000.00 |                                                                                                                                                  
+----------+                                                                                                                                                  
3 rows in set (0.01 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select distinct salary from employees order by salary desc limit 3;                                                                                    
+----------+                                                                                                                                                  
| salary   |                                                                                                                                                  
+----------+                                                                                                                                                  
| 24000.00 |                                                                                                                                                  
| 17000.00 |                                                                                                                                                  
| 14000.00 |                                                                                                                                                  
+----------+                                                                                                                                                  
3 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select * from emplyees union select * from department;                                                                                                 
ERROR 1146 (42S02): Table 'shyleshar86medu.emplyees' doesn't exist                                                                                            
mysql> select * from employees union select * from department;                                                                                                
ERROR 1146 (42S02): Table 'shyleshar86medu.department' doesn't exist                                                                                          
mysql> select * from employees union select * from departments;                                                                                               
ERROR 1222 (21000): The used SELECT statements have a different number of columns                                                                             
mysql> select * from employees ; union select * from departments;                                                                                             
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| employee_id | first_name  | last_name   | email    | phone_number       | hire_date  | job_id     | salary   | commission_pct | manager_id | department_id |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           NULL |       NULL |            90 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1989-09-21 | AD_VP      | 17000.00 |           NULL |        100 |            90 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1993-01-13 | AD_VP      | 17000.00 |           NULL |        100 |            90 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1990-01-03 | IT_PROG    |  9000.00 |           NULL |        102 |            60 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1991-05-21 | IT_PROG    |  6000.00 |           NULL |        103 |            60 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1997-06-25 | IT_PROG    |  4800.00 |           NULL |        103 |            60 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1998-02-05 | IT_PROG    |  4800.00 |           NULL |        103 |            60 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1999-02-07 | IT_PROG    |  4200.00 |           NULL |        103 |            60 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1994-08-17 | FI_MGR     | 12000.00 |           NULL |        101 |           100 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1994-08-16 | FI_ACCOUNT |  9000.00 |           NULL |        108 |           100 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1997-09-28 | FI_ACCOUNT |  8200.00 |           NULL |        108 |           100 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1997-09-30 | FI_ACCOUNT |  7700.00 |           NULL |        108 |           100 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1998-03-07 | FI_ACCOUNT |  7800.00 |           NULL |        108 |           100 |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1999-12-07 | FI_ACCOUNT |  6900.00 |           NULL |        108 |           100 |
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1994-12-07 | PU_MAN     | 11000.00 |           NULL |        100 |            30 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1995-05-18 | PU_CLERK   |  3100.00 |           NULL |        114 |            30 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1997-12-24 | PU_CLERK   |  2900.00 |           NULL |        114 |            30 |
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1997-07-24 | PU_CLERK   |  2800.00 |           NULL |        114 |            30 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1998-11-15 | PU_CLERK   |  2600.00 |           NULL |        114 |            30 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1999-08-10 | PU_CLERK   |  2500.00 |           NULL |        114 |            30 |
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1996-07-18 | ST_MAN     |  8000.00 |           NULL |        100 |            50 |
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1997-04-10 | ST_MAN     |  8200.00 |           NULL |        100 |            50 |
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1995-05-01 | ST_MAN     |  7900.00 |           NULL |        100 |            50 |
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1997-10-10 | ST_MAN     |  6500.00 |           NULL |        100 |            50 |
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1999-11-16 | ST_MAN     |  5800.00 |           NULL |        100 |            50 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1997-07-16 | ST_CLERK   |  3200.00 |           NULL |        120 |            50 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1998-09-28 | ST_CLERK   |  2700.00 |           NULL |        120 |            50 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1999-01-14 | ST_CLERK   |  2400.00 |           NULL |        120 |            50 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 2000-03-08 | ST_CLERK   |  2200.00 |           NULL |        120 |            50 |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1997-08-20 | ST_CLERK   |  3300.00 |           NULL |        121 |            50 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1997-10-30 | ST_CLERK   |  2800.00 |           NULL |        121 |            50 |
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1997-02-16 | ST_CLERK   |  2500.00 |           NULL |        121 |            50 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1999-04-10 | ST_CLERK   |  2100.00 |           NULL |        121 |            50 |
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1996-06-14 | ST_CLERK   |  3300.00 |           NULL |        122 |            50 |
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1998-08-26 | ST_CLERK   |  2900.00 |           NULL |        122 |            50 |
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1999-12-12 | ST_CLERK   |  2400.00 |           NULL |        122 |            50 |
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 2000-02-06 | ST_CLERK   |  2200.00 |           NULL |        122 |            50 |
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1995-07-14 | ST_CLERK   |  3600.00 |           NULL |        123 |            50 |
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1997-10-26 | ST_CLERK   |  3200.00 |           NULL |        123 |            50 |
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1998-02-12 | ST_CLERK   |  2700.00 |           NULL |        123 |            50 |
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1998-04-06 | ST_CLERK   |  2500.00 |           NULL |        123 |            50 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1995-10-17 | ST_CLERK   |  3500.00 |           NULL |        124 |            50 |
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1997-01-29 | ST_CLERK   |  3100.00 |           NULL |        124 |            50 |
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1998-03-15 | ST_CLERK   |  2600.00 |           NULL |        124 |            50 |
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1998-07-09 | ST_CLERK   |  2500.00 |           NULL |        124 |            50 |
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1996-10-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1997-01-05 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1997-03-10 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 |
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1999-10-15 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 |
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 2000-01-29 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 |
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1997-01-30 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1997-03-24 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1997-08-20 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1998-03-30 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1998-12-09 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1999-11-23 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1996-01-30 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1996-03-04 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1996-08-01 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1997-03-10 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1997-12-15 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1998-11-03 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1997-11-11 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1999-03-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 2000-01-24 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 2000-02-23 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 2000-03-24 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 2000-04-21 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1997-03-11 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1998-03-23 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1998-01-24 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1999-02-23 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1999-03-24 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 2000-04-21 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1996-05-11 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1997-03-19 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1998-03-24 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1998-04-23 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1999-05-24 | SA_REP     |  7000.00 |           0.15 |        149 |          NULL |
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 2000-01-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1998-01-24 | SH_CLERK   |  3200.00 |           NULL |        120 |            50 |
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1998-02-23 | SH_CLERK   |  3100.00 |           NULL |        120 |            50 |
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1999-06-21 | SH_CLERK   |  2500.00 |           NULL |        120 |            50 |
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 2000-02-03 | SH_CLERK   |  2800.00 |           NULL |        120 |            50 |
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1996-01-27 | SH_CLERK   |  4200.00 |           NULL |        121 |            50 |
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1997-02-20 | SH_CLERK   |  4100.00 |           NULL |        121 |            50 |
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1998-06-24 | SH_CLERK   |  3400.00 |           NULL |        121 |            50 |
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1999-02-07 | SH_CLERK   |  3000.00 |           NULL |        121 |            50 |
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1997-06-14 | SH_CLERK   |  3800.00 |           NULL |        122 |            50 |
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1997-08-13 | SH_CLERK   |  3600.00 |           NULL |        122 |            50 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1998-07-11 | SH_CLERK   |  2900.00 |           NULL |        122 |            50 |
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1999-12-19 | SH_CLERK   |  2500.00 |           NULL |        122 |            50 |
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1996-02-04 | SH_CLERK   |  4000.00 |           NULL |        123 |            50 |
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1997-03-03 | SH_CLERK   |  3900.00 |           NULL |        123 |            50 |
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1998-07-01 | SH_CLERK   |  3200.00 |           NULL |        123 |            50 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1999-03-17 | SH_CLERK   |  2800.00 |           NULL |        123 |            50 |
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1998-04-24 | SH_CLERK   |  3100.00 |           NULL |        124 |            50 |
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1998-05-23 | SH_CLERK   |  3000.00 |           NULL |        124 |            50 |
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1999-06-21 | SH_CLERK   |  2600.00 |           NULL |        124 |            50 |
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 2000-01-13 | SH_CLERK   |  2600.00 |           NULL |        124 |            50 |
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-17 | AD_ASST    |  4400.00 |           NULL |        101 |            10 |
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1996-02-17 | MK_MAN     | 13000.00 |           NULL |        100 |            20 |
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1997-08-17 | MK_REP     |  6000.00 |           NULL |        201 |            20 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1994-06-07 | HR_REP     |  6500.00 |           NULL |        101 |            40 |
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1994-06-07 | PR_REP     | 10000.00 |           NULL |        101 |            70 |
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1994-06-07 | AC_MGR     | 12000.00 |           NULL |        101 |           110 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1994-06-07 | AC_ACCOUNT |  8300.00 |           NULL |        205 |           110 |
|         900 | Ram         | NULL        | NULL     | NULL               | NULL       | AC_MGR     |     NULL |           NULL |       NULL |            10 |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
108 rows in set (0.00 sec)                                                                                                                                    
                                                                                                                                                              
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'uni
on select * from departments' at line 1                                                                                                                       
mysql> select * from employees  union select * from departments;                                                                                              
ERROR 1222 (21000): The used SELECT statements have a different number of columns                                                                             
mysql> select department_id from employees  union select * from departments;                                                                                  
ERROR 1222 (21000): The used SELECT statements have a different number of columns                                                                             
mysql> select department_id from employees  union select department_id from departments;                                                                      
+---------------+                                                                                                                                             
| department_id |                                                                                                                                             
+---------------+                                                                                                                                             
|          NULL |                                                                                                                                             
|            10 |                                                                                                                                             
|            20 |                                                                                                                                             
|            30 |                                                                                                                                             
|            40 |                                                                                                                                             
|            50 |                                                                                                                                             
|            60 |                                                                                                                                             
|            70 |                                                                                                                                             
|            80 |                                                                                                                                             
|            90 |                                                                                                                                             
|           100 |                                                                                                                                             
|           110 |                                                                                                                                             
|           120 |                                                                                                                                             
|           130 |                                                                                                                                             
|           140 |                                                                                                                                             
|           150 |                                                                                                                                             
|           160 |                                                                                                                                             
|           170 |                                                                                                                                             
|           180 |                                                                                                                                             
|           190 |                                                                                                                                             
|           200 |                                                                                                                                             
|           210 |                                                                                                                                             
|           220 |                                                                                                                                             
|           230 |                                                                                                                                             
|           240 |                                                                                                                                             
|           250 |                                                                                                                                             
|           260 |                                                                                                                                             
|           270 |                                                                                                                                             
+---------------+                                                                                                                                             
28 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select department_id from employees  union all select department_id from departments;                                                                  
+---------------+                                                                                                                                             
| department_id |                                                                                                                                             
+---------------+                                                                                                                                             
|          NULL |                                                                                                                                             
|            10 |                                                                                                                                             
|            10 |                                                                                                                                             
|            20 |                                                                                                                                             
|            20 |                                                                                                                                             
|            30 |                                                                                                                                             
|            30 |                                                                                                                                             
|            30 |                                                                                                                                             
|            30 |                                                                                                                                             
|            30 |                                                                                                                                             
|            30 |                                                                                                                                             
|            40 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            60 |                                                                                                                                             
|            60 |                                                                                                                                             
|            60 |                                                                                                                                             
|            60 |                                                                                                                                             
|            60 |                                                                                                                                             
|            70 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            90 |                                                                                                                                             
|            90 |                                                                                                                                             
|            90 |                                                                                                                                             
|           100 |                                                                                                                                             
|           100 |                                                                                                                                             
|           100 |                                                                                                                                             
|           100 |                                                                                                                                             
|           100 |                                                                                                                                             
|           100 |                                                                                                                                             
|           110 |                                                                                                                                             
|           110 |                                                                                                                                             
|            10 |                                                                                                                                             
|            20 |                                                                                                                                             
|            30 |                                                                                                                                             
|            40 |                                                                                                                                             
|            50 |                                                                                                                                             
|            60 |                                                                                                                                             
|            70 |                                                                                                                                             
|            80 |                                                                                                                                             
|            90 |                                                                                                                                             
|           100 |                                                                                                                                             
|           110 |                                                                                                                                             
|           120 |                                                                                                                                             
|           130 |                                                                                                                                             
|           140 |                                                                                                                                             
|           150 |                                                                                                                                             
|           160 |                                                                                                                                             
|           170 |                                                                                                                                             
|           180 |                                                                                                                                             
|           190 |                                                                                                                                             
|           200 |                                                                                                                                             
|           210 |                                                                                                                                             
|           220 |                                                                                                                                             
|           230 |                                                                                                                                             
|           240 |                                                                                                                                             
|           250 |                                                                                                                                             
|           260 |                                                                                                                                             
|           270 |                                                                                                                                             
+---------------+                                                                                                                                             
135 rows in set (0.00 sec)                                                                                                                                    
                                                                                                                                                              
mysql> select department_id from employees  union all select department_id from departments;                                                                  
+---------------+                                                                                                                                             
| department_id |                                                                                                                                             
+---------------+                                                                                                                                             
|          NULL |                                                                                                                                             
|            10 |                                                                                                                                             
|            10 |                                                                                                                                             
|            20 |                                                                                                                                             
|            20 |                                                                                                                                             
|            30 |                                                                                                                                             
|            30 |                                                                                                                                             
|            30 |                                                                                                                                             
|            30 |                                                                                                                                             
|            30 |                                                                                                                                             
|            30 |                                                                                                                                             
|            40 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            50 |                                                                                                                                             
|            60 |                                                                                                                                             
|            60 |                                                                                                                                             
|            60 |                                                                                                                                             
|            60 |                                                                                                                                             
|            60 |                                                                                                                                             
|            70 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            80 |                                                                                                                                             
|            90 |                                                                                                                                             
|            90 |                                                                                                                                             
|            90 |                                                                                                                                             
|           100 |                                                                                                                                             
|           100 |                                                                                                                                             
|           100 |                                                                                                                                             
|           100 |                                                                                                                                             
|           100 |                                                                                                                                             
|           100 |                                                                                                                                             
|           110 |                                                                                                                                             
|           110 |                                                                                                                                             
|            10 |                                                                                                                                             
|            20 |                                                                                                                                             
|            30 |                                                                                                                                             
|            40 |                                                                                                                                             
|            50 |                                                                                                                                             
|            60 |                                                                                                                                             
|            70 |                                                                                                                                             
|            80 |                                                                                                                                             
|            90 |                                                                                                                                             
|           100 |                                                                                                                                             
|           110 |                                                                                                                                             
|           120 |                                                                                                                                             
|           130 |                                                                                                                                             
|           140 |                                                                                                                                             
|           150 |                                                                                                                                             
|           160 |                                                                                                                                             
|           170 |                                                                                                                                             
|           180 |                                                                                                                                             
|           190 |                                                                                                                                             
|           200 |                                                                                                                                             
|           210 |                                                                                                                                             
|           220 |                                                                                                                                             
|           230 |                                                                                                                                             
|           240 |                                                                                                                                             
|           250 |                                                                                                                                             
|           260 |                                                                                                                                             
|           270 |                                                                                                                                             
+---------------+                                                                                                                                             
135 rows in set (0.00 sec)                                                                                                                                    
                                                                                                                                                              
mysql> select department_id from employees  intersect select department_id from departments;                                                                  
+---------------+                                                                                                                                             
| department_id |                                                                                                                                             
+---------------+                                                                                                                                             
|            10 |                                                                                                                                             
|            20 |                                                                                                                                             
|            30 |                                                                                                                                             
|            40 |                                                                                                                                             
|            50 |                                                                                                                                             
|            60 |                                                                                                                                             
|            70 |                                                                                                                                             
|            80 |                                                                                                                                             
|            90 |                                                                                                                                             
|           100 |                                                                                                                                             
|           110 |                                                                                                                                             
+---------------+                                                                                                                                             
11 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select department_id from employees  intersect  all select department_id from departments;                                                             
+---------------+                                                                                                                                             
| department_id |                                                                                                                                             
+---------------+                                                                                                                                             
|            10 |                                                                                                                                             
|            20 |                                                                                                                                             
|            30 |                                                                                                                                             
|            40 |                                                                                                                                             
|            50 |                                                                                                                                             
|            60 |                                                                                                                                             
|            70 |                                                                                                                                             
|            80 |                                                                                                                                             
|            90 |                                                                                                                                             
|           100 |                                                                                                                                             
|           110 |                                                                                                                                             
+---------------+                                                                                                                                             
11 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select department_id from employees except select department_id from departments;                                                                      
+---------------+                                                                                                                                             
| department_id |                                                                                                                                             
+---------------+                                                                                                                                             
|          NULL |                                                                                                                                             
+---------------+                                                                                                                                             
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select first_name,department_id from employees union select department_id , department_name from departments;                                          
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'sse
lectfirst_name,department_id from employees union select department_id , depa' at line 1                                                                      
mysql> sselect first_name,department_id from employees union select department_id , department_name from departments;                                         
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'sse
lect first_name,department_id from employees union select department_id , dep' at line 1                                                                      
mysql> sselect department_id,first_name from employees union select department_id , department_name from departments;                                         
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'sse
lect department_id,first_name from employees union select department_id , dep' at line 1                                                                      
mysql> select department_id,first_name from employees union select department_id , department_name from departments;                                          
+---------------+----------------------+                                                                                                                      
| department_id | first_name           |                                                                                                                      
+---------------+----------------------+                                                                                                                      
|            90 | Steven               |                                                                                                                      
|            90 | Neena                |                                                                                                                      
|            90 | Lex                  |                                                                                                                      
|            60 | Alexander            |                                                                                                                      
|            60 | Bruce                |                                                                                                                      
|            60 | David                |                                                                                                                      
|            60 | Valli                |                                                                                                                      
|            60 | Diana                |                                                                                                                      
|           100 | Nancy                |                                                                                                                      
|           100 | Daniel               |                                                                                                                      
|           100 | John                 |                                                                                                                      
|           100 | Ismael               |                                                                                                                      
|           100 | Jose Manuel          |                                                                                                                      
|           100 | Luis                 |                                                                                                                      
|            30 | Den                  |                                                                                                                      
|            30 | Alexander            |                                                                                                                      
|            30 | Shelli               |                                                                                                                      
|            30 | Sigal                |                                                                                                                      
|            30 | Guy                  |                                                                                                                      
|            30 | Karen                |                                                                                                                      
|            50 | Matthew              |                                                                                                                      
|            50 | Adam                 |                                                                                                                      
|            50 | Payam                |                                                                                                                      
|            50 | Shanta               |                                                                                                                      
|            50 | Kevin                |                                                                                                                      
|            50 | Julia                |                                                                                                                      
|            50 | Irene                |                                                                                                                      
|            50 | James                |                                                                                                                      
|            50 | Steven               |                                                                                                                      
|            50 | Laura                |                                                                                                                      
|            50 | Mozhe                |                                                                                                                      
|            50 | TJ                   |                                                                                                                      
|            50 | Jason                |                                                                                                                      
|            50 | Michael              |                                                                                                                      
|            50 | Ki                   |                                                                                                                      
|            50 | Hazel                |                                                                                                                      
|            50 | Renske               |                                                                                                                      
|            50 | Stephen              |                                                                                                                      
|            50 | John                 |                                                                                                                      
|            50 | Joshua               |                                                                                                                      
|            50 | Trenna               |                                                                                                                      
|            50 | Curtis               |                                                                                                                      
|            50 | Randall              |                                                                                                                      
|            50 | Peter                |                                                                                                                      
|            80 | John                 |                                                                                                                      
|            80 | Karen                |                                                                                                                      
|            80 | Alberto              |                                                                                                                      
|            80 | Gerald               |                                                                                                                      
|            80 | Eleni                |                                                                                                                      
|            80 | Peter                |                                                                                                                      
|            80 | David                |                                                                                                                      
|            80 | Christopher          |                                                                                                                      
|            80 | Nanette              |                                                                                                                      
|            80 | Oliver               |                                                                                                                      
|            80 | Janette              |                                                                                                                      
|            80 | Patrick              |                                                                                                                      
|            80 | Allan                |                                                                                                                      
|            80 | Lindsey              |                                                                                                                      
|            80 | Louise               |                                                                                                                      
|            80 | Sarath               |                                                                                                                      
|            80 | Clara                |                                                                                                                      
|            80 | Danielle             |                                                                                                                      
|            80 | Mattea               |                                                                                                                      
|            80 | Sundar               |                                                                                                                      
|            80 | Amit                 |                                                                                                                      
|            80 | Lisa                 |                                                                                                                      
|            80 | Harrison             |                                                                                                                      
|            80 | Tayler               |                                                                                                                      
|            80 | William              |                                                                                                                      
|            80 | Elizabeth            |                                                                                                                      
|            80 | Sundita              |                                                                                                                      
|            80 | Ellen                |                                                                                                                      
|            80 | Alyssa               |                                                                                                                      
|            80 | Jonathon             |                                                                                                                      
|            80 | Jack                 |                                                                                                                      
|          NULL | Kimberely            |                                                                                                                      
|            80 | Charles              |                                                                                                                      
|            50 | Winston              |                                                                                                                      
|            50 | Jean                 |                                                                                                                      
|            50 | Martha               |                                                                                                                      
|            50 | Girard               |                                                                                                                      
|            50 | Nandita              |                                                                                                                      
|            50 | Alexis               |                                                                                                                      
|            50 | Anthony              |                                                                                                                      
|            50 | Kelly                |                                                                                                                      
|            50 | Jennifer             |                                                                                                                      
|            50 | Timothy              |                                                                                                                      
|            50 | Sarah                |                                                                                                                      
|            50 | Britney              |                                                                                                                      
|            50 | Samuel               |                                                                                                                      
|            50 | Vance                |                                                                                                                      
|            50 | Alana                |                                                                                                                      
|            50 | Donald               |                                                                                                                      
|            50 | Douglas              |                                                                                                                      
|            10 | Jennifer             |                                                                                                                      
|            20 | Michael              |                                                                                                                      
|            20 | Pat                  |                                                                                                                      
|            40 | Susan                |                                                                                                                      
|            70 | Hermann              |                                                                                                                      
|           110 | Shelley              |                                                                                                                      
|           110 | William              |                                                                                                                      
|            10 | Ram                  |                                                                                                                      
|            10 | Administration       |                                                                                                                      
|            20 | Marketing            |                                                                                                                      
|            30 | Purchasing           |                                                                                                                      
|            40 | Human Resources      |                                                                                                                      
|            50 | Shipping             |                                                                                                                      
|            60 | IT                   |                                                                                                                      
|            70 | Public Relations     |                                                                                                                      
|            80 | Sales                |                                                                                                                      
|            90 | Executive            |                                                                                                                      
|           100 | Finance              |                                                                                                                      
|           110 | Accounting           |                                                                                                                      
|           120 | Treasury             |                                                                                                                      
|           130 | Corporate Tax        |                                                                                                                      
|           140 | Control And Credit   |                                                                                                                      
|           150 | Shareholder Services |                                                                                                                      
|           160 | Benefits             |                                                                                                                      
|           170 | Manufacturing        |                                                                                                                      
|           180 | Construction         |                                                                                                                      
|           190 | Contracting          |                                                                                                                      
|           200 | Operations           |                                                                                                                      
|           210 | IT Support           |                                                                                                                      
|           220 | NOC                  |                                                                                                                      
|           230 | IT Helpdesk          |                                                                                                                      
|           240 | Government Sales     |                                                                                                                      
|           250 | Retail Sales         |                                                                                                                      
|           260 | Recruiting           |                                                                                                                      
|           270 | Payroll              |                                                                                                                      
+---------------+----------------------+                                                                                                                      
129 rows in set (0.00 sec)                                                                                                                                    
                                                                                                                                                              
mysql> select employee_id from employees intersect select manager_id from employees;                                                                          
+-------------+                                                                                                                                               
| employee_id |                                                                                                                                               
+-------------+                                                                                                                                               
|         100 |                                                                                                                                               
|         101 |                                                                                                                                               
|         102 |                                                                                                                                               
|         103 |                                                                                                                                               
|         108 |                                                                                                                                               
|         114 |                                                                                                                                               
|         120 |                                                                                                                                               
|         121 |                                                                                                                                               
|         122 |                                                                                                                                               
|         123 |                                                                                                                                               
|         124 |                                                                                                                                               
|         145 |                                                                                                                                               
|         146 |                                                                                                                                               
|         147 |                                                                                                                                               
|         148 |                                                                                                                                               
|         149 |                                                                                                                                               
|         201 |                                                                                                                                               
|         205 |                                                                                                                                               
+-------------+                                                                                                                                               
18 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select employee_id from employees where employee_is in (select manager_id from employees);                                                             
ERROR 1054 (42S22): Unknown column 'employee_is' in 'IN/ALL/ANY subquery'                                                                                     
mysql> select employee_id from employees where employee_id in (select manager_id from employees);                                                             
+-------------+                                                                                                                                               
| employee_id |                                                                                                                                               
+-------------+                                                                                                                                               
|         100 |                                                                                                                                               
|         101 |                                                                                                                                               
|         102 |                                                                                                                                               
|         103 |                                                                                                                                               
|         108 |                                                                                                                                               
|         114 |                                                                                                                                               
|         120 |                                                                                                                                               
|         121 |                                                                                                                                               
|         122 |                                                                                                                                               
|         123 |                                                                                                                                               
|         124 |                                                                                                                                               
|         145 |                                                                                                                                               
|         146 |                                                                                                                                               
|         147 |                                                                                                                                               
|         148 |                                                                                                                                               
|         149 |                                                                                                                                               
|         201 |                                                                                                                                               
|         205 |                                                                                                                                               
+-------------+                                                                                                                                               
18 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql>                                                                                                                                                        
Session closed.                                                                                                                                               
 
Black on White
White On Black
Color Terminal
Monochrome
ERROR 1054 (42S22): Unknown column 'locationss.location_id' in 'where clause'                                                


                                                                                                                                                              
mysql> select department_name,location_id from employees inner join  departments where employees.department_id = departments.department_id ;                  
+------------------+-------------+                                                                                                                            
| department_name  | location_id |                                                                                                                            
+------------------+-------------+                                                                                                                            
| Administration   |        1700 |                                                                                                                            
| Administration   |        1700 |                                                                                                                            
| Marketing        |        1800 |                                                                                                                            
| Marketing        |        1800 |   


mysql> select departments.department_name,locations.street_address from locations inner join  departments where locations.location_id = departments.location_i
d ;                                                                                                                                                           
+----------------------+------------------------------------------+                                                                                           
| department_name      | street_address                           |                                                                                           
+----------------------+------------------------------------------+                                                                                           
| IT                   | 2014 Jabberwocky Rd                      |                                                                                           
| Shipping             | 2011 Interiors Blvd                      |                                                                                           
| Administration       | 2004 Charade Rd                          |                                                                                           
| Purchasing           | 2004 Charade Rd                          |                                                                                           
| Executive            | 2004 Charade Rd                          |                                                                                           
| Finance              | 2004 Charade Rd                          |                                                                                           
| Accounting           | 2004 Charade Rd                          |                                                                                           
| Treasury             | 2004 Charade Rd                          |                                                                                           
| Corporate Tax        | 2004 Charade Rd                          |                                                                                           
| Control And Credit   | 2004 Charade Rd                          |                                                                                           
| Shareholder Services | 2004 Charade Rd                          |                                                                                           
| Benefits             | 2004 Charade Rd                          |                                                                                           
| Manufacturing        | 2004 Charade Rd                          |                                                                                           
| Construction         | 2004 Charade Rd                          |                                                                                           
| Contracting          | 2004 Charade Rd                          |                                                                                           
| Operations           | 2004 Charade Rd                          |                                                                                           
| IT Support           | 2004 Charade Rd                          |                                                                                           
| NOC                  | 2004 Charade Rd                          |                                                                                           
| IT Helpdesk          | 2004 Charade Rd                          |                                                                                           
| Government Sales     | 2004 Charade Rd                          |                                                                                           
| Retail Sales         | 2004 Charade Rd                          |                                                                                           
| Recruiting           | 2004 Charade Rd                          |                                                                                           
| Payroll              | 2004 Charade Rd                          |                                                                                           
| Marketing            | 147 Spadina Ave                          |                                                                                           
| Human Resources      | 8204 Arthur St                           |                                                                                           
| Sales                | Magdalen Centre, The Oxford Science Park |                                                                                           
| Public Relations     | Schwanthalerstr. 7031                    |                                                                                           
+----------------------+------------------------------------------+                                                                                           
27 rows in set (0.01 sec)                                                                                                                                     
                          