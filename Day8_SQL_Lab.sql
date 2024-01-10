Day8- Lab

Lab 1: Use the Student management system Database and table from our previous
lab and write a sql query to achieve the below scenario.

Assume you are managing a university database that tracks student enrollments in
various courses. You have two tables, "Student" and "Enrollment". The goal is to
retrieve information about each student's ID, first name, last name, and their
enrollment details, including the enrollment ID and the associated course ID.

--using 'studentmanagementsystem' database
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
7 rows in set (0.02 sec)

--checking description of 'enrollment' table
mysql> desc enrollment;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| EnrollmentID   | varchar(20) | NO   | PRI | NULL    |       |
| EnrollmentDate | date        | YES  |     | NULL    |       |
| StudentID      | varchar(20) | YES  | MUL | NULL    |       |
| CourseID       | varchar(10) | YES  | MUL | NULL    |       |
| InstructorID   | varchar(20) | YES  | MUL | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

--checking all records of student table
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

--checking all records of enrollment table
mysql> select * from enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
| E1           | 2023-01-10     | S1        | C1       | I1           |
| E2           | 2023-02-15     | S2        | C2       | I2           |
| E3           | 2023-03-20     | S3        | C3       | I3           |
| E4           | 2023-04-25     | S4        | C4       | I4           |
| E5           | 2023-05-30     | S5        | C5       | I5           |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)


--retrieve information about each student's ID, first name, last name, and their enrollment details, including the enrollment ID and the associated course ID.

mysql> SELECT
    ->     s.StudentID,
    ->     s.FirstName,
    ->     s.LastName,
    ->     e.EnrollmentID,
    ->     e.CourseID
    -> FROM
    ->     Student s
    -> JOIN
    ->     Enrollment e ON s.StudentID = e.StudentID;
+-----------+-----------+----------+--------------+----------+
| StudentID | FirstName | LastName | EnrollmentID | CourseID |
+-----------+-----------+----------+--------------+----------+
| S1        | Bidusha   | Halder   | E1           | C1       |
| S2        | Chayan    | Jana     | E2           | C2       |
| S3        | Sunny     | Ghosh    | E3           | C3       |
| S4        | Srirupa   | Hati     | E4           | C4       |
| S5        | Shreya    | Banerjee | E5           | C5       |
+-----------+-----------+----------+--------------+----------+
5 rows in set (0.01 sec)

