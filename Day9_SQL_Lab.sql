Day9- Lab

Lab: Use the Student Management System Database and table from previous lab.Perform the following commands on the table Student and Enrollment.

1. Let's consider a scenario where you have a database tracking student
enrollments and some students may not be enrolled in any courses.
John Doe (StudentID: 1) is enrolled in courses with EnrollmentIDs 101 and 102.
Jane Smith (StudentID: 2) is enrolled in courses with EnrollmentIDs 103 and 104.
Bob Johnson (StudentID: 3) is not enrolled in any courses.
Now,run RIGHT OUTER JOIN query to retrieve data.

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

SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    e.EnrollmentID,
    e.CourseID
FROM
    student s
RIGHT JOIN
    enrollment e ON s.StudentID = e.StudentID;

+-----------+-----------+----------+--------------+----------+
| StudentID | FirstName | LastName | EnrollmentID | CourseID |
+-----------+-----------+----------+--------------+----------+
| S1        | Bidusha    | Halder   | E1           | C1       |
| S2        | Chayan     | Jana     | E2           | C2       |
| S3        | Sunny      | Ghosh    | E3           | C3       |
| S4        | Srirupa    | Hati     | E4           | C4       |
| S5        | Shreya     | Banerjee | E5           | C5       |
| 1         | Joba      | Das      | NULL         | NULL     |
| 2         | Mili      | Sarkar   | NULL         | NULL     |
| S7        | Joy       | Das      | NULL         | NULL     |
| S8        | Joyee     | Sardar   | NULL         | NULL     |
+-----------+-----------+----------+--------------+----------+




2. Assume a university where students can enroll in various courses. Here are some
fictional details:
Student Information:
Student with ID 1: John, email: john@email.com
Student with ID 2: Jane, email: jane@email.com
Student with ID 3: Bob, email: bob@email.com
Enrollment Information:
Enrollment with ID 101: John (StudentID: 1) enrolls in Math (CourseID: MATH101).
Enrollment with ID 102: John (StudentID: 1) enrolls in History (CourseID: HIST201).
Enrollment with ID 103: Jane (StudentID: 2) enrolls in Physics (CourseID: PHYS301).
Enrollment with ID 104: Bob (StudentID: 3) enrolls in Chemistry (CourseID: CHEM401).
Enrollment with ID 105: Alice (StudentID: 4) enrolls in English (CourseID: ENG501).
Now, write a LEFT JOIN query to retrieve the data.


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

mysql> use studentmanagementsystem;
Database changed
mysql> SELECT
    ->     s.StudentID,
    ->     s.FirstName,
    ->     s.LastName,
    ->     e.EnrollmentID,
    ->     e.CourseID
    -> FROM
    ->     Student s
    -> LEFT JOIN
    ->     Enrollment e ON s.StudentID = e.StudentID;
+-----------+-----------+----------+--------------+----------+
| StudentID | FirstName | LastName | EnrollmentID | CourseID |
+-----------+-----------+----------+--------------+----------+
| 1         | Joba      | Das      | NULL         | NULL     |
| 2         | Mili      | Sarkar   | NULL         | NULL     |
| S1        | Bidusha   | Halder   | E1           | C1       |
| S2        | Chayan    | Jana     | E2           | C2       |
| S3        | Sunny     | Ghosh    | E3           | C3       |
| S4        | Srirupa   | Hati     | E4           | C4       |
| S5        | Shreya    | Banerjee | E5           | C5       |
| S7        | Joy       | Das      | NULL         | NULL     |
| S8        | Joyee     | Sardar   | NULL         | NULL     |
+-----------+-----------+----------+--------------+----------+
9 rows in set (0.01 sec)
