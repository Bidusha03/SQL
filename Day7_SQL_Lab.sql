Day7- Lab

Database Schema:
Use the same database scheme created in previous lab.

--using previous database 'StudentManagementSystem'
mysql> use studentmanagementsystem;
Database changed

--checking description of 'student' table
mysql> desc student;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| StudentID   | varchar(20) | NO   | PRI | NULL    |       |
| FirstName   | varchar(20) | NO   |     | NULL    |       |
| LastName    | varchar(20) | NO   |     | NULL    |       |
| DateofBirth | date        | NO   |     | NULL    |       |
| Gender      | varchar(10) | NO   |     | NULL    |       |
| Email       | varchar(50) | NO   |     | NULL    |       |
| Phone       | varchar(20) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

Assignment 1:

Task1: Assume you are managing a database of student records, and you need to
retrieve information about students born after June 16, 2009. What will be the sql query
for this?

--Student table all records
mysql> select * from student;
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
| StudentID | FirstName | LastName | DateofBirth | Gender | Email                   | Phone      |
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
| 1         | Joba      | Das      | 2010-01-01  | Female | joba.das@example.com    | 1274567890 |
| 2         | Mili      | Sarkar   | 2011-02-15  | Female | mili.sarkar@example.com | 987653210  |
| S1        | Bidusha   | Halder   | 2002-02-03  | Female | bidusha@gmail.com       | 9965785467 |
| S2        | Chayan    | Jana     | 2002-10-20  | Male   | chayan@gmail.com        | 8798767898 |
| S3        | Sunny     | Ghosh    | 2003-05-22  | Male   | sunny@gmail.com         | 8798767896 |
| S4        | Srirupa   | Hati     | 2002-08-12  | Female | srirupa@gmail.com       | 8984534567 |
| S5        | Shreya    | Banerjee | 2002-05-28  | Female | shreya@gmail.com        | 6546787654 |
| S7        | Joy       | Das      | 2000-08-21  | Male   | joy@example.com         | 9234567891 |
| S8        | Joyee     | Sardar   | 1999-05-14  | Female | joyee@example.com       | 9876543210 |
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
9 rows in set (0.00 sec)

mysql> -- Retrieve information about students born after June 16, 2009
mysql> SELECT *
    -> FROM student
    -> WHERE DateofBirth > '2009-06-16';
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
| StudentID | FirstName | LastName | DateofBirth | Gender | Email                   | Phone      |
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
| 1         | Joba      | Das      | 2010-01-01  | Female | joba.das@example.com    | 1274567890 |
| 2         | Mili      | Sarkar   | 2011-02-15  | Female | mili.sarkar@example.com | 987653210  |
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
2 rows in set (0.00 sec)


Task2: Assume you have a database containing a "Student" table with information
about students, including their first names. You want to retrieve records of students
whose first names start with either 'A' or 'J'. To achieve this,what will be your sql query?

--checking original 'student' table
mysql> select * from student;
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
| StudentID | FirstName | LastName | DateofBirth | Gender | Email                   | Phone      |
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
| 1         | Joba      | Das      | 2010-01-01  | Female | joba.das@example.com    | 1274567890 |
| 2         | Mili      | Sarkar   | 2011-02-15  | Female | mili.sarkar@example.com | 987653210  |
| S1        | Bidusha   | Halder   | 2002-02-03  | Female | bidusha@gmail.com       | 9965785467 |
| S2        | Chayan    | Jana     | 2002-10-20  | Male   | chayan@gmail.com        | 8798767898 |
| S3        | Sunny     | Ghosh    | 2003-05-22  | Male   | sunny@gmail.com         | 8798767896 |
| S4        | Srirupa   | Hati     | 2002-08-12  | Female | srirupa@gmail.com       | 8984534567 |
| S5        | Shreya    | Banerjee | 2002-05-28  | Female | shreya@gmail.com        | 6546787654 |
| S7        | Joy       | Das      | 2000-08-21  | Male   | joy@example.com         | 9234567891 |
| S8        | Joyee     | Sardar   | 1999-05-14  | Female | joyee@example.com       | 9876543210 |
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
9 rows in set (0.00 sec)

mysql> -- Retrieve records of students whose first names start with either 'A' or 'J'
mysql> SELECT *
    -> FROM Student
    -> WHERE FirstName LIKE 'A%' OR FirstName LIKE 'J%';
+-----------+-----------+----------+-------------+--------+----------------------+------------+
| StudentID | FirstName | LastName | DateofBirth | Gender | Email                | Phone      |
+-----------+-----------+----------+-------------+--------+----------------------+------------+
| 1         | Joba      | Das      | 2010-01-01  | Female | joba.das@example.com | 1274567890 |
| S7        | Joy       | Das      | 2000-08-21  | Male   | joy@example.com      | 9234567891 |
| S8        | Joyee     | Sardar   | 1999-05-14  | Female | joyee@example.com    | 9876543210 |
+-----------+-----------+----------+-------------+--------+----------------------+------------+
3 rows in set (0.00 sec)

Task 3 .Let's consider a scenario where you have a database with a "Student" table that
contains information about students, including their first names and email addresses.
You want to retrieve records of students whose first name is not 'Alice' and whose email
addresses contain the domain '@gmail.com'. To achieve this, what will be your sql
query?

--original 'student' table
mysql> select * from student;
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
| StudentID | FirstName | LastName | DateofBirth | Gender | Email                   | Phone      |
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
| 1         | Joba      | Das      | 2010-01-01  | Female | joba.das@example.com    | 1274567890 |
| 2         | Mili      | Sarkar   | 2011-02-15  | Female | mili.sarkar@example.com | 987653210  |
| S1        | Bidusha   | Halder   | 2002-02-03  | Female | bidusha@gmail.com       | 9965785467 |
| S2        | Chayan    | Jana     | 2002-10-20  | Male   | chayan@gmail.com        | 8798767898 |
| S3        | Sunny     | Ghosh    | 2003-05-22  | Male   | sunny@gmail.com         | 8798767896 |
| S4        | Srirupa   | Hati     | 2002-08-12  | Female | srirupa@gmail.com       | 8984534567 |
| S5        | Shreya    | Banerjee | 2002-05-28  | Female | shreya@gmail.com        | 6546787654 |
| S7        | Joy       | Das      | 2000-08-21  | Male   | joy@example.com         | 9234567891 |
| S8        | Joyee     | Sardar   | 1999-05-14  | Female | joyee@example.com       | 9876543210 |
+-----------+-----------+----------+-------------+--------+-------------------------+------------+
9 rows in set (0.00 sec)

mysql> -- This query retrieves records of students whose first name is not 'Alice'
mysql> -- and whose email addresses contain the domain '@gmail.com'.
mysql> SELECT *
    -> FROM Student
    -> WHERE FirstName <> 'Alice' -- Exclude students with the first name 'Alice'
    -> AND Email LIKE '%@gmail.com%'; -- Include only students with email addresses containing '@gmail.com'
+-----------+-----------+----------+-------------+--------+-------------------+------------+
| StudentID | FirstName | LastName | DateofBirth | Gender | Email             | Phone      |
+-----------+-----------+----------+-------------+--------+-------------------+------------+
| S1        | Bidusha   | Halder   | 2002-02-03  | Female | bidusha@gmail.com | 9965785467 |
| S2        | Chayan    | Jana     | 2002-10-20  | Male   | chayan@gmail.com  | 8798767898 |
| S3        | Sunny     | Ghosh    | 2003-05-22  | Male   | sunny@gmail.com   | 8798767896 |
| S4        | Srirupa   | Hati     | 2002-08-12  | Female | srirupa@gmail.com | 8984534567 |
| S5        | Shreya    | Banerjee | 2002-05-28  | Female | shreya@gmail.com  | 6546787654 |
+-----------+-----------+----------+-------------+--------+-------------------+------------+
5 rows in set (0.00 sec)


Assignment 2:

Task1: Create a table Person with PersonID int, FirstName varchar(30),
LastName varchar(30) and age (int).
Make PersonID PRIMARY KEY.

--creating 'person' table
mysql> CREATE TABLE Person (
    ->     PersonID INT PRIMARY KEY,
    ->     FirstName VARCHAR(30),
    ->     LastName VARCHAR(30),
    ->     Age INT
    -> );
Query OK, 0 rows affected (0.15 sec)

Task2: Create a table Employee with emp_id int, first_name varchar(30),
last_name varchar(30) and age (int )
Make emp_id PRIMARY KEY.

--creating employee table
mysql> CREATE TABLE Employee (
    ->     emp_id INT PRIMARY KEY,
    ->     first_name VARCHAR(30),
    ->     last_name VARCHAR(30),
    ->     age INT
    -> );
Query OK, 0 rows affected (0.05 sec)


Task 3: Insert data to Person table

--inserting values into person table
INSERT INTO Person (PersonID, FirstName, LastName, Age)
VALUES
(1, 'Joy', 'Chatterjee', 25),
(2, 'Julie', 'Smith', 30),
(3, 'Mina', 'Das', 22),
(4, 'Elison', 'Williams', 28),
(5, 'Daniel', 'Brown', 35);

--checking records of person table
mysql> select * from person;
+----------+-----------+------------+------+
| PersonID | FirstName | LastName   | Age  |
+----------+-----------+------------+------+
|        1 | Joy       | Chatterjee |   25 |
|        2 | Julie     | Smith      |   30 |
|        3 | Mina      | Das        |   22 |
|        4 | Elison    | Williams   |   28 |
|        5 | Daniel    | Brown      |   35 |
+----------+-----------+------------+------+
5 rows in set (0.00 sec)

--inserting data into employee table
Task 4: Insert data to Employee table

mysql> INSERT INTO Employee (emp_id, first_name, last_name, age)
    -> VALUES
    -> (101, 'Alison', 'Parkar', 28),
    -> (102, 'Bobby', 'Sen', 35),
    -> (103, 'Charlie', 'Chaplin', 22),
    -> (104, 'David', 'What', 30),
    -> (105, 'Evion', 'Williams', 27);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

--all records of employee table
mysql> select * from employee;
+--------+------------+-----------+------+
| emp_id | first_name | last_name | age  |
+--------+------------+-----------+------+
|    101 | Alison     | Parkar    |   28 |
|    102 | Bobby      | Sen       |   35 |
|    103 | Charlie    | Chaplin   |   22 |
|    104 | David      | What      |   30 |
|    105 | Evion      | Williams  |   27 |
+--------+------------+-----------+------+
5 rows in set (0.00 sec)


Task 5: Create Union of two tables

--all records of 'person' table
mysql> select * from person;
+----------+-----------+------------+------+
| PersonID | FirstName | LastName   | Age  |
+----------+-----------+------------+------+
|        1 | Joy       | Chatterjee |   25 |
|        2 | Julie     | Smith      |   30 |
|        3 | Mina      | Das        |   22 |
|        4 | Elison    | Williams   |   28 |
|        5 | Daniel    | Brown      |   35 |
+----------+-----------+------------+------+
5 rows in set (0.00 sec)

--all records of 'employee' table
mysql> select * from employee;
+--------+------------+-----------+------+
| emp_id | first_name | last_name | age  |
+--------+------------+-----------+------+
|    101 | Alison     | Parkar    |   28 |
|    102 | Bobby      | Sen       |   35 |
|    103 | Charlie    | Chaplin   |   22 |
|    104 | David      | What      |   30 |
|    105 | Evion      | Williams  |   27 |
+--------+------------+-----------+------+
5 rows in set (0.00 sec)

--creating union join of 'person' and 'employee' table
mysql> SELECT PersonID, FirstName, LastName, Age FROM Person
    -> UNION
    -> SELECT emp_id, first_name, last_name, age FROM Employee;
+----------+-----------+------------+------+
| PersonID | FirstName | LastName   | Age  |
+----------+-----------+------------+------+
|        1 | Joy       | Chatterjee |   25 |
|        2 | Julie     | Smith      |   30 |
|        3 | Mina      | Das        |   22 |
|        4 | Elison    | Williams   |   28 |
|        5 | Daniel    | Brown      |   35 |
|      101 | Alison    | Parkar     |   28 |
|      102 | Bobby     | Sen        |   35 |
|      103 | Charlie   | Chaplin    |   22 |
|      104 | David     | What       |   30 |
|      105 | Evion     | Williams   |   27 |
+----------+-----------+------------+------+
10 rows in set (0.01 sec)




