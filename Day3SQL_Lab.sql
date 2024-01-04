Task 1: Update the Student table with the following information:

Change the email to 'janesmith@example.com'
Where FirstName is 'Jane' and LastName is 'Smith';

--viewing all the attribute names , datatype etc from student table
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
7 rows in set (0.03 sec)

--checking student table before updating 
mysql> select * from student;
+-----------+-----------+----------+-------------+--------+------------------------+------------+
| StudentID | FirstName | LastName | DateofBirth | Gender | Email                  | Phone      |
+-----------+-----------+----------+-------------+--------+------------------------+------------+
| S1        | Bidusha   | Halder   | 2002-02-03  | Female | bidusha@gmail.com      | 9965785467 |
| S2        | Chayan    | Jana     | 2002-10-20  | Male   | chayan@gmail.com       | 8798767898 |
| S3        | Sunny     | Ghosh    | 2003-05-22  | Male   | sunny@gmail.com        | 8798767896 |
| S4        | Srirupa   | Hati     | 2002-08-12  | Female | srirupa@gmail.com      | 8984534567 |
| S5        | Shreya    | Banerjee | 2002-05-28  | Female | shreya@gmail.com       | 6546787654 |
| S6        | Jane      | Smith    | 2000-01-15  | Female | jane_smith@example.com | 1234567890 |
+-----------+-----------+----------+-------------+--------+------------------------+------------+
6 rows in set (0.00 sec)

mysql> -- Update the Student table
mysql> UPDATE Student
    -> SET Email = 'janesmith@example.com'
    -> WHERE FirstName = 'Jane' AND LastName = 'Smith';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

--checking student table after updating
mysql> select * from student;
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| StudentID | FirstName | LastName | DateofBirth | Gender | Email                 | Phone      |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| S1        | Bidusha   | Halder   | 2002-02-03  | Female | bidusha@gmail.com     | 9965785467 |
| S2        | Chayan    | Jana     | 2002-10-20  | Male   | chayan@gmail.com      | 8798767898 |
| S3        | Sunny     | Ghosh    | 2003-05-22  | Male   | sunny@gmail.com       | 8798767896 |
| S4        | Srirupa   | Hati     | 2002-08-12  | Female | srirupa@gmail.com     | 8984534567 |
| S5        | Shreya    | Banerjee | 2002-05-28  | Female | shreya@gmail.com      | 6546787654 |
| S6        | Jane      | Smith    | 2000-01-15  | Female | janesmith@example.com | 1234567890 |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
6 rows in set (0.00 sec)





Update the Instructor with the following information:

Change the email to 'rogerwhite@example.com'
Where FirstName of the instructor is 'Roger' and LastName is 'White';

--viewing the properties of instructor table
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

--checking instructor table before updating
mysql> select * from instructor;
+--------------+-----------+-----------+-------------------------+
| InstructorID | FirstName | LastName  | Email                   |
+--------------+-----------+-----------+-------------------------+
| I1           | Ram       | Sen       | ram@example.com         |
| I2           | Akash     | Das       | akash@example.com       |
| I3           | Rob       | Mukherjee | rob@example.com         |
| I4           | Elina     | Roy       | elina@example.com       |
| I5           | David     | Brown     | david@example.com       |
| I6           | Roger     | White     | roger_white@example.com |
+--------------+-----------+-----------+-------------------------+
6 rows in set (0.00 sec)

mysql> -- Update the Instructor table
mysql> UPDATE Instructor
    -> SET Email = 'rogerwhite@example.com'
    -> WHERE FirstName = 'Roger' AND LastName = 'White';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

--checking instructor table after modifying
mysql> select * from instructor;
+--------------+-----------+-----------+------------------------+
| InstructorID | FirstName | LastName  | Email                  |
+--------------+-----------+-----------+------------------------+
| I1           | Ram       | Sen       | ram@example.com        |
| I2           | Akash     | Das       | akash@example.com      |
| I3           | Rob       | Mukherjee | rob@example.com        |
| I4           | Elina     | Roy       | elina@example.com      |
| I5           | David     | Brown     | david@example.com      |
| I6           | Roger     | White     | rogerwhite@example.com |
+--------------+-----------+-----------+------------------------+
6 rows in set (0.00 sec)





Task 2:
Delete record from the Student table on following condition:
Delete student/students records from the Student table where last name is Smith.

--viewing all the attribute names , datatype etc of student table
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
7 rows in set (0.03 sec)

--checking student table before deleting record
mysql> select * from student;
+-----------+-----------+----------+-------------+--------+------------------------+------------+
| StudentID | FirstName | LastName | DateofBirth | Gender | Email                  | Phone      |
+-----------+-----------+----------+-------------+--------+------------------------+------------+
| S1        | Bidusha   | Halder   | 2002-02-03  | Female | bidusha@gmail.com      | 9965785467 |
| S2        | Chayan    | Jana     | 2002-10-20  | Male   | chayan@gmail.com       | 8798767898 |
| S3        | Sunny     | Ghosh    | 2003-05-22  | Male   | sunny@gmail.com        | 8798767896 |
| S4        | Srirupa   | Hati     | 2002-08-12  | Female | srirupa@gmail.com      | 8984534567 |
| S5        | Shreya    | Banerjee | 2002-05-28  | Female | shreya@gmail.com       | 6546787654 |
| S6        | Jane      | Smith    | 2000-01-15  | Female | jane_smith@example.com | 1234567890 |
+-----------+-----------+----------+-------------+--------+------------------------+------------+
6 rows in set (0.00 sec)

mysql> -- Delete records from the Student table where last name is 'Smith'
mysql> DELETE FROM Student
    -> WHERE LastName = 'Smith';
Query OK, 1 row affected (0.01 sec)


--checking student table after deleting record
mysql> select * from student;
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



Task 3: List the student whose first name starts with J.

--viewing all the attribute names , datatype etc of student table
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
7 rows in set (0.03 sec)

mysql> -- Insert the record with name starting with 'J'
mysql> INSERT INTO Student (StudentID, FirstName, LastName, DateofBirth, Gender, Email, Phone)
    -> VALUES ('S7', 'Joy', 'Das', '2000-08-21', 'Male', 'joy@example.com', '9234567891');
Query OK, 1 row affected (0.01 sec)

mysql> -- Insert another record with name starting with 'J'
mysql> INSERT INTO Student (StudentID, FirstName, LastName, DateofBirth, Gender, Email, Phone)
    -> VALUES ('S8', 'Joyee', 'Sardar', '1999-05-14', 'Female', 'joyee@example.com', '9876543210');
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+-----------+-----------+----------+-------------+--------+-------------------+------------+
| StudentID | FirstName | LastName | DateofBirth | Gender | Email             | Phone      |
+-----------+-----------+----------+-------------+--------+-------------------+------------+
| S1        | Bidusha   | Halder   | 2002-02-03  | Female | bidusha@gmail.com | 9965785467 |
| S2        | Chayan    | Jana     | 2002-10-20  | Male   | chayan@gmail.com  | 8798767898 |
| S3        | Sunny     | Ghosh    | 2003-05-22  | Male   | sunny@gmail.com   | 8798767896 |
| S4        | Srirupa   | Hati     | 2002-08-12  | Female | srirupa@gmail.com | 8984534567 |
| S5        | Shreya    | Banerjee | 2002-05-28  | Female | shreya@gmail.com  | 6546787654 |
| S7        | Joy       | Das      | 2000-08-21  | Male   | joy@example.com   | 9234567891 |
| S8        | Joyee     | Sardar   | 1999-05-14  | Female | joyee@example.com | 9876543210 |
+-----------+-----------+----------+-------------+--------+-------------------+------------+
7 rows in set (0.00 sec)

mysql> -- List students whose first name starts with 'J'
mysql> SELECT *
    -> FROM Student
    -> WHERE FirstName LIKE 'J%';
+-----------+-----------+----------+-------------+--------+-------------------+------------+
| StudentID | FirstName | LastName | DateofBirth | Gender | Email             | Phone      |
+-----------+-----------+----------+-------------+--------+-------------------+------------+
| S7        | Joy       | Das      | 2000-08-21  | Male   | joy@example.com   | 9234567891 |
| S8        | Joyee     | Sardar   | 1999-05-14  | Female | joyee@example.com | 9876543210 |
+-----------+-----------+----------+-------------+--------+-------------------+------------+
2 rows in set (0.01 sec)


