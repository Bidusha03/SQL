Use the Database and table from Day 1 lab. Insert 5 records in each table and retrieve data from all tables and display.

--checking student table attribute name, data type etc.
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
7 rows in set (0.00 sec)

mysql> -- Insert records into the Student table
mysql> INSERT INTO Student (StudentID, FirstName, LastName, DateofBirth, Gender, Email, Phone)
    -> VALUES
    ->     ('S1', 'Bidusha', 'Halder', '2002-02-03', 'Female', 'bidusha@gmail.com', 9965785467),
    ->     ('S2', 'Chayan', 'Jana', '2002-10-20', 'Male', 'chayan@gmail.com', 8798767898),
    ->     ('S3', 'Sunny', 'Ghosh', '2003-05-22', 'Male', 'sunny@gmail.com', 8798767896),
    ->     ('S4', 'Srirupa', 'Hati', '2002-08-12', 'Female', 'srirupa@gmail.com', 8984534567),
    ->     ('S5', 'Shreya', 'Banerjee', '2002-05-28', 'Female', 'shreya@gmail.com', 6546787654);
Query OK, 5 rows affected (0.06 sec)
Records: 5  Duplicates: 0  Warnings: 0

--checking inserted value in Student table
mysql> select * from Student;
+-----------+-----------+----------+-------------+--------+-------------------+------------+
| StudentID | FirstName | LastName | DateofBirth | Gender | Email             | Phone      |
+-----------+-----------+----------+-------------+--------+-------------------+------------+
| S1        | Bidusha   | Halder   | 2002-02-03  | Female | bidusha@gmail.com | 9965785467 |
| S2        | Chayan    | Jana     | 2002-10-20  | Male   | chayan@gmail.com  | 8798767898 |
| S3        | Sunny     | Ghosh    | 2003-05-22  | Male   | sunny@gmail.com   | 8798767896 |
| S4        | Srirupa   | Hati     | 2002-08-12  | Female | srirupa@gmail.com | 8984534567 |
| S5        | Shreya    | Banerjee | 2002-05-28  | Female | shreya@gmail.com  | 6546787654 |
+-----------+-----------+----------+-------------+--------+-------------------+------------+
5 rows in set (0.01 sec)

--viewing Course table details
mysql> desc course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| CourseID    | varchar(10) | NO   | PRI | NULL    |       |
| CourseTitle | varchar(20) | NO   |     | NULL    |       |
| Credits     | varchar(10) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

mysql> -- Insert records into the Course table
mysql> INSERT INTO Course (CourseID, CourseTitle, Credits)
    -> VALUES
    ->     ('C1', 'Mathematics', '4'),
    ->     ('C2', 'History', '3'),
    ->     ('C3', 'Chemistry', '3'),
    ->     ('C4', 'Computer Programming', '4'),
    ->     ('C5', 'English Composition', '3');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

--checking inserted value from Course table
mysql> select * from course;
+----------+----------------------+---------+
| CourseID | CourseTitle          | Credits |
+----------+----------------------+---------+
| C1       | Mathematics          | 4       |
| C2       | History              | 3       |
| C3       | Chemistry            | 3       |
| C4       | Computer Programming | 4       |
| C5       | English Composition  | 3       |
+----------+----------------------+---------+
5 rows in set (0.00 sec)

--viewing details of instructor table
mysql> desc instructor;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| InstructorID | varchar(20) | NO   | PRI | NULL    |       |
| FirstName    | varchar(20) | NO   |     | NULL    |       |
| LastName     | varchar(20) | NO   |     | NULL    |       |
| Email        | varchar(50) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> -- Insert records into the Instructor table
mysql> INSERT INTO Instructor (InstructorID, FirstName, LastName, Email)
    -> VALUES
    ->     -- Record 1
    ->     ('I1', 'Ram', 'Sen', 'ram@example.com'),
    ->     -- Record 2
    ->     ('I2', 'Akash', 'Das', 'akash@example.com'),
    ->     -- Record 3
    ->     ('I3', 'Rob', 'Mukherjee', 'rob@example.com'),
    ->     -- Record 4
    ->     ('I4', 'Elina', 'Roy', 'elina@example.com'),
    ->     -- Record 5
    ->     ('I5', 'David', 'Brown', 'david@example.com');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

--checking inserted value from instructor table
mysql> select * from instructor;
+--------------+-----------+-----------+-------------------+
| InstructorID | FirstName | LastName  | Email             |
+--------------+-----------+-----------+-------------------+
| I1           | Ram       | Sen       | ram@example.com   |
| I2           | Akash     | Das       | akash@example.com |
| I3           | Rob       | Mukherjee | rob@example.com   |
| I4           | Elina     | Roy       | elina@example.com |
| I5           | David     | Brown     | david@example.com |
+--------------+-----------+-----------+-------------------+
5 rows in set (0.00 sec)

--viewing details of enrollment table
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

mysql> -- Insert records into the Enrollment table
mysql> INSERT INTO Enrollment (EnrollmentID, EnrollmentDate, StudentID, CourseID, InstructorID)
    -> VALUES
    ->     ('E1', '2023-01-10', 'S1', 'C1', 'I1'),
    ->     ('E2', '2023-02-15', 'S2', 'C2', 'I2'),
    ->     ('E3', '2023-03-20', 'S3', 'C3', 'I3'),
    ->     ('E4', '2023-04-25', 'S4', 'C4', 'I4'),
    ->     ('E5', '2023-05-30', 'S5', 'C5', 'I5');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

--checking inserted value from enrollment table
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

--viewing details of Score table
mysql> desc score;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| ScoreID        | varchar(20) | NO   | PRI | NULL    |       |
| CourseID       | varchar(10) | YES  | MUL | NULL    |       |
| StudentID      | varchar(20) | YES  | MUL | NULL    |       |
| DateOfExam     | date        | YES  |     | NULL    |       |
| CreditObtained | varchar(20) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> -- Insert records into the Score table
mysql> INSERT INTO Score (ScoreID, CourseID, StudentID, DateOfExam, CreditObtained)
    -> VALUES
    ->     ('S1', 'C1', 'S1', '2023-02-01', 'A'),
    ->     ('S2', 'C2', 'S2', '2023-03-15', 'B+'),
    ->     ('S3', 'C3', 'S3', '2023-04-20', 'A-'),
    ->     ('S4', 'C4', 'S4', '2023-05-25', 'B'),
    ->     ('S5', 'C5', 'S5', '2023-06-30', 'A');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

--checking inserted value from Score table
mysql> select * from score;
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
| S1      | C1       | S1        | 2023-02-01 | A              |
| S2      | C2       | S2        | 2023-03-15 | B+             |
| S3      | C3       | S3        | 2023-04-20 | A-             |
| S4      | C4       | S4        | 2023-05-25 | B              |
| S5      | C5       | S5        | 2023-06-30 | A              |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)

--viewing details of feedback table
mysql> desc feedback;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| FeedbackID     | varchar(20)  | NO   | PRI | NULL    |       |
| StudentID      | varchar(20)  | YES  | MUL | NULL    |       |
| Date           | date         | YES  |     | NULL    |       |
| InstructorName | varchar(20)  | YES  |     | NULL    |       |
| Feedback       | varchar(100) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> -- Insert records into the Feedback table
mysql> INSERT INTO Feedback (FeedbackID, StudentID, Date, InstructorName, Feedback)
    -> VALUES
    ->     ('F1', 'S1', '2023-03-05', 'Ram Sen', 'Excellent teaching style!'),
    ->     ('F2', 'S2', '2023-04-10', 'Akash Das', 'Very informative sessions.'),
    ->     ('F3', 'S3', '2023-05-15', 'Rob Mukherjee', 'Enjoyed the course material.'),
    ->     ('F4', 'S4', '2023-06-20', 'Elina Roy', 'Helpful feedback on assignments.'),
    ->     ('F5', 'S5', '2023-07-25', 'David Brown', 'Great instructor overall.');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

--checking inserted value from feedback table
mysql> select * from feedback;
+------------+-----------+------------+----------------+----------------------------------+
| FeedbackID | StudentID | Date       | InstructorName | Feedback                         |
+------------+-----------+------------+----------------+----------------------------------+
| F1         | S1        | 2023-03-05 | Ram Sen        | Excellent teaching style!        |
| F2         | S2        | 2023-04-10 | Akash Das      | Very informative sessions.       |
| F3         | S3        | 2023-05-15 | Rob Mukherjee  | Enjoyed the course material.     |
| F4         | S4        | 2023-06-20 | Elina Roy      | Helpful feedback on assignments. |
| F5         | S5        | 2023-07-25 | David Brown    | Great instructor overall.        |
+------------+-----------+------------+----------------+----------------------------------+
5 rows in set (0.00 sec)
