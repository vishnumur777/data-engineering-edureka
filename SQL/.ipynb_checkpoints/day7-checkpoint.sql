                                                                                                                                                              
mysql> select * from employees where department_id like '1%';   

10 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select * from employees where first_name like '___%'; 

                                                                                                         
mysql> select * from employees where first_name like '___';                                                                                                   
+-------------+------------+-----------+----------+--------------+------------+----------+----------+----------------+------------+---------------+           
| employee_id | first_name | last_name | email    | phone_number | hire_date  | job_id   | salary   | commission_pct | manager_id | department_id |           
+-------------+------------+-----------+----------+--------------+------------+----------+----------+----------------+------------+---------------+           
|         102 | Lex        | De Haan   | LDEHAAN  | 515.123.4569 | 1993-01-13 | AD_VP    | 17000.00 |           NULL |        100 |            90 |           
|         114 | Den        | Raphaely  | DRAPHEAL | 515.127.4561 | 1994-12-07 | PU_MAN   | 11000.00 |           NULL |        100 |            30 |           
|         118 | Guy        | Himuro    | GHIMURO  | 515.127.4565 | 1998-11-15 | PU_CLERK |  2600.00 |           NULL |        114 |            30 |           
|         202 | Pat        | Fay       | PFAY     | 603.123.6666 | 1997-08-17 | MK_REP   |  6000.00 |           NULL |        201 |            20 |           
|         900 | Ram        | NULL      | NULL     | NULL         | NULL       | AC_MGR   |     NULL |           NULL |       NULL |            10 |           
+-------------+------------+-----------+----------+--------------

                                                                                                                                                              
mysql> select employee_id,first_name,department_name from employees emp join departments dept on emp.department_id = dept.department_id;                      
+-------------+-------------+------------------+                                                                                                              
| employee_id | first_name  | department_name  |                                                                                                              
+-------------+-------------+------------------+                                                                                                              
|         200 | Jennifer    | Administration   |                                                                                                              
|         900 | Ram         | Administration   |                                                                                                              
|         201 | Michael     | Marketing        |                                                                                                              
|         202 | Pat         | Marketing        |     

                                                                                                                                                              
mysql> select employee_id,first_name,salary,department_name from employees emp join departments dept on emp.department_id = dept.department_id and emp.salary 
> 2000;
+-------------+-------------+----------+------------------+                                                                                                   
| employee_id | first_name  | salary   | department_name  |                                                                                                   
+-------------+-------------+----------+------------------+                                                                                                   
|         100 | Steven      | 24000.00 | Executive        |                                                                                                   
|         101 | Neena       | 17000.00 | Executive        | 


mysql> select employee_id,first_name,salary,department_name from employees emp join departments dept on emp.department_id = dept.department_id where emp.salar
y > 2000;                                                                                                                                                     
+-------------+-------------+----------+------------------+                                                                                                   
| employee_id | first_name  | salary   | department_name  |                                                                                                   
+-------------+-------------+----------+------------------+                                                                                                   
|         100 | Steven      | 24000.00 | Executive        |                                                                                                   
|         101 | Neena       | 17000.00 | Executive        | 

mysql> select department_name , country_id from departments join locations on departments.location_id = locations.location_id ;                               
+----------------------+------------+                                                                                                                         
| department_name      | country_id |                                                                                                                         
+----------------------+------------+                                                                                                                         
| Administration       | US         |                                                                                                                         
| Marketing            | CA         |                                                                                                                         
| Purchasing           | US         |                                                                                                                         
| Human Resources      | UK         |                                                                                                                         
| Shipping             | US         |                                                                                                                         
| IT                   | US         |                                                                                                                         
| Public Relations     | DE         |                                                                                                                         
| Sales                | UK         |                                                                                                                         
| Executive            | US         |                                                                                                                         
| Finance              | US         |                                                                                                                         
| Accounting           | US         |                                                                                                                         
| Treasury             | US         |                                                                                                                         
| Corporate Tax        | US         |                                                                                                                         
| Control And Credit   | US         |                                                                                                                         
| Shareholder Services | US         |                                                                                                                         
| Benefits             | US         |                                                                                                                         
| Manufacturing        | US         |                                                                                                                         
| Construction         | US         |                                                                                                                         
| Contracting          | US         |                                                                                                                         
| Operations           | US         |                                                                                                                         
| IT Support           | US         |                                                                                                                         
| NOC                  | US         |                                                                                                                         
| IT Helpdesk          | US         |                                                                                                                         
| Government Sales     | US         |                                                                                                                         
| Retail Sales         | US         |                                                                                                                         
| Recruiting           | US         |                                                                                                                         
| Payroll              | US         |                                                                                                                         
+----------------------+------------+                                                                                                                         
27 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select department_name , country_name from departments join locations on departments.location_id = locations.location_id join countries on locations.co
untry_id = countries.country_id;
+----------------------+--------------------------+                                                                                                           
| department_name      | country_name             |                                                                                                           
+----------------------+--------------------------+                                                                                                           
| Administration       | United States of America |                                                                                                           
| Marketing            | Canada                   |                                                                                                           
| Purchasing           | United States of America |                                                                                                           
| Human Resources      | United Kingdom           |                                                                                                           
| Shipping             | United States of America |                                                                                                           
| IT                   | United States of America |                                                                                                           
| Public Relations     | Germany                  |                                                                                                           
| Sales                | United Kingdom           |                                                                                                           
| Executive            | United States of America |                                                                                                           
| Finance              | United States of America |                                                                                                           
| Accounting           | United States of America |                                                                                                           
| Treasury             | United States of America |                                                                                                           
| Corporate Tax        | United States of America |                                                                                                           
| Control And Credit   | United States of America |                                                                                                           
| Shareholder Services | United States of America |                                                                                                           
| Benefits             | United States of America |                                                                                                           
| Manufacturing        | United States of America |                                                                                                           
| Construction         | United States of America |                                                                                                           
| Contracting          | United States of America |                                                                                                           
| Operations           | United States of America |                                                                                                           
| IT Support           | United States of America |                                                                                                           
| NOC                  | United States of America |                                                                                                           
| IT Helpdesk          | United States of America |                                                                                                           
| Government Sales     | United States of America |                                                                                                           
| Retail Sales         | United States of America |                                                                                                           
| Recruiting           | United States of America |                                                                                                           
| Payroll              | United States of America |                                                                                                           
+----------------------+--------------------------+                                                                                                           
27 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql>                

mysql> select country_name,count(department_name) from countries join locations on countries.country_id = locations.country_id join departments on locations.l
ocation_id = departments.location_id group by countries.country_name;                                                                                         
+--------------------------+------------------------+                                                                                                         
| country_name             | count(department_name) |                                                                                                         
+--------------------------+------------------------+                                                                                                         
| United States of America |                     23 |                                                                                                         
| Canada                   |                      1 |                                                                                                         
| United Kingdom           |                      2 |                                                                                                         
| Germany                  |                      1 |                                                                                                         
+--------------------------+------------------------+                                                                                                         
4 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select country_name,count(department_name) from countries join locations on countries.country_id = locations.country_id join departments on locations.l
ocation_id = departments.location_id group by countries.country_name order by countries.country_name;                                                         
+--------------------------+------------------------+                                                                                                         
| country_name             | count(department_name) |                                                                                                         
+--------------------------+------------------------+                                                                                                         
| Canada                   |                      1 |                                                                                                         
| Germany                  |                      1 |                                                                                                         
| United Kingdom           |                      2 |                                                                                                         
| United States of America |                     23 |                                                                                                         
+--------------------------+------------------------+                                                                                                         
4 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select country_name,count(department_name) from countries join locations on countries.country_id = locations.country_id join departments on locations.l
ocation_id = departments.location_id group by countries.country_name order by countries.country_name limit 2;
+--------------+------------------------+                                                                                                                     
| country_name | count(department_name) |                                                                                                                     
+--------------+------------------------+                                                                                                                     
| Canada       |                      1 |                                                                                                                     
| Germany      |                      1 |                                                                                                                     
+--------------+------------------------+                                                                                                                     
2 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select country_name,count(department_name) from countries join locations on countries.country_id = locations.country_id join departments on locations.l
ocation_id = departments.location_id group by countries.country_name order by countries.country_name desc limit 2;                                            
+--------------------------+------------------------+                                                                                                         
| country_name             | count(department_name) |                                                                                                         
+--------------------------+------------------------+                                                                                                         
| United States of America |                     23 |                                                                                                         
| United Kingdom           |                      2 |                                                                                                         
+--------------------------+------------------------+                                                                                                         
2 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> select country_name,count(department_name) as cnt from countries join locations on countries.country_id = locations.country_id join departments on loca
tions.location_id = departments.location_id group by countries.country_name order by cnt desc limit 2;                                                        
+--------------------------+-----+                                                                                                                            
| country_name             | cnt |                                                                                                                            
+--------------------------+-----+                                                                                                                            
| United States of America |  23 |                                                                                                                            
| United Kingdom           |   2 |                                                                                                                            
+--------------------------+-----+                                                                                                                            
2 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql>                     


                                                                                                                                                              
mysql> select country_name,count(employee_id) from countries join locations on countries.country_id = locations.country_id join departments on locations.locat
ion_id = departments.location_id join employees on departments.department_id = employees.department_id  group by countries.country_name ;                     
+--------------------------+--------------------+                                                                                                             
| country_name             | count(employee_id) |                                                                                                             
+--------------------------+--------------------+                                                                                                             
| United States of America |                 69 |                                                                                                             
| Canada                   |                  2 |                                                                                                             
| United Kingdom           |                 35 |                                                                                                             
| Germany                  |                  1 |                                                                                                             
+--------------------------+--------------------+                                                                                                             
4 rows in set (0.00 sec)            


\\full outer join
mysql> select first_name ,department_name from departments left outer join employees on employees.department_id = departments.department_id union  select firs
t_name ,department_name from departments right outer  join employees on employees.department_id = departments.department_id;                                  
+-------------+----------------------+                                                                                                                        
| first_name  | department_name      |                                                                                                                        
+-------------+----------------------+                                                                                                                        
| Jennifer    | Administration       |                                                                                                                        
| Ram         | Administration       |                                                                                                                        
| Michael     | Marketing            |                                                                                                                        
| Pat         | Marketing            |                                                                                                                        
| Den         | Purchasing           |                                                                                                                        
| Alexander   | Purchasing           |                                                                                                                        
| Shelli      | Purchasing           |        



mysql> select first_name ,employees.manager_id,departments.manager_id from departments left join employees on employees.department_id = departments.department
_id;
+-------------+------------+------------+                                                                                                                     
| first_name  | manager_id | manager_id |                                                                                                                     
+-------------+------------+------------+                                                                                                                     
| NULL        |       NULL |       NULL |                                                                                                                     
| NULL        |       NULL |       NULL |                                                                                                                     
| NULL        |       NULL |       NULL |         


mysql> select first_name ,employees.manager_id,departments.manager_id from employees right join departments on employees.department_id = departments.departmen
t_id;
+-------------+------------+------------+                                                                                                                     
| first_name  | manager_id | manager_id |                                                                                                                     
+-------------+------------+------------+                                                                                                                     
| NULL        |       NULL |       NULL |                                                                                                                     
| NULL        |       NULL |       NULL |                                                                                                                     
| NULL        |       NULL |       NULL |                                                                                                                     
| NULL        |       NULL |       NULL |                                                                                                                     
| NULL        |       NULL |       NULL |                                                                                                                     
| NULL        |       NULL |       NULL |                                                                                                                     
| NULL        |       NULL |       NULL |                                                                                                                     
| NULL        |       NULL |       NULL |                                                                                                                     
| NULL        |       NULL |       NULL |                  


// a-b
mysql> select manager_id from employees except  select manager_id from departments;                                                                           
+------------+                                                                                                                                                
| manager_id |                                                                                                                                                
+------------+                                                                                                                                                
|        101 |                                                                                                                                                
|        102 |                                                                                                                                                
|        120 |                                                                                                                                                
|        122 |                                                                                                                                                
|        123 |                                                                                                                                                
|        124 |                                                                                                                                                
|        146 |                                                                                                                                                
|        147 |                                                                                                                                                
|        148 |                                                                                                                                                
|        149 |                                                                                                                                                
+------------+                                                                                                                                                
10 rows in set (0.00 sec)                                                                                                                                     
               


// anti sql                                                                                                                                                    
mysql> select first_name ,employees.manager_id,departments.manager_id from departments left join employees on employees.department_id = departments.department
_id where departments.department_id is null;                                                                                                                  
Empty set (0.01 sec)                                                                                                                                          
                                   


                                                                                                                                                            
mysql> select upper(first_name),upper(last_name), concat(first_name,last_name) from employees;                                                                
+-------------------+------------------+------------------------------+                                                                                       
| upper(first_name) | upper(last_name) | concat(first_name,last_name) |                                                                                       
+-------------------+------------------+------------------------------+                                                                                       
| RAM               | NULL             | NULL                         |                                                                                       
| ELLEN             | ABEL             | EllenAbel                    |                                                                                       
| SUNDAR            | ANDE             | SundarAnde                   |                                                                                       
| MOZHE             | ATKINSON         | MozheAtkinson                |                                                                                       
| DAVID             | AUSTIN           | DavidAustin                  |                                                                                       
| HERMANN           | BAER             | HermannBaer                  |                                                                                       
| SHELLI            | BAIDA            | ShelliBaida                  |                                                                                       
| AMIT              | BANDA            | AmitBanda                    |                                                                                       
| ELIZABETH         | BATES            | ElizabethBates               |                                                                                       
| SARAH             | BELL             | SarahBell                    |             



                                                                                                                                                             
mysql> select  concat(first_name,salary) from employees;                                                                                                      
+---------------------------+                                                                                                                                 
| concat(first_name,salary) |                                                                                                                                 
+---------------------------+                                                                                                                                 
| Steven24000.00            |                                                                                                                                 
| Neena17000.00             |                                                                                                                                 
| Lex17000.00               |     

mysql> select  concat(first_name,'-',salary) from employees;                                                                                                  
+-------------------------------+                                                                                                                             
| concat(first_name,'-',salary) |                                                                                                                             
+-------------------------------+                                                                                                                             
| Steven-24000.00               |                                                                                                                             
| Neena-17000.00                |                                                                                                                             
| Lex-17000.00                  |                                                                                                                             
| Alexander-9000.00             |      


mysql> select concat(upper(first_name) , '-',upper(last_name)) from employees;                                                                                
+--------------------------------------------------+                                                                                                          
| concat(upper(first_name) , '-',upper(last_name)) |                                                                                                          
+--------------------------------------------------+                                                                                                          
| NULL                                             |                                                                                                          
| ELLEN-ABEL                                       |                                                                                                          
| SUNDAR-ANDE                                      |                                                                                                          
| MOZHE-ATKINSON                                   |       



mysql> select upper(first_name) from employees where length(first_name)>5 ;                                                                                   
+-------------------+                                                                                                                                         
| upper(first_name) |                                                                                                                                         
+-------------------+                                                                                                                                         
| SUNDAR            |                                                                                                                                         
| HERMANN           |                                                                                                                                         
| SHELLI            |                                                                                                                                         
| ELIZABETH         |                                                                                                                                         
| HARRISON          |     


mysql> select substr(first_name,5) from employees  ;                                                                                                          
+----------------------+                                                                                                                                      
| substr(first_name,5) |                                                                                                                                      
+----------------------+                                                                                                                                      
|                      |                                                                                                                                      
| n                    |                                                                                                                                      
| ar                   |                                                                                                                                      
| e                    |                                                                                                                                      
| d                    |                                                                                                                                      
| ann                  |            


mysql> select lpad(first_name,5,0) from employees  ;                                                                                                          
+----------------------+                                                                                                                                      
| lpad(first_name,5,0) |                                                                                                                                      
+----------------------+                                                                                                                                      
| 00Ram                |                                                                                                                                      
| Ellen                |                                                                                                                                      
| Sunda                |                                                                                                                                      
| Mozhe                |                                                                                                                                      
| David                |        


mysql> select rpad(first_name,10,0) from employees  ;                                                                                                         
+-----------------------+                                                                                                                                     
| rpad(first_name,10,0) |                                                                                                                                     
+-----------------------+                                                                                                                                     
| Ram0000000            |                                                                                                                                     
| Ellen00000            |                                                                                                                                     
| Sundar0000            |                                                                                                                                     
| Mozhe00000            |                                                                                                                                     
| David00000            |                                                                                                                                     
| Hermann000            |                                                                                                                                     
| Shelli0000            |      



mysql> select floor(salary) from employees;                                                                                                                   
+---------------+                                                                                                                                             
| floor(salary) |                                                                                                                                             
+---------------+                                                                                                                                             
|         24000 |                                                                                                                                             
|         17000 |                                                                                                                                             
|         17000 |                                                                                                                                             
|          9000 |           





mysql> select round(salary) from employees;                                                                                                                   
+---------------+                                                                                                                                             
| round(salary) |                                                                                                                                             
+---------------+                                                                                                                                             
|         24000 |                                                                                                                                             
|         17000 |                                                                                                                                             
|         17000 |                                                                                                                                             
|          9000 |                                                                                                                                             
|          6000 |     


                                                                                                                                                              
mysql> select round(salary,1) from employees;                                                                                                                 
+-----------------+                                                                                                                                           
| round(salary,1) |                                                                                                                                           
+-----------------+                                                                                                                                           
|         24000.0 |                                                                                                                                           
|         17000.0 |                                                                                                                                           
|         17000.0 |    





                                                                                                                                                           
mysql> select round(123.345,-1);                                                                                                                              
+-------------------+                                                                                                                                         
| round(123.345,-1) |                                                                                                                                         
+-------------------+                                                                                                                                         
|               120 |                                                                                                                                         
+-------------------+                                                                                                                                         
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select round(123.345,-2);                                                                                                                              
+-------------------+                                                                                                                                         
| round(123.345,-2) |                                                                                                                                         
+-------------------+                                                                                                                                         
|               100 |                                                                                                                                         
+-------------------+                                                                                                                                         
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql>      


mysql> select floor(3.9) ;                                                                                                                                    
+------------+                                                                                                                                                
| floor(3.9) |                                                                                                                                                
+------------+                                                                                                                                                
|          3 |                                                                                                                                                
+------------+                                                                                                                                                
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select ceil(3.9) ;                                                                                                                                     
+-----------+                                                                                                                                                 
| ceil(3.9) |                                                                                                                                                 
+-----------+                                                                                                                                                 
|         4 |                                                                                                                                                 
+-----------+                                                                                                                                                 
1 row in set (0.00 sec)  

                                                                                                                                                              
mysql> select truncate(123.345,2);                                                                                                                            
+---------------------+                                                                                                                                       
| truncate(123.345,2) |                                                                                                                                       
+---------------------+                                                                                                                                       
|              123.34 |                                                                                                                                       
+---------------------+                                                                                                                                       
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select truncate(123.345,-2);                                                                                                                           
+----------------------+                                                                                                                                      
| truncate(123.345,-2) |                                                                                                                                      
+----------------------+                                                                                                                                      
|                  100 |                                                                                                                                      
+----------------------+                                                                                                                                      
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql>       

                                                                                                                                                          
mysql> select current_date;                                                                                                                                   
+--------------+                                                                                                                                              
| current_date |                                                                                                                                              
+--------------+                                                                                                                                              
| 2025-05-27   |                                                                                                                                              
+--------------+                                                                                                                                              
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select current_time;                                                                                                                                   
+--------------+                                                                                                                                              
| current_time |                                                                                                                                              
+--------------+                                                                                                                                              
| 07:12:59     |                                                                                                                                              
+--------------+                                                                                                                                              
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select current_timestamp;                                                                                                                              
+---------------------+                                                                                                                                       
| current_timestamp   |                                                                                                                                       
+---------------------+                                                                                                                                       
| 2025-05-27 07:14:02 |                                                                                                                                       
+---------------------+                                                                                                                                       
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql>                                  

mysql> select adddate(current_date,5);                                                                                                                        
+-------------------------+                                                                                                                                   
| adddate(current_date,5) |                                                                                                                                   
+-------------------------+                                                                                                                                   
| 2025-06-01              |                                                                                                                                   
+-------------------------+                                                                                                                                   
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql>                     

mysql> select adddate(current_date,interval 5 month);                                                                                                         
+----------------------------------------+                                                                                                                    
| adddate(current_date,interval 5 month) |                                                                                                                    
+----------------------------------------+                                                                                                                    
| 2025-10-27                             |                                                                                                                    
+----------------------------------------+                                                                                                                    
1 row in set (0.00 sec)                                                                                                                                       
                             

   mysql> select adddate(current_date,interval 5 year);                                                                                                          
+---------------------------------------+                                                                                                                     
| adddate(current_date,interval 5 year) |                                                                                                                     
+---------------------------------------+                                                                                                                     
| 2030-05-27                            |                                                                                                                     
+---------------------------------------+                                                                                                                     
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql>             

                                                                                                                                                              
mysql> select datediff('2025-04-03','2023-03-03');                                                                                                            
+-------------------------------------+                                                                                                                       
| datediff('2025-04-03','2023-03-03') |                                                                                                                       
+-------------------------------------+                                                                                                                       
|                                 762 |                                                                                                                       
+-------------------------------------+                                                                                                                       
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql>                  


mysql> select extract(year from current_date);                                                                                                                
+---------------------------------+                                                                                                                           
| extract(year from current_date) |                                                                                                                           
+---------------------------------+                                                                                                                           
|                            2025 |                                                                                                                           
+---------------------------------+                                                                                                                           
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select extract(month from current_date);                                                                                                               
+----------------------------------+                                                                                                                          
| extract(month from current_date) |                                                                                                                          
+----------------------------------+                                                                                                                          
|                                5 |                                                                                                                          
+----------------------------------+                                                                                                                          
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select extract(month from '2025-04-04');                                                                                                               
+----------------------------------+                                                                                                                          
| extract(month from '2025-04-04') |                                                                                                                          
+----------------------------------+                                                                                                                          
|                                4 |                                                                                                                          
+----------------------------------+                                                                                                                          
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql>        

| NULL       |                                                                                                                                                
+------------+                                                                                                                                                
108 rows in set (0.00 sec)                                                                                                                                    
                                                                                                                                                              
mysql> select year(hire_date) from employees;                                                                                                                 
+-----------------+                                                                                                                                           
| year(hire_date) |                                                                                                                                           
+-----------------+                                                                                                                                           
|            1987 |                                                                                                                                           
|            1989 |                                                                                                                                           
|            1993 |                                                                                                                                           
|            1990 |     

                                                                                                                                                              
mysql> select year(hire_date) as yy ,count(*) from employees group by yy ;                                                                                    
+------+----------+                                                                                                                                           
| yy   | count(*) |                                                                                                                                           
+------+----------+                                                                                                                                           
| 1987 |        2 |                                                                                                                                           
| 1989 |        1 |                                                                                                                                           
| 1993 |        1 |                                                                                                                                           
| 1990 |        1 |                                                                                                                                           
| 1991 |        1 |                                                                                                                                           
| 1997 |       28 |                                                                                                                                           
| 1998 |       23 |                                                                                                                                           
| 1999 |       18 |                                                                                                                                           
| 1994 |        7 |                                                                                                                                           
| 1995 |        4 |                                                                                                                                           
| 1996 |       10 |                                                                                                                                           
| 2000 |       11 |                                                                                                                                           
| NULL |        1 |                                                                                                                                           
+------+----------+                                                                                                                                           
13 rows in set (0.01 sec)                                                                                                                                     
                        
mysql> select month(hire_date) as yy ,count(*) from employees group by yy ;                                                                                   
+------+----------+                                                                                                                                           
| yy   | count(*) |                                                                                                                                           
+------+----------+                                                                                                                                           
|    6 |       11 |                                                                                                                                           
|    9 |        5 |                                                                                                                                           
|    1 |       14 |                                                                                                                                           
|    5 |        6 |                                                                                                                                           
|    2 |       13 |                                                                                                                                           
|    8 |        9 |                                                                                                                                           
|    3 |       17 |                                                                                                                                           
|   12 |        7 |                                                                                                                                           
|    7 |        7 |                                                                                                                                           
|   11 |        5 |                                                                                                                                           
|    4 |        7 |                                                                                                                                           
|   10 |        6 |                                                                                                                                           
| NULL |        1 |                                                                                                                                           
+------+----------+                                                                                                                                           
13 rows in set (0.00 sec)                                                                                                                                     
                        

 mysql> select datediff(current_date,hire_date) from employees;                                                                                                
+----------------------------------+                                                                                                                          
| datediff(current_date,hire_date) |                                                                                                                          
+----------------------------------+                                                                                                                          
|                            13859 |                                                                                                                          
|                            13032 |                                                                                                                          
|                            11822 |                                                                                                                          
|                            12928 |   




mysql> select weekday('2001-04-10' );                                                                                                                         
+------------------------+                                                                                                                                    
| weekday('2001-04-10' ) |                                                                                                                                    
+------------------------+                                                                                                                                    
|                      1 |                                                                                                                                    
+------------------------+                                                                                                                                    
1 row in set (0.00 sec)                                                                                                                                       
                              









mysql> select date_format(current_date,'%d %b %y');                                                                                                           
+--------------------------------------+                                                                                                                      
| date_format(current_date,'%d %b %y') |                                                                                                                      
+--------------------------------------+                                                                                                                      
| 27 May 25                            |                                                                                                                      
+--------------------------------------+                                                                                                                      
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select date_format(current_date,'%a %b %y');                                                                                                           
+--------------------------------------+                                                                                                                      
| date_format(current_date,'%a %b %y') |                                                                                                                      
+--------------------------------------+                                                                                                                      
| Tue May 25                           |                                                                                                                      
+--------------------------------------+                                                                                                                      
1 row in set (0.00 sec)                                                                                                                                       
                       


                                                                                                                                                              
mysql> select date_format(current_date,'%D %b %y');                                                                                                           
+--------------------------------------+                                                                                                                      
| date_format(current_date,'%D %b %y') |                                                                                                                      
+--------------------------------------+                                                                                                                      
| 27th May 25                          |                                                                                                                      
+--------------------------------------+                                                                                                                      
1 row in set (0.00 sec)                                                                                                                                       
                                       

                                                                                                                                                               
mysql> select date_format(current_date,'%D/%b/%y');                                                                                                           
+--------------------------------------+                                                                                                                      
| date_format(current_date,'%D/%b/%y') |                                                                                                                      
+--------------------------------------+                                                                                                                      
| 27th/May/25                          |                                                                                                                      
+--------------------------------------+                                                                                                                      
1 row in set (0.00 sec)                                                                                                                                       


                                                                                                                                                              
mysql> select max(salary) from employees;                                                                                                                     
+-------------+                                                                                                                                               
| max(salary) |                                                                                                                                               
+-------------+                                                                                                                                               
|    24000.00 |                                                                                                                                               
+-------------+                                                                                                                                               
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select first_name from employees where salary =(select max(salary) from employees);                                                                    
+------------+                                                                                                                                                
| first_name |                                                                                                                                                
+------------+                                                                                                                                                
| Steven     |                                                                                                                                                
+------------+                                                                                                                                                
1 row in set (0.01 sec)                                                                                                                                       
                                                                                                                                                              
mysql>         


select max(salary) from employees;                                                                                                                     
+-------------+                                                                                                                                               
| max(salary) |                                                                                                                                               
+-------------+                                                                                                                                               
|    24000.00 |                                                                                                                                               
+-------------+                                                                                                                                               
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> select first_name from employees where salary =(select max(salary) from employees);                                                                    
+------------+                                                                                                                                                
| first_name |                                                                                                                                                
+------------+                                                                                                                                                
| Steven     |                                                                                                                                                
+------------+            


                                                                                                                                                       
mysql> select * from employees where salary > any (select salary from employees where department_id=20);                                                      
+-------------+-------------+------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+ 
| employee_id | first_name  | last_name  | email    | phone_number       | hire_date  | job_id     | salary   | commission_pct | manager_id | department_id | 
+-------------+-------------+------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+ 
|         100 | Steven      | King       | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           NULL |       NULL |            90 | 
|         101 | Neena       | Kochhar    | NKOCHHAR | 515.123.4568       | 1989-09-21 | AD_VP      | 17000.00 |           NULL |        100 |            90 | 
|         102 | Lex         | De Haan    | LDEHAAN  | 515.123.4569       | 1993-01-13 | AD_VP      | 17000.00 |           NULL |        100 |            90 | 
|         103 | Alexander   | Hunold     | AHUNOLD  | 590.423.4567       | 1990-01-03 | IT_PROG    |  9000.00 |       


mysql> select * from employees where salary > all (select salary from employees where department_id=20);                                                      
+-------------+------------+-----------+----------+--------------------+------------+---------+----------+----------------+------------+---------------+      
| employee_id | first_name | last_name | email    | phone_number       | hire_date  | job_id  | salary   | commission_pct | manager_id | department_id |      
+-------------+------------+-----------+----------+--------------------+------------+---------+----------+----------------+------------+---------------+      
|         100 | Steven     | King      | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES | 24000.00 |           NULL |       NULL |            90 |      
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568       | 1989-09-21 | AD_VP   | 17000.00 |           NULL |        100 |            90 |      
|         102 | Lex        | De Haan   | LDEHAAN  | 515.123.4569       | 1993-01-13 | AD_VP   | 17000.00 |           NULL |        100 |            90 |      
|         145 | John       | Russell   | JRUSSEL  | 011.44.1344.429268 | 1996-10-01 | SA_MAN  | 14000.00 |           0.40 |        100 |            80 |      
|         146 | Karen      | Partners  | KPARTNER | 011.44.1344.467268 | 1997-01-05 | SA_MAN  | 13500.00 |           0.30 |        100 |            80 |      
+-------------+------------+-----------+----------+--------------------+------------+---------+----------+----------------+------------+---------------+      
5 rows in set (0.00 sec)                                                                                                                                      
                           

                                                                                                                                                              
mysql> select * from employees where employee_id not in (select employee_id from employees join departments on employees.department_id = departments.departmen
t_id);
+-------------+------------+-----------+--------+--------------------+------------+--------+---------+----------------+------------+---------------+          
| employee_id | first_name | last_name | email  | phone_number       | hire_date  | job_id | salary  | commission_pct | manager_id | department_id |          
+-------------+------------+-----------+--------+--------------------+------------+--------+---------+----------------+------------+---------------+          
|         178 | Kimberely  | Grant     | KGRANT | 011.44.1644.429263 | 1999-05-24 | SA_REP | 7000.00 |           0.15 |        149 |          NULL |          
+-------------+------------+-----------+--------+--------------------+------------+--------+---------+----------------+------------+---------------+          
1 row in set (0.00 sec)       


#temporary table                                                                                                                                                     
mysql> with res as ( select * from departments where department_name like 'A%' ) select * from locations loc join res on res.location_id = loc.location_id;   
+-------------+-----------------+-------------+---------+----------------+------------+---------------+-----------------+------------+-------------+          
| location_id | street_address  | postal_code | city    | state_province | country_id | department_id | department_name | manager_id | location_id |          
+-------------+-----------------+-------------+---------+----------------+------------+---------------+-----------------+------------+-------------+          
|        1700 | 2004 Charade Rd | 98199       | Seattle | Washington     | US         |            10 | Administration  |        200 |        1700 |          
|        1700 | 2004 Charade Rd | 98199       | Seattle | Washington     | US         |           110 | Accounting      |        205 |        1700 |          
+-------------+-----------------+-------------+---------+----------------+------------+---------------+-----------------+------------+-------------+          
2 rows in set (0.00 sec)        


mysql> create view myview as select * from employees;                                                                                                         
Query OK, 0 rows affected (0.01 sec)                                                                                                                          
                                                                                                                                                              
mysql> select * from myview;                                                                                                                                  
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| employee_id | first_name  | last_name   | email    | phone_number       | hire_date  | job_id     | salary   | commission_pct | manager_id | department_id |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           NULL |       NULL |            90 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1989-09-21 | AD_VP      | 17000.00 |           NULL |        100 |            90 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1993-01-13 | AD_VP      | 17000.00 |           NULL |        100 |            90 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1990-01-03 | IT_PROG    |  9000.00 |           NULL |        102 |            60 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1991-05-21 | IT_PROG    |  6000.00 |           NULL |        103 |            60 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1997-06-25 | IT_PROG    |  4800.00 |           NULL |        103 |            60 |
|         106 | Valli       | Pataballa   | VPATABAL |


                                                                                                                                                      
mysql> select * from myview where (salary,department_id) in ( select max(salary),department_id from myview group by department_id);                           
+-------------+------------+-----------+----------+--------------------+------------+---------+----------+----------------+------------+---------------+
| employee_id | first_name | last_name | email    | phone_number       | hire_date  | job_id  | salary   | commission_pct | manager_id | department_id |      
+-------------+------------+-----------+----------+--------------------+------------+---------+----------+----------------+------------+---------------+      
|         100 | Steven     | King      | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES | 24000.00 |           NULL |       NULL |            90 |      
|         103 | Alexander  | Hunold    | AHUNOLD  | 590.423.4567       | 1990-01-03 | IT_PROG |  9000.00 |           NULL |        102 |            60 |      
|         108 | Nancy      | Greenberg | NGREENBE | 515.124.4569       | 1994-08-17 | FI_MGR  | 12000.00 |           NULL |        101 |           100 |      
|         114 | Den        | Raphaely  | DRAPHEAL | 515.127.4561       | 1994-12-07 | PU_MAN  | 11000.00 |           NULL |        100 |            30 |      
|         121 | Adam       | Fripp     | AFRIPP   | 650.123.2234       | 1997-04-10 | ST_MAN  |  8200.00 |           NULL |        100 |            50 |      
|         145 | John       | Russell   | JRUSSEL  | 011.44.1344.429268 | 1996-10-01 | SA_MAN  | 14000.00 |           0.40 |        100 |            80 |      
|         200 | Jennifer   | Whalen    | JWHALEN  | 515.123.4444       | 1987-09-17 | AD_ASST |  4400.00 |           NULL |        101 |            10 |      
|         201 | Michael    | Hartstein | MHARTSTE | 515.123.5555       | 1996-02-17 | MK_MAN  | 13000.00 |           NULL |        100 |            20 |      
|         203 | Susan      | Mavris    | SMAVRIS  | 515.123.7777       | 1994-06-07 | HR_REP  |  6500.00 |           NULL |        101 |            40 |      
|         204 | Hermann    | Baer      | HBAER    | 515.123.8888       | 1994-06-07 | PR_REP  | 10000.00 |           NULL |        101 |            70 |      
|         205 | Shelley    | Higgins   | SHIGGINS | 515.123.8080       | 1994-06-07 | AC_MGR  | 12000.00 |           NULL |        101 |           110 |      
+-------------+------------+-----------+----------+--------------------+------------+---------+----------+----------------+------------+---------------+      
11 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql>  select max(salary),department_id from myview group by department_id;                                                                                  
+-------------+---------------+
| max(salary) | department_id |                                                                                                                               
+-------------+---------------+                                                                                                                               
|     7000.00 |          NULL |                                                                                                                               
|     4400.00 |            10 |                                                                                                                               
|    13000.00 |            20 |                                                                                                                               
|    11000.00 |            30 |                                                                                                                               
|     6500.00 |            40 |                                                                                                                               
|     8200.00 |            50 |                                                                                                                               
|     9000.00 |            60 |                                                                                                                               
|    10000.00 |            70 |                                                                                                                               
|    14000.00 |            80 |                                                                                                                               
|    24000.00 |            90 |                                                                                                                               
|    12000.00 |           100 |                                                                                                                               
|    12000.00 |           110 |                                                                                                                               
+-------------+---------------+                                                                                                                               
12 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> select * from employees emp1 where salary in (select max(salary) from employees emp2 where emp1.department_id = emp2.department_id);                   
+-------------+------------+-----------+----------+--------------------+------------+---------+----------+----------------+------------+---------------+      
| employee_id | first_name | last_name | email    | phone_number       | hire_date  | job_id  | salary   | commission_pct | manager_id | department_id |      
+-------------+------------+-----------+----------+--------------------+------------+---------+----------+----------------+------------+---------------+      
|         100 | Steven     | King      | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES | 24000.00 |           NULL |       NULL |            90 |      
|         103 | Alexander  | Hunold    | AHUNOLD  | 590.423.4567       | 1990-01-03 | IT_PROG |  9000.00 |           NULL |        102 |            60 |      
|         108 | Nancy      | Greenberg | NGREENBE | 515.124.4569       | 1994-08-17 | FI_MGR  | 12000.00 |           NULL |        101 |           100 |      
|         114 | Den        | Raphaely  | DRAPHEAL | 515.127.4561       | 1994-12-07 | PU_MAN  | 11000.00 |           NULL |        100 |            30 |      
|         121 | Adam       | Fripp     | AFRIPP   | 650.123.2234       | 1997-04-10 | ST_MAN  |  8200.00 |           NULL |        100 |            50 |      
|         145 | John       | Russell   | JRUSSEL  | 011.44.1344.429268 | 1996-10-01 | SA_MAN  | 14000.00 |           0.40 |        100 |            80 |      
|         200 | Jennifer   | Whalen    | JWHALEN  | 515.123.4444       | 1987-09-17 | AD_ASST |  4400.00 |           NULL |        101 |            10 |      
|         201 | Michael    | Hartstein | MHARTSTE | 515.123.5555       | 1996-02-17 | MK_MAN  | 13000.00 |           NULL |        100 |            20 |      
|         203 | Susan      | Mavris    | SMAVRIS  | 515.123.7777       | 1994-06-07 | HR_REP  |  6500.00 |           NULL |        101 |            40 |      
|         204 | Hermann    | Baer      | HBAER    | 515.123.8888       | 1994-06-07 | PR_REP  | 10000.00 |           NULL |        101 |            70 |      
|         205 | Shelley    | Higgins   | SHIGGINS | 515.123.8080       | 1994-06-07 | AC_MGR  | 12000.00 |           NULL |        101 |           110 |      
+-------------+------------+-----------+----------+--------------------+------------+---------+----------+----------------+------------+---------------+      
11 rows in set (0.01 sec)                                                                                                                                     
                                                                                                                                                              
mysql>                             


mysql> create view myview as select * from employees;                                                                                                         
Query OK, 0 rows affected (0.01 sec)   

                                                                                                                                                         
mysql> drop view myview ;                                                                                                                                     
Query OK, 0 rows affected (0.02 sec)                                                                                                                          
                        

mysql> create table student(student_id int not null primary key);                                                                                             
Query OK, 0 rows affected (0.04 sec)                                                                                                                          
                                         
                                                                                                                                                             
mysql> create table student(student_id int not null ,first_name varchar(30), primary key(student_id,first_name));                                             
Query OK, 0 rows affected (0.04 sec)                                                                                                                          
                                         


show index from student;                                                                                                                               
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+--
-------+------------+                                                                                                                                         
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | V
isible | Expression |                                                                                                                                         
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+--
-------+------------+                                                                                                                                         
| student |          0 | PRIMARY  |            1 | student_id  | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | Y
ES     | NULL       |                                                                                                                                         
| student |          0 | PRIMARY  |            2 | first_name  | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | Y
ES     | NULL       |                                                                                                                                         
+---------+------------+-


                                                                                                                                                           
mysql> show indexes from student;                                                                                                                             
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+--
-------+------------+                                                                                                                                         
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | V
isible | Expression |                                                                                                                                         
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+--
-------+------------+                                                                                                                                         
| student |          0 | PRIMARY  |            1 | student_id  | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | Y
ES     | NULL       |                                                                                                                                         
| student |          0 | PRIMARY  |            2 | first_name  | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | Y
ES     | NULL       |                                                                                                                                         
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+--
-------+------------+                                                                                                                                         
2 rows in set (0.00 sec)    


                                                                                                                                                         
mysql> insert into student values(1,"din");                                                                                                                   
Query OK, 1 row affected (0.00 sec)                                                                                                                           
                                                                                                                                                              
mysql> select * from student;                                                                                                                                 
+------------+------------+                                                                                                                                   
| student_id | first_name |                                                                                                                                   
+------------+------------+                                                                                                                                   
|          1 | din        |                                                                                                                                   
+------------+------------+                                                                                                                                   
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql>                          

                                                                                                                                                  
mysql> insert into student values(1,"din");                                                                                                                   
Query OK, 1 row affected (0.00 sec)                                                                                                                           
                                                                                                                                                              
mysql> select * from student;                                                                                                                                 
+------------+------------+                                                                                                                                   
| student_id | first_name |                                                                                                                                   
+------------+------------+                                                                                                                                   
|          1 | din        |                                                                                                                                   
+------------+------------+                                                                                                                                   
1 row in set (0.00 sec)                                                                                                                                       
                                                                                                                                                              
mysql> insert into student values(1,"hrithik");                                                                                                               
Query OK, 1 row affected (0.01 sec)                                                                                                                           
                                                                                                                                                              
mysql> select * from student;                                                                                                                                 
+------------+------------+                                                                                                                                   
| student_id | first_name |                                                                                                                                   
+------------+------------+                                                                                                                                   
|          1 | din        |                                                                                                                                   
|          1 | hrithik    |                                                                                                                                   
+------------+------------+                                                                                                                                   
2 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> insert into student values(1,"mehta");                                                                                                                 
Query OK, 1 row affected (0.00 sec)                                                                                                                           
                                                                                                                                                              
mysql> select * from student;                                                                                                                                 
+------------+------------+                                                                                                                                   
| student_id | first_name |                                                                                                                                   
+------------+------------+                                                                                                                                   
|          1 | din        |                                                                                                                                   
|          1 | hrithik    |                                                                                                                                   
|          1 | mehta      |                                                                                                                                   
+------------+------------+                                                                                                                                   
3 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> 
                                                                                                                                         
mysql> insert into student values(1,"mehta");                                                                                                                 
ERROR 1062 (23000): Duplicate entry '1-mehta' for key 'student.PRIMARY'         

mysql> insert into student values(2,"mehta");                                                                                                                 
Query OK, 1 row affected (0.01 sec)                                                                                                                           
                                                                                                                                                              
mysql> select * from student;                                                                                                                                 
+------------+------------+                                                                                                                                   
| student_id | first_name |                                                                                                                                   
+------------+------------+                                                                                                                                   
|          1 | din        |                                                                                                                                   
|          1 | hrithik    |                                                                                                                                   
|          1 | mehta      |                                                                                                                                   
|          2 | mehta      |                                                                                                                                   
+------------+------------+                                                                                                                                   
4 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql>                    


                                                                                                                                                              
mysql> insert into student (first_name,student_id) values("Mehta",1);                                                                                         
ERROR 1062 (23000): Duplicate entry '1-Mehta' for key 'student.PRIMARY'                                                                                       
mysql> 


ERROR 1048 (23000): Column 'first_name' cannot be null                                                                                                        
mysql> insert into student values(1,Null);                                                                                                                    
ERROR 1048 (23000): Column 'first_name' cannot be null                                                                                                        
mysql>                                                                                                                                                        
 



 mysql>drop table student;                                                                                                                                     
Query OK, 0 rows affected (0.03 sec)                                                                                                                          
                                                                                                                                                              
mysql> select * from student;                                                                                                                                 
ERROR 1146 (42S02): Table 'shyleshar86medu.student' doesn't exist                                                                                             
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



                                                                                                                                                             
mysql> create table student ( student_id int , first_name varchar(20) not null , contactno varchar(10) unique,address varchar(30),primary key (student_id));  
Query OK, 0 rows affected (0.05 sec)                                                                                                                          
                                                                                                                                                              
mysql> desc student;                                                                                                                                          
+------------+-------------+------+-----+---------+-------+                                                                                                   
| Field      | Type        | Null | Key | Default | Extra |                                                                                                   
+------------+-------------+------+-----+---------+-------+                                                                                                   
| student_id | int         | NO   | PRI | NULL    |       |                                                                                                   
| first_name | varchar(20) | NO   |     | NULL    |       |                                                                                                   
| contactno  | varchar(10) | YES  | UNI | NULL    |       |                                                                                                   
| address    | varchar(30) | YES  |     | NULL    |       |                                                                                                   
+------------+-------------+------+-----+---------+-------+                                                                                                   
4 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql>        




                                                                                                                                                            
mysql> create table dept_cpy as select department_name,location_id  from departments;                                                                         
Query OK, 27 rows affected (0.04 sec)                                                                                                                         
Records: 27  Duplicates: 0  Warnings: 0                                                                                                                       
                                                                                                                                                              
mysql> select * from dept_cpy;                                                                                                                                
+----------------------+-------------+                                                                                                                        
| department_name      | location_id |                                                                                                                        
+----------------------+-------------+                                                                                                                        
| Administration       |        1700 |                                                                                                                        
| Marketing            |        1800 |                                                                                                                        
| Purchasing           |        1700 |                                                                                                                        
| Human Resources      |        2400 |                                                                                                                        
| Shipping             |        1500 |                                                                                                                        
| IT                   |        1400 |                                                                                                                        
| Public Relations     |        2700 |                                                                                                                        
| Sales                |        2500 |                                                                                                                        
| Executive            |        1700 |                                                                                                                        
| Finance              |        1700 |                                                                                                                        
| Accounting           |        1700 |                                                                                                                        
| Treasury             |        1700 |                                                                                                                        
| Corporate Tax        |        1700 |                                                                                                                        
| Control And Credit   |        1700 |                                                                                                                        
| Shareholder Services |        1700 |                                                                                                                        
| Benefits             |        1700 |                                                                                                                        
| Manufacturing        |        1700 |                                                                                                                        
| Construction         |        1700 |                                                                                                                        
| Contracting          |        1700 |                                                                                                                        
| Operations           |        1700 |                                                                                                                        
| IT Support           |        1700 |                                                                                                                        
| NOC                  |        1700 |                                                                                                                        
| IT Helpdesk          |        1700 |                                                                                                                        
| Government Sales     |        1700 |                                                                                                                        
| Retail Sales         |        1700 |                                                                                                                        
| Recruiting           |        1700 |                                                                                                                        
| Payroll              |        1700 |                                                                                                                        
+----------------------+-------------+                                                                                                                        
27 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql>                    

                                                                                                                                                          
mysql> desc departments;                                                                                                                                      
+-----------------+-------------+------+-----+---------+-------+                                                                                              
| Field           | Type        | Null | Key | Default | Extra |                                                                                              
+-----------------+-------------+------+-----+---------+-------+                                                                                              
| department_id   | int         | NO   | PRI | NULL    |       |                                                                                              
| department_name | varchar(30) | YES  |     | NULL    |       |                                                                                              
| manager_id      | int         | YES  | MUL | NULL    |       |                                                                                              
| location_id     | int         | YES  | MUL | NULL    |       |                                                                                              
+-----------------+-------------+------+-----+---------+-------+                                                                                              
4 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql> desc dept_cpy;                                                                                                                                         
+-----------------+-------------+------+-----+---------+-------+                                                                                              
| Field           | Type        | Null | Key | Default | Extra |                                                                                              
+-----------------+-------------+------+-----+---------+-------+                                                                                              
| department_name | varchar(30) | YES  |     | NULL    |       |                                                                                              
| location_id     | int         | YES  |     | NULL    |       |                                                                                              
+-----------------+-------------+------+-----+---------+-------+                                                                                              
2 rows in set (0.01 sec)                                                                                                                                      
                                       

                                                                                                                                                         
mysql> create table dept_cpy1 as select department_name,location_id  from departments where 1=2;                                                              
Query OK, 0 rows affected (0.05 sec)                                                                                                                          
Records: 0  Duplicates: 0  Warnings: 0                                                                                                                        
                                                                                                                                                              
mysql> show tables;                                                                                                                                           
+---------------------------+                                                                                                                                 
| Tables_in_shyleshar86medu |                                                                                                                                 
+---------------------------+                                                                                                                                 
| countries                 |                                                                                                                                 
| departments               |                                                                                                                                 
| dept_cpy                  |                                                                                                                                 
| dept_cpy1                 |                                                                                                                                 
| employees                 |                                                                                                                                 
| job_history               |                                                                                                                                 
| jobs                      |                                                                                                                                 
| locations                 |                                                                                                                                 
| regions                   |                                                                                                                                 
| student                   |                                                                                                                                 
+---------------------------+                                                                                                                                 
10 rows in set (0.00 sec)                                                                                                                                     
                                                                                                                                                              
mysql> desc dept_cpy1;                                                                                                                                        
+-----------------+-------------+------+-----+---------+-------+                                                                                              
| Field           | Type        | Null | Key | Default | Extra |                                                                                              
+-----------------+-------------+------+-----+---------+-------+                                                                                              
| department_name | varchar(30) | YES  |     | NULL    |       |                                                                                              
| location_id     | int         | YES  |     | NULL    |       |                                                                                              
+-----------------+-------------+------+-----+---------+-------+                                                                                              
2 rows in set (0.01 sec)                                                                                                                                      
                                                                                                                                                              
mysql>                                                         
mysql> select * from dept_cpy1;                                                                                                                               
Empty set (0.00 sec)                                                                                                                                          
            

                                                                                                                                              
mysql> create table exam ( examno int , student_id int ,sub1 int , sub2 int,foreign key(student_id) references student(student_id));                          
Query OK, 0 rows affected (0.05 sec)                                                                                                                          
                                                                                                                                                              
mysql> desc exam;                                                                                                                                             
+------------+------+------+-----+---------+-------+                                                                                                          
| Field      | Type | Null | Key | Default | Extra |                                                                                                          
+------------+------+------+-----+---------+-------+                                                                                                          
| examno     | int  | YES  |     | NULL    |       |                                                                                                          
| student_id | int  | YES  | MUL | NULL    |       |                                                                                                          
| sub1       | int  | YES  |     | NULL    |       |                                                                                                          
| sub2       | int  | YES  |     | NULL    |       |                                                                                                          
+------------+------+------+-----+---------+-------+                                                                                                          
4 rows in set (0.00 sec)                                                                                                                                      
                                                                                                                                                              
mysql>                          


                                                                                                                                                    
mysql> show tables;                                                                                                                                           
+---------------------------+                                                                                                                                 
| Tables_in_shyleshar86medu |                                                                                                                                 
+---------------------------+                                                                                                                                 
| countries                 |                                                                                                                                 
| departments               |                                                                                                                                 
| employees                 |                                                                                                                                 
| exam                      |                                                                                                                                 
| job_history               |                                                                                                                                 
| jobs                      |                                                                                                                                 
| locations                 |                                                                                                                                 
| regions                   |                                                                                                                                 
| student                   |                                                                                                                                 
+---------------------------+                                                                                                                                 
9 rows in set (0.00 sec)          

                                                                                                                                                        
mysql> insert into exam values (1,12,12,12);                                                                                                                  
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`shyleshar86medu`.`exam`, CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`student
_id`) REFERENCES `student` (`student_id`))                                                                                                                    
mysql>      


mysql> desc student;                                                                                                                                          
+------------+-------------+------+-----+---------+-------+                                                                                                   
| Field      | Type        | Null | Key | Default | Extra |                                                                                                   
+------------+-------------+------+-----+---------+-------+                                                                                                   
| student_id | int         | NO   | PRI | NULL    |       |                                                                                                   
| first_name | varchar(20) | NO   |     | NULL    |       |                                                                                                   
| contactno  | varchar(10) | YES  | UNI | NULL    |       |                                                                                                   
| address    | varchar(30) | YES  |     | NULL    |       |                                                                                                   
+------------+-------------+------+-----+---------+-------+                                                                                                   
4 rows in set (0.01 sec)                                                                                                                                      
                                                                                                                                                              
mysql> insert into student values (2,"ss","99999999","aaaaa");                                                                                                
Query OK, 1 row affected (0.02 sec)                                                                                                                           
                                                                                                                                                              
mysql> desc exam;                                                                                                                                             
+------------+------+------+-----+---------+-------+                                                                                                          
| Field      | Type | Null | Key | Default | Extra |                                                                                                          
+------------+------+------+-----+---------+-------+                                                                                                          
| examno     | int  | YES  |     | NULL    |       |                                                                                                          
| student_id | int  | YES  | MUL | NULL    |       |                                                                                                          
| sub1       | int  | YES  |     | NULL    |       |                                                                                                          
| sub2       | int  | YES  |     | NULL    |       |                                                                                                          
+------------+------+------+-----+---------+-------+                                                                                                          
4 rows in set (0.01 sec)                                                                                                                                      
                                                                                                                                                              
mysql> insert into exam values (1,2,12,12);                                                                                                                   
Query OK, 1 row affected (0.01 sec)                                                                                                                           
                                                                                                                                                              
mysql>                              

                                                                                                                          
mysql> insert into exam values (2,2,22,22);                                                                                                                   
Query OK, 1 row affected (0.01 sec)                                                                                                                           
                                                                                                                                                              
mysql> delete from student where student_id=2;                                                                                                                
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`shyleshar86medu`.`exam`, CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`stu
dent_id`) REFERENCES `student` (`student_id`))                                                                                                                
mysql>                

mysql> alter table exam add constraint foreign key (student_id) references student(student_id) on delete cascade;                                             
Query OK, 2 rows affected (0.11 sec)                                                                                                                          
Records: 2  Duplicates: 0  Warnings: 0                                                                                                                        
                                                                                                                                                              
mysql>    



                                                                                                                                                       
mysql> update exam set sub1=16 where examno=1;                                                                                                                
Query OK, 1 row affected (0.00 sec)                                                                                                                           
Rows matched: 1  Changed: 1  Warnings: 0                                                                                                                      
                                                 