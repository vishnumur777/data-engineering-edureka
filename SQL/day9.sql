mysql> explain employees;
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

mysql> explain stud_v5;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | NO   |     | NULL    |       |
| firstname  | varchar(30) | NO   |     | NULL    |       |
| address    | varchar(30) | YES  |     | NULL    |       |
| contact    | varchar(10) | YES  |     | NULL    |       |
| examno     | int         | YES  |     | NULL    |       |
| sub1       | int         | YES  |     | NULL    |       |
| sub2       | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> explain analyze select d.department_name, max(e.salary) from employees e join departments d on e.department_id=d.department_id group by d.department_name;
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXPLAIN                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| -> Table scan on <temporary>  (actual time=1.38..1.38 rows=11 loops=1)
    -> Aggregate using temporary table  (actual time=1.38..1.38 rows=11 loops=1)
        -> Nested loop inner join  (cost=130 rows=108) (actual time=1.1..1.23 rows=107 loops=1)
            -> Filter: (e.department_id is not null)  (cost=11.1 rows=108) (actual time=0.0605..0.105 rows=107 loops=1)
                -> Table scan on e  (cost=11.1 rows=108) (actual time=0.0598..0.0939 rows=108 loops=1)
            -> Single-row index lookup on d using PRIMARY (department_id=e.department_id)  (cost=1 rows=1) (actual time=0.0103..0.0103 rows=1 loops=107)
 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.01 sec)

mysql> select department_id,count(*) emp_count from employees group by department_id;
+---------------+-----------+
| department_id | emp_count |
+---------------+-----------+
|          NULL |         1 |
|            10 |         2 |
|            20 |         2 |
|            30 |         6 |
|            40 |         1 |
|            50 |        45 |
|            60 |         5 |
|            70 |         1 |
|            80 |        34 |
|            90 |         3 |
|           100 |         6 |
|           110 |         2 |
+---------------+-----------+
12 rows in set (0.00 sec)

mysql> show profile;
+--------------------------------+----------+
| Status                         | Duration |
+--------------------------------+----------+
| starting                       | 0.000088 |
| Executing hook on transaction  | 0.000009 |
| starting                       | 0.000010 |
| checking permissions           | 0.000009 |
| Opening tables                 | 0.000047 |
| init                           | 0.000434 |
| System lock                    | 0.000013 |
| optimizing                     | 0.000008 |
| statistics                     | 0.000022 |
| preparing                      | 0.000030 |
| executing                      | 0.000085 |
| end                            | 0.000008 |
| query end                      | 0.000007 |
| waiting for handler commit     | 0.000012 |
| closing tables                 | 0.000010 |
| freeing items                  | 0.000033 |
| cleaning up                    | 0.000013 |
+--------------------------------+----------+
17 rows in set, 1 warning (0.00 sec)

mysql> show profile;
+--------------------------------+----------+
| Status                         | Duration |
+--------------------------------+----------+
| starting                       | 0.000069 |
| Executing hook on transaction  | 0.000009 |
| starting                       | 0.000044 |
| checking permissions           | 0.000010 |
| Opening tables                 | 0.000032 |
| init                           | 0.000009 |
| System lock                    | 0.000011 |
| optimizing                     | 0.000008 |
| statistics                     | 0.000017 |
| preparing                      | 0.000026 |
| executing                      | 0.000080 |
| end                            | 0.000008 |
| query end                      | 0.000007 |
| waiting for handler commit     | 0.000013 |
| closing tables                 | 0.000010 |
| freeing items                  | 0.000032 |
| cleaning up                    | 0.000013 |
+--------------------------------+----------+
17 rows in set, 1 warning (0.00 sec)

-- reduces time for running same query more than 1 time 

mysql> show profile for query 1;
+--------------------------------+----------+
| Status                         | Duration |
+--------------------------------+----------+
| starting                       | 0.000133 |
| Executing hook on transaction  | 0.000010 |
| starting                       | 0.000058 |
| checking permissions           | 0.000011 |
| checking permissions           | 0.000009 |
| Opening tables                 | 0.000775 |
| init                           | 0.000019 |
| System lock                    | 0.000015 |
| optimizing                     | 0.000027 |
| statistics                     | 0.000111 |
| preparing                      | 0.000031 |
| Creating tmp table             | 0.000045 |
| executing                      | 0.000122 |
| checking permissions           | 0.000032 |
| checking permissions           | 0.000016 |
| checking permissions           | 0.000015 |
| checking permissions           | 0.000014 |
| checking permissions           | 0.000014 |
| checking permissions           | 0.000013 |
| checking permissions           | 0.000014 |
| checking permissions           | 0.000013 |
| checking permissions           | 0.000013 |
| checking permissions           | 0.000013 |
| checking permissions           | 0.000013 |
| checking permissions           | 0.000013 |
| checking permissions           | 0.000013 |
| checking permissions           | 0.000013 |
| checking permissions           | 0.000013 |
| checking permissions           | 0.000013 |
| checking permissions           | 0.000025 |
| checking permissions           | 0.000014 |
| checking permissions           | 0.000015 |
| checking permissions           | 0.000013 |
| checking permissions           | 0.000032 |
| end                            | 0.000008 |
| query end                      | 0.000008 |
| waiting for handler commit     | 0.000018 |
| closing tables                 | 0.000020 |
| freeing items                  | 0.000074 |
| cleaning up                    | 0.000051 |
+--------------------------------+----------+
40 rows in set, 1 warning (0.00 sec)

mysql> show profile for query 2;
+--------------------------------+----------+
| Status                         | Duration |
+--------------------------------+----------+
| starting                       | 0.000079 |
| Executing hook on transaction  | 0.000008 |
| starting                       | 0.000008 |
| checking permissions           | 0.000009 |
| Opening tables                 | 0.000030 |
| init                           | 0.000009 |
| System lock                    | 0.000010 |
| optimizing                     | 0.000009 |
| statistics                     | 0.000017 |
| preparing                      | 0.000026 |
| executing                      | 0.001107 |
| end                            | 0.000014 |
| query end                      | 0.000008 |
| waiting for handler commit     | 0.000013 |
| closing tables                 | 0.000011 |
| freeing items                  | 0.000034 |
| cleaning up                    | 0.000014 |
+--------------------------------+----------+
17 rows in set, 1 warning (0.00 sec)

mysql> show profiles;
+----------+------------+-------------------------------------------------------------------------------+
| Query_ID | Duration   | Query                                                                         |
+----------+------------+-------------------------------------------------------------------------------+
|        1 | 0.00187550 | show tables                                                                   |
|        2 | 0.00140525 | select count(*) from employees group by department_id                         |
|        3 | 0.00083600 | select department_id,count(*) emp_count from employees group by department_id |
|        4 | 0.00012550 | show profile order by Status                                                  |
|        5 | 0.00011125 | select * from (show profile) order by Status                                  |
|        6 | 0.00010100 | select * from (show profile) order by Status                                  |
|        7 | 0.00012700 | select * from (show profile) order by Status                                  |
|        8 | 0.00039675 | select department_id,count(*) emp_count from employees group by department_id |
+----------+------------+-------------------------------------------------------------------------------+
8 rows in set, 1 warning (0.00 sec)

--after restarting mysql

mysql> show profiles;
Empty set, 1 warning (0.00 sec)

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

mysql> show profile;
+--------------------------------+----------+
| Status                         | Duration |
+--------------------------------+----------+
| starting                       | 0.000096 |
| Executing hook on transaction  | 0.000008 |
| starting                       | 0.000011 |
| checking permissions           | 0.000010 |
| Opening tables                 | 0.000042 |
| init                           | 0.000010 |
| System lock                    | 0.000012 |
| optimizing                     | 0.000009 |
| statistics                     | 0.000024 |
| preparing                      | 0.000032 |
| executing                      | 0.000097 |
| end                            | 0.000008 |
| query end                      | 0.000007 |
| waiting for handler commit     | 0.000014 |
| closing tables                 | 0.000011 |
| freeing items                  | 0.000035 |
| cleaning up                    | 0.000014 |
+--------------------------------+----------+
17 rows in set, 1 warning (0.00 sec)

mysql> show profiles;
+----------+------------+-------------------------------------------------------+
| Query_ID | Duration   | Query                                                 |
+----------+------------+-------------------------------------------------------+
|        1 | 0.00043800 | select count(*) from employees group by department_id |
+----------+------------+-------------------------------------------------------+
1 row in set, 1 warning (0.00 sec)


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

mysql> show profiles;
+----------+------------+-------------------------------------------------------+
| Query_ID | Duration   | Query                                                 |
+----------+------------+-------------------------------------------------------+
|        1 | 0.00043800 | select count(*) from employees group by department_id |
|        2 | 0.00051225 | select count(*) from employees group by department_id |
+----------+------------+-------------------------------------------------------+
2 rows in set, 1 warning (0.00 sec)

mysql> show profile for query 2;
+--------------------------------+----------+
| Status                         | Duration |
+--------------------------------+----------+
| starting                       | 0.000095 |
| Executing hook on transaction  | 0.000008 |
| starting                       | 0.000011 |
| checking permissions           | 0.000010 |
| Opening tables                 | 0.000045 |
| init                           | 0.000010 |
| System lock                    | 0.000012 |
| optimizing                     | 0.000009 |
| statistics                     | 0.000026 |
| preparing                      | 0.000061 |
| executing                      | 0.000107 |
| end                            | 0.000010 |
| query end                      | 0.000009 |
| waiting for handler commit     | 0.000018 |
| closing tables                 | 0.000015 |
| freeing items                  | 0.000045 |
| cleaning up                    | 0.000024 |
+--------------------------------+----------+
17 rows in set, 1 warning (0.00 sec)

mysql> show profile for query 1;
+--------------------------------+----------+
| Status                         | Duration |
+--------------------------------+----------+
| starting                       | 0.000096 |
| Executing hook on transaction  | 0.000008 |
| starting                       | 0.000011 |
| checking permissions           | 0.000010 |
| Opening tables                 | 0.000042 |
| init                           | 0.000010 |
| System lock                    | 0.000012 |
| optimizing                     | 0.000009 |
| statistics                     | 0.000024 |
| preparing                      | 0.000032 |
| executing                      | 0.000097 |
| end                            | 0.000008 |
| query end                      | 0.000007 |
| waiting for handler commit     | 0.000014 |
| closing tables                 | 0.000011 |
| freeing items                  | 0.000035 |
| cleaning up                    | 0.000014 |
+--------------------------------+----------+
17 rows in set, 1 warning (0.00 sec)

mysql> select distinct department_id from employees;
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
+---------------+
12 rows in set (0.00 sec)

mysql> create table cpemp as select employee_id, first_name, ifnull(department_id,0) deptid from employees;
Query OK, 108 rows affected (0.04 sec)
Records: 108  Duplicates: 0  Warnings: 0

mysql> select distinct deptid from cpemp;
+--------+
| deptid |
+--------+
|     90 |
|     60 |
|    100 |
|     30 |
|     50 |
|     80 |
|      0 |
|     10 |
|     20 |
|     40 |
|     70 |
|    110 |
+--------+
12 rows in set (0.00 sec)

mysql> create table empPartitionList( emp int, first varchar(40), deptno int) PARTITION BY LIST COLUMNS(deptno)( partition p0 values in (10,20,30), partition p1 values in (40,50,60), partition p2 values in (70,80,90), partition p3 values in (0,100,110));
Query OK, 0 rows affected (0.13 sec)

mysql> insert into empPartitionList select *  from cpemp;
Query OK, 108 rows affected (0.01 sec)
Records: 108  Duplicates: 0  Warnings: 0

mysql> select * from empPartitionList;
+------+-------------+--------+
| emp  | first       | deptno |
+------+-------------+--------+
|  114 | Den         |     30 |
|  115 | Alexander   |     30 |
|  116 | Shelli      |     30 |
|  117 | Sigal       |     30 |
|  118 | Guy         |     30 |
|  119 | Karen       |     30 |
|  200 | Jennifer    |     10 |
|  201 | Michael     |     20 |
|  202 | Pat         |     20 |
|  900 | Ram         |     10 |
|  103 | Alexander   |     60 |
|  104 | Bruce       |     60 |
|  105 | David       |     60 |
|  106 | Valli       |     60 |
|  107 | Diana       |     60 |
|  120 | Matthew     |     50 |
|  121 | Adam        |     50 |
|  122 | Payam       |     50 |
|  123 | Shanta      |     50 |
|  124 | Kevin       |     50 |
|  125 | Julia       |     50 |
|  126 | Irene       |     50 |
|  127 | James       |     50 |
|  128 | Steven      |     50 |
|  129 | Laura       |     50 |
|  130 | Mozhe       |     50 |
|  131 | James       |     50 |
|  132 | TJ          |     50 |
|  133 | Jason       |     50 |
|  134 | Michael     |     50 |
|  135 | Ki          |     50 |
|  136 | Hazel       |     50 |
|  137 | Renske      |     50 |
|  138 | Stephen     |     50 |
|  139 | John        |     50 |
|  140 | Joshua      |     50 |
|  141 | Trenna      |     50 |
|  142 | Curtis      |     50 |
|  143 | Randall     |     50 |
|  144 | Peter       |     50 |
|  180 | Winston     |     50 |
|  181 | Jean        |     50 |
|  182 | Martha      |     50 |
|  183 | Girard      |     50 |
|  184 | Nandita     |     50 |
|  185 | Alexis      |     50 |
|  186 | Julia       |     50 |
|  187 | Anthony     |     50 |
|  188 | Kelly       |     50 |
|  189 | Jennifer    |     50 |
|  190 | Timothy     |     50 |
|  191 | Randall     |     50 |
|  192 | Sarah       |     50 |
|  193 | Britney     |     50 |
|  194 | Samuel      |     50 |
|  195 | Vance       |     50 |
|  196 | Alana       |     50 |
|  197 | Kevin       |     50 |
|  198 | Donald      |     50 |
|  199 | Douglas     |     50 |
|  203 | Susan       |     40 |
|  100 | Steven      |     90 |
|  101 | Neena       |     90 |
|  102 | Lex         |     90 |
|  145 | John        |     80 |
|  146 | Karen       |     80 |
|  147 | Alberto     |     80 |
|  148 | Gerald      |     80 |
|  149 | Eleni       |     80 |
|  150 | Peter       |     80 |
|  151 | David       |     80 |
|  152 | Peter       |     80 |
|  153 | Christopher |     80 |
|  154 | Nanette     |     80 |
|  155 | Oliver      |     80 |
|  156 | Janette     |     80 |
|  157 | Patrick     |     80 |
|  158 | Allan       |     80 |
|  159 | Lindsey     |     80 |
|  160 | Louise      |     80 |
|  161 | Sarath      |     80 |
|  162 | Clara       |     80 |
|  163 | Danielle    |     80 |
|  164 | Mattea      |     80 |
|  165 | David       |     80 |
|  166 | Sundar      |     80 |
|  167 | Amit        |     80 |
|  168 | Lisa        |     80 |
|  169 | Harrison    |     80 |
|  170 | Tayler      |     80 |
|  171 | William     |     80 |
|  172 | Elizabeth   |     80 |
|  173 | Sundita     |     80 |
|  174 | Ellen       |     80 |
|  175 | Alyssa      |     80 |
|  176 | Jonathon    |     80 |
|  177 | Jack        |     80 |
|  179 | Charles     |     80 |
|  204 | Hermann     |     70 |
|  108 | Nancy       |    100 |
|  109 | Daniel      |    100 |
|  110 | John        |    100 |
|  111 | Ismael      |    100 |
|  112 | Jose Manuel |    100 |
|  113 | Luis        |    100 |
|  178 | Kimberely   |      0 |
|  205 | Shelley     |    110 |
|  206 | William     |    110 |
+------+-------------+--------+
108 rows in set (0.00 sec)

mysql> select table_rows, partition_name,avg_row_length, checksum from information_schema.partitions where table_name="empPartitionList";
+------------+----------------+----------------+----------+
| TABLE_ROWS | PARTITION_NAME | AVG_ROW_LENGTH | CHECKSUM |
+------------+----------------+----------------+----------+
|         10 | p0             |           1638 |     NULL |
|         51 | p1             |            321 |     NULL |
|         38 | p2             |            431 |     NULL |
|          9 | p3             |           1820 |     NULL |
+------------+----------------+----------------+----------+
4 rows in set (0.01 sec)

mysql> explain select * from cpemp;
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
| id | select_type | table | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
|  1 | SIMPLE      | cpemp | NULL       | ALL  | NULL          | NULL | NULL    | NULL |  108 |   100.00 | NULL  |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
1 row in set, 1 warning (0.00 sec)

mysql> explain select * from empPartitionList;
+----+-------------+------------------+-------------+------+---------------+------+---------+------+------+----------+-------+
| id | select_type | table            | partitions  | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra |
+----+-------------+------------------+-------------+------+---------------+------+---------+------+------+----------+-------+
|  1 | SIMPLE      | empPartitionList | p0,p1,p2,p3 | ALL  | NULL          | NULL | NULL    | NULL |  108 |   100.00 | NULL  |
+----+-------------+------------------+-------------+------+---------------+------+---------+------+------+----------+-------+
1 row in set, 1 warning (0.00 sec)

mysql> explain analyze select * from cpemp;
+-------------------------------------------------------------------------------------------+
| EXPLAIN                                                                                   |
+-------------------------------------------------------------------------------------------+
| -> Table scan on cpemp  (cost=11.1 rows=108) (actual time=0.0206..0.12 rows=108 loops=1)
 |
+-------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> explain analyze select * from empPartitionList;
+-------------------------------------------------------------------------------------------------------+
| EXPLAIN                                                                                               |
+-------------------------------------------------------------------------------------------------------+
| -> Table scan on empPartitionList  (cost=11.8 rows=108) (actual time=0.0137..0.144 rows=108 loops=1)
 |
+-------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> select * from empPartitionList partition(p0);
+------+-----------+--------+
| emp  | first     | deptno |
+------+-----------+--------+
|  114 | Den       |     30 |
|  115 | Alexander |     30 |
|  116 | Shelli    |     30 |
|  117 | Sigal     |     30 |
|  118 | Guy       |     30 |
|  119 | Karen     |     30 |
|  200 | Jennifer  |     10 |
|  201 | Michael   |     20 |
|  202 | Pat       |     20 |
|  900 | Ram       |     10 |
+------+-----------+--------+
10 rows in set (0.00 sec)

mysql> select * from empPartitionList partition(p1);
+------+-----------+--------+
| emp  | first     | deptno |
+------+-----------+--------+
|  103 | Alexander |     60 |
|  104 | Bruce     |     60 |
|  105 | David     |     60 |
|  106 | Valli     |     60 |
|  107 | Diana     |     60 |
|  120 | Matthew   |     50 |
|  121 | Adam      |     50 |
|  122 | Payam     |     50 |
|  123 | Shanta    |     50 |
|  124 | Kevin     |     50 |
|  125 | Julia     |     50 |
|  126 | Irene     |     50 |
|  127 | James     |     50 |
|  128 | Steven    |     50 |
|  129 | Laura     |     50 |
|  130 | Mozhe     |     50 |
|  131 | James     |     50 |
|  132 | TJ        |     50 |
|  133 | Jason     |     50 |
|  134 | Michael   |     50 |
|  135 | Ki        |     50 |
|  136 | Hazel     |     50 |
|  137 | Renske    |     50 |
|  138 | Stephen   |     50 |
|  139 | John      |     50 |
|  140 | Joshua    |     50 |
|  141 | Trenna    |     50 |
|  142 | Curtis    |     50 |
|  143 | Randall   |     50 |
|  144 | Peter     |     50 |
|  180 | Winston   |     50 |
|  181 | Jean      |     50 |
|  182 | Martha    |     50 |
|  183 | Girard    |     50 |
|  184 | Nandita   |     50 |
|  185 | Alexis    |     50 |
|  186 | Julia     |     50 |
|  187 | Anthony   |     50 |
|  188 | Kelly     |     50 |
|  189 | Jennifer  |     50 |
|  190 | Timothy   |     50 |
|  191 | Randall   |     50 |
|  192 | Sarah     |     50 |
|  193 | Britney   |     50 |
|  194 | Samuel    |     50 |
|  195 | Vance     |     50 |
|  196 | Alana     |     50 |
|  197 | Kevin     |     50 |
|  198 | Donald    |     50 |
|  199 | Douglas   |     50 |
|  203 | Susan     |     40 |
+------+-----------+--------+
51 rows in set (0.00 sec)

mysql> select * from empPartitionList partition(p2);
+------+-------------+--------+
| emp  | first       | deptno |
+------+-------------+--------+
|  100 | Steven      |     90 |
|  101 | Neena       |     90 |
|  102 | Lex         |     90 |
|  145 | John        |     80 |
|  146 | Karen       |     80 |
|  147 | Alberto     |     80 |
|  148 | Gerald      |     80 |
|  149 | Eleni       |     80 |
|  150 | Peter       |     80 |
|  151 | David       |     80 |
|  152 | Peter       |     80 |
|  153 | Christopher |     80 |
|  154 | Nanette     |     80 |
|  155 | Oliver      |     80 |
|  156 | Janette     |     80 |
|  157 | Patrick     |     80 |
|  158 | Allan       |     80 |
|  159 | Lindsey     |     80 |
|  160 | Louise      |     80 |
|  161 | Sarath      |     80 |
|  162 | Clara       |     80 |
|  163 | Danielle    |     80 |
|  164 | Mattea      |     80 |
|  165 | David       |     80 |
|  166 | Sundar      |     80 |
|  167 | Amit        |     80 |
|  168 | Lisa        |     80 |
|  169 | Harrison    |     80 |
|  170 | Tayler      |     80 |
|  171 | William     |     80 |
|  172 | Elizabeth   |     80 |
|  173 | Sundita     |     80 |
|  174 | Ellen       |     80 |
|  175 | Alyssa      |     80 |
|  176 | Jonathon    |     80 |
|  177 | Jack        |     80 |
|  179 | Charles     |     80 |
|  204 | Hermann     |     70 |
+------+-------------+--------+
38 rows in set (0.00 sec)

mysql> select * from empPartitionList partition(p3);
+------+-------------+--------+
| emp  | first       | deptno |
+------+-------------+--------+
|  108 | Nancy       |    100 |
|  109 | Daniel      |    100 |
|  110 | John        |    100 |
|  111 | Ismael      |    100 |
|  112 | Jose Manuel |    100 |
|  113 | Luis        |    100 |
|  178 | Kimberely   |      0 |
|  205 | Shelley     |    110 |
|  206 | William     |    110 |
+------+-------------+--------+
9 rows in set (0.00 sec)

mysql> explain analyze select * from empPartitionList partition(p2);
+------------------------------------------------------------------------------------------------------+
| EXPLAIN                                                                                              |
+------------------------------------------------------------------------------------------------------+
| -> Table scan on empPartitionList  (cost=4.05 rows=38) (actual time=0.0144..0.0519 rows=38 loops=1)
 |
+------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> explain select * from empPartitionList partition(p2);
+----+-------------+------------------+------------+------+---------------+------+---------+------+------+----------+-------+
| id | select_type | table            | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra |
+----+-------------+------------------+------------+------+---------------+------+---------+------+------+----------+-------+
|  1 | SIMPLE      | empPartitionList | p2         | ALL  | NULL          | NULL | NULL    | NULL |   38 |   100.00 | NULL  |
+----+-------------+------------------+------------+------+---------------+------+---------+------+------+----------+-------+
1 row in set, 1 warning (0.00 sec)


-- we can write a bunch of SQL statements using script file with file extension(.sql)
-- execute this command given below to execute script file on terminal
-- mysql -h master -u <username> -p -e "source <filename>.sql"

mysql> select routine_name from information_schema.routines where routine_type='procedure' and routine_schema='varunm15t38hedu';
Empty set (0.00 sec)

mysql> delimiter _
mysql> select * from jobs_
+------------+---------------------------------+------------+------------+
| job_id     | job_title                       | min_salary | max_salary |
+------------+---------------------------------+------------+------------+
| AC_ACCOUNT | Public Accountant               |       4200 |       9000 |
| AC_MGR     | Accounting Manager              |       8200 |      16000 |
| AD_ASST    | Administration Assistant        |       3000 |       6000 |
| AD_PRES    | President                       |      20000 |      40000 |
| AD_VP      | Administration Vice President   |      15000 |      30000 |
| FI_ACCOUNT | Accountant                      |       4200 |       9000 |
| FI_MGR     | Finance Manager                 |       8200 |      16000 |
| HR_REP     | Human Resources Representative  |       4000 |       9000 |
| IT_PROG    | Programmer                      |       4000 |      10000 |
| MK_MAN     | Marketing Manager               |       9000 |      15000 |
| MK_REP     | Marketing Representative        |       4000 |       9000 |
| PR_REP     | Public Relations Representative |       4500 |      10500 |
| PU_CLERK   | Purchasing Clerk                |       2500 |       5500 |
| PU_MAN     | Purchasing Manager              |       8000 |      15000 |
| SA_MAN     | Sales Manager                   |      10000 |      20000 |
| SA_REP     | Sales Representative            |       6000 |      12000 |
| SH_CLERK   | Shipping Clerk                  |       2500 |       5500 |
| ST_CLERK   | Stock Clerk                     |       2000 |       5000 |
| ST_MAN     | Stock Manager                   |       5500 |       8500 |
+------------+---------------------------------+------------+------------+
19 rows in set (0.00 sec)

mysql> delimiter $$

mysql> create procedure empNameProcedure(in empid int, out name varchar(40)) 
    -> begin
    -> select first_name into name from employees where employee_id=empid;
    -> end $$
Query OK, 0 rows affected (0.01 sec)

mysql> select routine_name from information_schema.routines where routine_type='PROCEDURE' and routine_schema='varunm15t38hedu';
+------------------+
| ROUTINE_NAME     |
+------------------+
| empNameProcedure |
+------------------+
1 row in set (0.00 sec)

mysql> call empNameProcedure(178, @result);
Query OK, 1 row affected (0.00 sec)

mysql> select @result;
+-----------+
| @result   |
+-----------+
| Kimberely |
+-----------+
1 row in set (0.00 sec)

mysql> create procedure empFullNameProcedure(in empid int, out name varchar(40)) begin select concat(first_name,' ',last_name) into name from employees where employee_id=empid; end$$
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call empFullNameProcedure(178, @result);
Query OK, 1 row affected (0.00 sec)

mysql> select @result;
+-----------------+
| @result         |
+-----------------+
| Kimberely Grant |
+-----------------+
1 row in set (0.01 sec)

mysql> show procedure status where db='varunm15t38hedu';
+-----------------+----------------------+-----------+-------------------+---------------------+---------------------+---------------+---------+----------------------+----------------------+--------------------+
| Db              | Name                 | Type      | Definer           | Modified            | Created             | Security_type | Comment | character_set_client | collation_connection | Database Collation |
+-----------------+----------------------+-----------+-------------------+---------------------+---------------------+---------------+---------+----------------------+----------------------+--------------------+
| varunm15t38hedu | empFullNameProcedure | PROCEDURE | varunm15t38hedu@% | 2025-05-29 06:50:40 | 2025-05-29 06:50:40 | DEFINER       |         | utf8mb4              | utf8mb4_0900_ai_ci   | utf8mb4_0900_ai_ci |
| varunm15t38hedu | empNameProcedure     | PROCEDURE | varunm15t38hedu@% | 2025-05-29 06:43:43 | 2025-05-29 06:43:43 | DEFINER       |         | utf8mb4              | utf8mb4_0900_ai_ci   | utf8mb4_0900_ai_ci |
+-----------------+----------------------+-----------+-------------------+---------------------+---------------------+---------------+---------+----------------------+----------------------+--------------------+
2 rows in set (0.00 sec)

mysql> delimiter $$
mysql> create procedure empCountByDept(in deptid int, out countemp int)
    -> begin
    -> select count(*) into countemp from employees where department_id=deptid group by department_id;
    -> end $$
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call empCountByDept(50, @results);
Query OK, 1 row affected (0.00 sec)

mysql> select @results;
+----------+
| @results |
+----------+
|       45 |
+----------+
1 row in set (0.00 sec)

mysql> create procedure empCountByDeptinout(inout val int) begin select count(*) into val from employees where department_id=val; end$$
Query OK, 0 rows affected (0.01 sec)

mysql> set @val=60;
    -> $$
Query OK, 0 rows affected (0.00 sec)

mysql> call empCountByDeptinout(@val);
    -> $$
Query OK, 1 row affected (0.00 sec)

mysql> select @val$$
+------+
| @val |
+------+
|    5 |
+------+
1 row in set (0.00 sec)

mysql> create procedure NameSal1(inout empid int,out name varchar(40)) begin select department_id, first_name into empid,name from employees where employee_id=empid; end$$
Query OK, 0 rows affected (0.01 sec)

mysql> call NameSal1(@val,@res)$$
Query OK, 1 row affected (0.00 sec)

mysql> select @val,@res;
    -> $$
+------+-------+
| @val | @res  |
+------+-------+
|   60 | Diana |
+------+-------+

mysql> create procedure salarycond(in sal int, out grd varchar(40))
    -> begin
    -> if sal>7000 then 
    -> set grd = "High";
    -> else
    -> set grd = "low";
    -> end if;
    -> end$$
Query OK, 0 rows affected (0.01 sec)

mysql> set @sal=9000;
    -> $$
Query OK, 0 rows affected (0.00 sec)

mysql> call salarycond(@sal, @res)$$
Query OK, 0 rows affected (0.00 sec)

mysql> select @res;
    -> $$
+------+
| @res |
+------+
| High |
+------+
1 row in set (0.00 sec)

mysql> set @sal=900;
    -> $$
Query OK, 0 rows affected (0.00 sec)

mysql> call salarycond(@sal, @res)$$
Query OK, 0 rows affected (0.00 sec)

mysql> select @res;
    -> $$
+------+
| @res |
+------+
| low  |
+------+
1 row in set (0.00 sec)

mysql> create procedure checknum(in n int, out o varchar(50)) begin if n>0 then set o="positive"; elseif n<0 then set o="negative"; else set o="zero"; end if; end$$
Query OK, 0 rows affected (0.01 sec)

mysql> set @i=92
    -> $$
Query OK, 0 rows affected (0.00 sec)

mysql> call checknum(@i,@o);
    -> $$
Query OK, 0 rows affected (0.01 sec)

mysql> select @o$$
+----------+
| @o       |
+----------+
| positive |
+----------+
1 row in set (0.00 sec)

mysql> set @i=-93;
    -> $$
Query OK, 0 rows affected (0.00 sec)

mysql> call checknum(@i,@o)$$
Query OK, 0 rows affected (0.00 sec)

mysql> select @o$$
+----------+
| @o       |
+----------+
| negative |
+----------+
1 row in set (0.00 sec)

mysql> set @i=0$$
Query OK, 0 rows affected (0.00 sec)

mysql> call checknum(@i,@o)$$
Query OK, 0 rows affected (0.01 sec)

mysql> select @o$$
+------+
| @o   |
+------+
| zero |
+------+
1 row in set (0.00 sec)

mysql> create procedure chkLoop(inout num int) begin declare sum int default 0;declare i int default 1; while i<num do set sum=sum+i; set i=i+1; end while; set num = sum; end$$
Query OK, 0 rows affected (0.01 sec)

mysql> set @v=10$$
Query OK, 0 rows affected (0.00 sec)

mysql> call chkLoop(@v)$$
Query OK, 0 rows affected (0.00 sec)

mysql> select @v$$
+------+
| @v   |
+------+
|   45 |
+------+
1 row in set (0.00 sec)

mysql> create procedure studentUpdate(in sid int, in fname varchar(30), in cont varchar(10), in addr varchar(30)) begin update student set firstname=fname where student_id=sid;update student set contact=cont where student_id=sid; update student set address=addr where student_id=sid; end$$
Query OK, 0 rows affected (0.01 sec)

mysql> call studentUpdate(2,"Rakesh",8389929,"SSM hos");
    -> $$
Query OK, 1 row affected (0.02 sec)

mysql> select * from student;
    -> $$
+------------+---------------+------------+------------+
| student_id | firstname     | contact    | address    |
+------------+---------------+------------+------------+
|          1 | Amir          | 9345983458 | SSM Hostel |
|          2 | Rakesh        | 8389929    | SSM hos    |
|          3 | YadhuKrishna  | 898443     | SSM Hostel |
|          4 | AnanduKrishna | 909743     | SSM Hostel |
|          5 | Jaga          | 934593     | SSM Hostel |
|          6 | Vishal        | 94353      | SSM Hostel |
|          7 | Hari          | 93434      | SSM Hostel |
|          8 | Siva          | 9345234    | SSM Hostel |
|        700 | Dinesh        | 82348238   | SSM Hostel |
+------------+---------------+------------+------------+
9 rows in set (0.00 sec)

mysql> create procedure studentInsert(in sid int, in fname varchar(30), in cont varchar(10), in addr varchar(30)) begin insert into student values(sid, fname, cont, addr); end$$

Query OK, 0 rows affected (0.01 sec)

mysql> call studentInsert(108,"Ambulance",839348,"SSM hostel")$$
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
    -> $$
+------------+---------------+------------+------------+
| student_id | firstname     | contact    | address    |
+------------+---------------+------------+------------+
|          1 | Amir          | 9345983458 | SSM Hostel |
|          2 | Rakesh        | 8389929    | SSM hos    |
|          3 | YadhuKrishna  | 898443     | SSM Hostel |
|          4 | AnanduKrishna | 909743     | SSM Hostel |
|          5 | Jaga          | 934593     | SSM Hostel |
|          6 | Vishal        | 94353      | SSM Hostel |
|          7 | Hari          | 93434      | SSM Hostel |
|          8 | Siva          | 9345234    | SSM Hostel |
|        700 | Dinesh        | 82348238   | SSM Hostel |
|        108 | Ambulance     | 839348     | SSM hostel |
+------------+---------------+------------+------------+
10 rows in set (0.00 sec)

mysql> CREATE PROCEDURE GetAllFromTable(IN table_name VARCHAR(64))
    -> BEGIN
    -> SET @sql = CONCAT('select * from ', table_name);
    -> PREPARE stmt FROM @sql;
    -> EXECUTE stmt;
    -> DEALLOCATE PREPARE stmt;
    -> END$$
Query OK, 0 rows affected (0.01 sec)

mysql> CALL GetAllFromTable('job_history')$$
+-------------+------------+------------+------------+---------------+
| employee_id | start_date | end_date   | job_id     | department_id |
+-------------+------------+------------+------------+---------------+
|         101 | 1989-09-21 | 1993-10-27 | AC_ACCOUNT |           110 |
|         101 | 1993-10-28 | 1997-03-15 | AC_MGR     |           110 |
|         102 | 1993-01-13 | 1998-07-24 | IT_PROG    |            60 |
|         114 | 1998-03-24 | 1999-12-31 | ST_CLERK   |            50 |
|         122 | 1999-01-01 | 1999-12-31 | ST_CLERK   |            50 |
|         176 | 1998-03-24 | 1998-12-31 | SA_REP     |            80 |
|         176 | 1999-01-01 | 1999-12-31 | SA_MAN     |            80 |
|         200 | 1987-09-17 | 1993-06-17 | AD_ASST    |            90 |
|         200 | 1994-07-01 | 1998-12-31 | AC_ACCOUNT |            90 |
|         201 | 1996-02-17 | 1999-12-19 | MK_REP     |            20 |
+-------------+------------+------------+------------+---------------+
10 rows in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> CREATE PROCEDURE GetAllFromcol(IN table_name VARCHAR(64),in col varchar(64)) BEGIN SET @sql = CONCAT('select ',col,' from ', table_name); PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt; END$$
Query OK, 0 rows affected (0.01 sec)

mysql> call GetAllFromcol('departments','department_id')$$
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
27 rows in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> create procedure chkCursor(out name varchar(30)) begin declare empid int; declare cur1 cursor for select first_name from employees; open cur1; fetch cur1 into name; close
 cur1; end$$
Query OK, 0 rows affected (0.01 sec)

mysql> call chkCursor(@res);
    -> $$
Query OK, 0 rows affected (0.01 sec)

mysql> select @res$$;
+------+
| @res |
+------+
| Ram  |
+------+
1 row in set (0.00 sec)

mysql> create procedure chkcursor2(out res varchar(30)) begin declare sumval int default 0; declare val int; declare cur1 cursor for select salary from employees where salary is not null; declare CONTINUE HANDLER FOR NOT FOUND SET @finished=True; open cur1; getcur:loop fetch cur1 into val; if @finished=True then LEAVE getcur; end if; set sumval=sumval+val; end loop getcur; close cur1; set res=sumval; end$$
Query OK, 0 rows affected (0.01 sec)

mysql> call chkcursor2(@y) $$
Query OK, 0 rows affected (0.00 sec)

mysql> select @y;
    -> $$
+--------+
| @y     |
+--------+
| 83748  |
+--------+
1 row in set (0.00 sec)

mysql> select e.department_id, sum(case when e.job_id="AD_PRES" then e.salary end) as AD_PRES, sum(case when e.job_id="AD_VP" then e.salary end) as AD_VP, sum(case when e.job_id="AD_ASST" then e.salary end) as AD_ASST from employees group by e.department_id;
+---------------+----------+----------+---------+
| department_id | AD_PRES  | AD_VP    | AD_ASST |
+---------------+----------+----------+---------+
|          NULL |     NULL |     NULL |    NULL |
|            10 |     NULL |     NULL | 4400.00 |
|            20 |     NULL |     NULL |    NULL |
|            30 |     NULL |     NULL |    NULL |
|            40 |     NULL |     NULL |    NULL |
|            50 |     NULL |     NULL |    NULL |
|            60 |     NULL |     NULL |    NULL |
|            70 |     NULL |     NULL |    NULL |
|            80 |     NULL |     NULL |    NULL |
|            90 | 24000.00 | 34000.00 |    NULL |
|           100 |     NULL |     NULL |    NULL |
|           110 |     NULL |     NULL |    NULL |
+---------------+----------+----------+---------+
12 rows in set (0.00 sec)

mysql> select e.department_id, sum(case when e.job_id="AD_PRES" then e.salary else 0 end) as AD_PRES, sum(case when e.job_id="AD_VP" then e.salary else 0 end) as AD_VP, sum(case when e.job_id="AD_ASST" then e.salary else 0 end) as AD_ASST from employees e group by e.department_id;
+---------------+----------+----------+---------+
| department_id | AD_PRES  | AD_VP    | AD_ASST |
+---------------+----------+----------+---------+
|          NULL |     0.00 |     0.00 |    0.00 |
|            10 |     0.00 |     0.00 | 4400.00 |
|            20 |     0.00 |     0.00 |    0.00 |
|            30 |     0.00 |     0.00 |    0.00 |
|            40 |     0.00 |     0.00 |    0.00 |
|            50 |     0.00 |     0.00 |    0.00 |
|            60 |     0.00 |     0.00 |    0.00 |
|            70 |     0.00 |     0.00 |    0.00 |
|            80 |     0.00 |     0.00 |    0.00 |
|            90 | 24000.00 | 34000.00 |    0.00 |
|           100 |     0.00 |     0.00 |    0.00 |
|           110 |     0.00 |     0.00 |    0.00 |
+---------------+----------+----------+---------+
12 rows in set (0.00 sec)

mysql> create table hs1(first_name varchar(30), last_name varchar(30));
Query OK, 0 rows affected (0.05 sec)

mysql> show tables;
+---------------------------+
| Tables_in_varunm15t38hedu |
+---------------------------+
| Items                     |
| countries                 |
| cpdept                    |
| cpemp                     |
| departments               |
| empPartitionKey           |
| empPartitionList          |
| empPartitionRange         |
| employees                 |
| emppartition1             |
| exam                      |
| hs1                       |
| job_history               |
| jobs                      |
| locations                 |
| regions                   |
| stu_view                  |
| stud_v2                   |
| stud_v3                   |
| stud_v4                   |
| stud_v5                   |
| student                   |
| table1                    |
| table2                    |
+---------------------------+
24 rows in set (0.00 sec)

mysql> insert into hs1 values("Varun","M), ("Amir","S");
    "> ^C
mysql> insert into hs1 values("Varun","M"), ("Amir","S");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from hs1;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Varun      | M         |
| Amir       | S         |
+------------+-----------+
2 rows in set (0.00 sec)

mysql> set autocommit=0;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into hs1 values("Anandu","A");
Query OK, 1 row affected (0.00 sec)

mysql> select * from hs1;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Varun      | M         |
| Amir       | S         |
| Anandu     | A         |
+------------+-----------+
3 rows in set (0.00 sec)

mysql> set autocommit=1;
Query OK, 0 rows affected (0.01 sec)

mysql> set autocommit=0;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into hs1 values("yadu","k");
Query OK, 1 row affected (0.00 sec)

mysql> select * from hs1;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Varun      | M         |
| Amir       | S         |
| Anandu     | A         |
| yadu       | k         |
+------------+-----------+
4 rows in set (0.00 sec)

mysql> commit;
Query OK, 0 rows affected (0.01 sec)

mysql> begin transaction;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'transaction' at line 1
mysql> start transaction;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into hs1 values("jaga","b");
Query OK, 1 row affected (0.00 sec)

mysql> select * from hs1;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Varun      | M         |
| Amir       | S         |
| Anandu     | A         |
| yadu       | k         |
| jaga       | b         |
+------------+-----------+
5 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from hs1;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Varun      | M         |
| Amir       | S         |
| Anandu     | A         |
| yadu       | k         |
+------------+-----------+
4 rows in set (0.00 sec)

mysql> start transaction;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into hs1 values("jaga","b"),("hari","s");
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from hs1;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Varun      | M         |
| Amir       | S         |
| Anandu     | A         |
| yadu       | k         |
| jaga       | b         |
| hari       | s         |
+------------+-----------+
6 rows in set (0.00 sec)

mysql> savepoint s1;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into hs1 values("sjkldfdsk","l"),("jsdkl","u");
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from hs1;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Varun      | M         |
| Amir       | S         |
| Anandu     | A         |
| yadu       | k         |
| jaga       | b         |
| hari       | s         |
| sjkldfdsk  | l         |
| jsdkl      | u         |
+------------+-----------+
8 rows in set (0.00 sec)

mysql> rollback to s1;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from hs1;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Varun      | M         |
| Amir       | S         |
| Anandu     | A         |
| yadu       | k         |
| jaga       | b         |
| hari       | s         |
+------------+-----------+
6 rows in set (0.00 sec)

mysql> commit;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from hs1;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Varun      | M         |
| Amir       | S         |
| Anandu     | A         |
| yadu       | k         |
| jaga       | b         |
| hari       | s         |
+------------+-----------+
6 rows in set (0.00 sec)
