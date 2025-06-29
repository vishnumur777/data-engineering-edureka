-- task 1: Design the Academic Database Schema
create table departmentsvarun(
    department_id int primary key,
    name varchar(100),
    hod varchar(100)
);
Query OK, 0 rows affected (0.05 sec)

create table studentvarun(
    student_id int primary key,
    name varchar(40),
    gender varchar(1),
    dob date,
    department_id int,
    email varchar(100)
);
Query OK, 0 rows affected (0.05 sec)

create table instructorsvarun (
    instructor_id int primary key,
    name varchar(100),
    department_id int,
    foreign key (department_id) references departmentsvarun(department_id)
);
Query OK, 0 rows affected (0.05 sec)

create table coursesvarun (
    course_id int primary key,
    title varchar(100),
    credit_hours int,
    instructor_id int,
    foreign key (instructor_id) references instructorsvarun(instructor_id)
);
Query OK, 0 rows affected (0.05 sec)

create table enrollmentsvarun(
    enrollment_id int primary key,
    student_id int,
    course_id int,
    semester varchar(10),
    year int,
    grade decimal(5,2),
    foreign key (student_id) references studentvarun(student_id),
    foreign key (course_id) references coursesvarun(course_id)
);
Query OK, 0 rows affected (0.05 sec)

-- task 2: Populate Data and Perform CRUD Operations

insert into departmentsvarun values
(1, 'Gynacology', 'dr. Pari'),
(2, 'Orthopaedics', 'dr. Manohar'),
(3, 'Neurology', 'dr. Velraj');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

insert into studentvarun values
(101, 'Anandu', 'm', '2003-05-20', 1, 'anandu@uni.edu'),
(102, 'Amir', 'm', '2002-11-02', 2, 'yadhu@uni.edu'),
(103, 'Varun', 'm', '2001-07-15', 1, 'varun@uni.edu'),
(104, 'Kanimozhi', 'f', '2003-09-22', 3, 'kanimozhi@uni.edu'),
(105, 'Yazhini', 'f', '2004-01-30', 1, 'yazhini@uni.edu');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

insert into instructorsvarun values
(201, 'dr. Mohan', 1),
(202, 'dr. Arokiyaraj', 2);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

insert into coursesvarun values
(301, 'Physiology', 4, 201),
(302, 'Anatomy', 3, 202),
(303, 'Pediatrics', 5, 201);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

insert into enrollmentsvarun values
(1, 101, 301, 'fall', 2023, 85),
(2, 102, 302, 'fall', 2023, 78),
(3, 103, 301, 'fall', 2023, 90),
(4, 105, 303, 'spring', 2024, 88);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

--Update a student’s email address

update studentvarun set email = 'anandu.krishna@uni.edu' where student_id = 101;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

-- Delete a course that is not associated with any enrollment

insert into coursesvarun values(304,'Entomology',2,201);
Query OK, 1 row affected (0.00 sec)
Records: 1  Duplicates: 0  Warnings: 0

select * from coursesvarun;
+-----------+------------+--------------+---------------+
| course_id | title      | credit_hours | instructor_id |
+-----------+------------+--------------+---------------+
|       301 | physiology |            4 |           201 |
|       302 | anatomy    |            3 |           202 |
|       303 | pediatrics |            5 |           201 |
|       304 | entomology |            2 |           201 |
+-----------+------------+--------------+---------------+
4 rows in set (0.00 sec)

delete from coursesvarun where course_id not in (select distinct course_id from enrollmentsvarun);
Query OK, 1 rows affected (0.00 sec)

select * from coursesvarun;
+-----------+------------+--------------+---------------+
| course_id | title      | credit_hours | instructor_id |
+-----------+------------+--------------+---------------+
|       301 | physiology |            4 |           201 |
|       302 | anatomy    |            3 |           202 |
|       303 | pediatrics |            5 |           201 |
+-----------+------------+--------------+---------------+
3 rows in set (0.00 sec)



-- Add a new student who is yet to enroll
insert into studentvarun values (106, 'Amir', 'm', '2004-12-12', 2, 'amir@uni.edu');
Query OK, 1 row affected (0.01 sec)

select * from studentvarun;
+------------+-----------+--------+------------+---------------+------------------------+
| student_id | name      | gender | dob        | department_id | email                  |
+------------+-----------+--------+------------+---------------+------------------------+
|        101 | Anandu    | m      | 2003-05-20 |             1 | anandu.krishna@uni.edu |
|        102 | Amir      | m      | 2002-11-02 |             2 | yadhu@uni.edu          |
|        103 | Varun     | m      | 2001-07-15 |             1 | varun@uni.edu          |
|        104 | Kanimozhi | f      | 2003-09-22 |             3 | kanimozhi@uni.edu      |
|        105 | yazhini   | f      | 2004-01-30 |             1 | yazhini@uni.edu        |
|        106 | Amir      | m      | 2004-12-12 |             2 | amir@uni.edu           |
+------------+-----------+--------+------------+---------------+------------------------+
6 rows in set (0.00 sec)

-- task 3:Retrieve Filtered Academic Data Using Conditions and Sorting

-- List students born after 2002 in descending order of birth date

select * from studentvarun where dob > '2002-01-01' order by dob desc;
+------------+-----------+--------+------------+---------------+------------------------+
| student_id | name      | gender | dob        | department_id | email                  |
+------------+-----------+--------+------------+---------------+------------------------+
|        106 | Amir      | m      | 2004-12-12 |             2 | amir@uni.edu           |
|        105 | Yazhini   | f      | 2004-01-30 |             1 | yazhini@uni.edu        |
|        104 | Kanimozhi | f      | 2003-09-22 |             3 | kanimozhi@uni.edu      |
|        101 | Anandu    | m      | 2003-05-20 |             1 | anandu.krishna@uni.edu |
|        102 | Yadhu     | m      | 2002-11-02 |             2 | yadhu@uni.edu          |
+------------+-----------+--------+------------+---------------+------------------------+
5 rows in set (0.00 sec)

-- Display top 5 courses by number of enrollments
select course_id, count(*) as enrollment_count
from enrollmentsvarun
group by course_id
order by enrollment_count desc
limit 5;
+-----------+------------------+
| course_id | enrollment_count |
+-----------+------------------+
|       301 |                2 |
|       302 |                1 |
|       303 |                1 |
+-----------+------------------+
3 rows in set (0.00 sec)

-- Show departments with fewer than 5 students
select d.department_id, d.name
from departmentsvarun d
join studentvarun s on d.department_id = s.department_id
group by d.department_id, d.name
having count(s.student_id) < 5;
+---------------+--------------+
| department_id | name         |
+---------------+--------------+
|             1 | Gynacology   |
|             2 | Orthopaedics |
|             3 | Neurology    |
+---------------+--------------+
3 rows in set (0.00 sec)

-- task 4: query with wildcards, ranges, and aggregates


-- List students whose names start with the letter ‘A’

select * from studentvarun where name like 'a%';
+------------+--------+--------+------------+---------------+------------------------+
| student_id | name   | gender | dob        | department_id | email                  |
+------------+--------+--------+------------+---------------+------------------------+
|        101 | Anandu | m      | 2003-05-20 |             1 | anandu.krishna@uni.edu |
|        106 | Amir   | m      | 2004-12-12 |             2 | amir@uni.edu           |
+------------+--------+--------+------------+---------------+------------------------+
2 rows in set (0.00 sec)

-- Find all courses with credit_hours between 3 and 5.

select * from coursesvarun where credit_hours between 3 and 5;
+-----------+------------+--------------+---------------+
| course_id | title      | credit_hours | instructor_id |
+-----------+------------+--------------+---------------+
|       301 | physiology |            4 |           201 |
|       302 | anatomy    |            3 |           202 |
|       303 | pediatrics |            5 |           201 |
+-----------+------------+--------------+---------------+
3 rows in set (0.00 sec)

-- Display total number of enrollments for each semester
select semester, count(*) as total_enrollments
from enrollmentsvarun
group by semester;
+----------+-------------------+
| semester | total_enrollments |
+----------+-------------------+
| fall     |                 3 |
| spring   |                 1 |
+----------+-------------------+
2 rows in set (0.00 sec)

-- task 5: Generate Reports Using Multi-table Joins

-- Display student name, course title, instructor name, and grade for all enrollments using INNER JOIN.

select s.name as student_name, c.title as course_title, i.name as instructor_name, e.grade from enrollmentsvarun e
inner join studentvarun s on e.student_id = s.student_id
inner join coursesvarun c on e.course_id = c.course_id
inner join instructorsvarun i on c.instructor_id = i.instructor_id;
+--------------+--------------+-----------------+-------+
| student_name | course_title | instructor_name | grade |
+--------------+--------------+-----------------+-------+
| Anandu       | physiology   | dr. mohan       | 85.00 |
| Varun        | physiology   | dr. mohan       | 90.00 |
| Yazhini      | pediatrics   | dr. mohan       | 88.00 |
| Yadhu        | anatomy      | dr. arokiyaraj  | 78.00 |
+--------------+--------------+-----------------+-------+
4 rows in set (0.00 sec)

-- Use LEFT JOIN to list all students, including those with no enrollments.
select s.name as student_name, e.course_id
from studentvarun s
left join enrollmentsvarun e on s.student_id = e.student_id;
+--------------+-----------+
| student_name | course_id |
+--------------+-----------+
| Anandu       |       301 |
| Yadhu        |       302 |
| Varun        |       301 |
| Kanimozhi    |      NULL |
| Yazhini      |       303 |
| Amir         |      NULL |
+--------------+-----------+
6 rows in set (0.01 sec)



-- task 6: Apply Subqueries and CASE Statements

-- Write a query using a subquery to find students who have enrolled in all available courses.

insert into enrollmentsvarun values
(5, 106, 301, 'fall', 2023, 85),
(6, 106, 302, 'spring', 2023, 94),
(7, 106, 303, 'spring', 2023, 67);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

-- students enrolled in all courses
select s.student_id, s.name
from studentvarun s
where not exists (
    select * from coursesvarun c
    where not exists (
        select * from enrollmentsvarun e
        where e.student_id = s.student_id and e.course_id = c.course_id
    )
);
+------------+------+
| student_id | name |
+------------+------+
|        106 | Amir |
+------------+------+
1 row in set (0.00 sec)

-- Use CASE to display letter grade (A/B/C) based on numeric grade.
select student_id, grade,
    case
        when grade >= 85 then 'a'
        when grade >= 70 then 'b'
        else 'c'
    end as letter_grade
from enrollmentsvarun;
+------------+-------+--------------+
| student_id | grade | letter_grade |
+------------+-------+--------------+
|        101 | 85.00 | a            |
|        102 | 78.00 | b            |
|        103 | 90.00 | a            |
|        105 | 88.00 | a            |
|        106 | 85.00 | a            |
|        106 | 94.00 | a            |
|        106 | 67.00 | c            |
+------------+-------+--------------+
7 rows in set (0.00 sec)



-- task 7: Summarize Data Using GROUP BY, HAVING, and Views

-- Group students by department and calculate average grade per department
-- Use HAVING to filter departments where the average grade is above 80.

select s.department_id, avg(e.grade) as avg_grade
from studentvarun s
join enrollmentsvarun e on s.student_id = e.student_id
group by s.department_id
having avg(e.grade) > 80;
+---------------+-----------+
| department_id | avg_grade |
+---------------+-----------+
|             1 | 87.666667 |
|             2 | 81.000000 |
+---------------+-----------+
2 rows in set (0.00 sec)

-- Create a VIEW to summarize each student’s ID, name, department, and GPA

create view student_gpa_summary_varun as
select s.student_id, s.name, d.name as department, avg(e.grade) as gpa
from studentvarun s
join departmentsvarun d on s.department_id = d.department_id
join enrollmentsvarun e on s.student_id = e.student_id
group by s.student_id, s.name, d.name;
Query OK, 0 rows affected (0.01 sec)


select * from student_gpa_summary_varun;
+------------+---------+--------------+-----------+
| student_id | name    | department   | gpa       |
+------------+---------+--------------+-----------+
|        101 | Anandu  | Gynacology   | 85.000000 |
|        102 | Yadhu   | Orthopaedics | 78.000000 |
|        103 | Varun   | Gynacology   | 90.000000 |
|        105 | Yazhini | Gynacology   | 88.000000 |
|        106 | Amir    | Orthopaedics | 82.000000 |
+------------+---------+--------------+-----------+
5 rows in set (0.00 sec)

-- task 8: ctes & window functions

-- Use a CTE to display average GPA for each department.

with deptavggpa as (
    select s.department_id, avg(e.grade) as avg_gpa
    from studentvarun s
    join enrollmentsvarun e on s.student_id = e.student_id
    group by s.department_id
)
select * from deptavggpa;
+---------------+-----------+
| department_id | avg_gpa   |
+---------------+-----------+
|             1 | 87.666667 |
|             2 | 81.000000 |
+---------------+-----------+
2 rows in set (0.00 sec)

-- Use DENSE_RANK() to rank students within each department based on GPA
with studentgpa as (
    select s.student_id, s.name, s.department_id, avg(e.grade) as gpa
    from studentvarun s
    join enrollmentsvarun e on s.student_id = e.student_id
    group by s.student_id, s.name, s.department_id
)
select *,dense_rank() over (partition by department_id order by gpa desc) as dept_rank
from studentgpa;
+------------+---------+---------------+-----------+-----------+
| student_id | name    | department_id | gpa       | dept_rank |
+------------+---------+---------------+-----------+-----------+
|        103 | Varun   |             1 | 90.000000 |         1 |
|        105 | yazhini |             1 | 88.000000 |         2 |
|        101 | Anandu  |             1 | 85.000000 |         3 |
|        106 | Amir    |             2 | 82.000000 |         1 |
|        102 | Yadhu   |             2 | 78.000000 |         2 |
+------------+---------+---------------+-----------+-----------+
5 rows in set (0.00 sec)

-- task 9: indexing & query performance


explain select * from enrollmentsvarun where student_id = 101;
+----+-------------+------------------+------------+------+---------------+------------+---------+-------+------+----------+-------+
| id | select_type | table            | partitions | type | possible_keys | key        | key_len | ref   | rows | filtered | Extra |
+----+-------------+------------------+------------+------+---------------+------------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | enrollmentsvarun | NULL       | ref  | student_id    | student_id | 5       | const |    1 |   100.00 | NULL  |
+----+-------------+------------------+------------+------+---------------+------------+---------+-------+------+----------+-------+
1 row in set, 1 warning (0.00 sec)

explain select * from enrollmentsvarun where course_id = 301;
+----+-------------+------------------+------------+------+---------------+-----------+---------+-------+------+----------+-------+
| id | select_type | table            | partitions | type | possible_keys | key       | key_len | ref   | rows | filtered | Extra |
+----+-------------+------------------+------------+------+---------------+-----------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | enrollmentsvarun | NULL       | ref  | course_id     | course_id | 5       | const |    4 |   100.00 | NULL  |
+----+-------------+------------------+------------+------+---------------+-----------+---------+-------+------+----------+-------+
1 row in set, 1 warning (0.00 sec)

-- Create indexes on student_id and course_id for performance optimization

create index idx_student_id on enrollmentsvarun(student_id);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

create index idx_course_id on enrollmentsvarun(course_id);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

-- Use EXPLAIN (or equivalent in your DBMS) to analyze query performance before and after indexing

explain select * from enrollmentsvarun where student_id = 101;
+----+-------------+------------------+------------+------+----------------+----------------+---------+-------+------+----------+-------+
| id | select_type | table            | partitions | type | possible_keys  | key            | key_len | ref   | rows | filtered | Extra |
+----+-------------+------------------+------------+------+----------------+----------------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | enrollmentsvarun | NULL       | ref  | idx_student_id | idx_student_id | 5       | const |    1 |   100.00 | NULL  |
+----+-------------+------------------+------------+------+----------------+----------------+---------+-------+------+----------+-------+

explain select * from enrollmentsvarun where course_id = 301;
+----+-------------+------------------+------------+------+---------------+---------------+---------+-------+------+----------+-------+
| id | select_type | table            | partitions | type | possible_keys | key           | key_len | ref   | rows | filtered | Extra |
+----+-------------+------------------+------------+------+---------------+---------------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | enrollmentsvarun | NULL       | ref  | idx_course_id | idx_course_id | 5       | const |    3 |   100.00 | NULL  |
+----+-------------+------------------+------------+------+---------------+---------------+---------+-------+------+----------+-------+
1 row in set, 1 warning (0.00 sec)

