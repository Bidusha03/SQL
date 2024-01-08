DAY-5 Lab 

--using previous database 'studentmanagementsystem'
mysql> use studentmanagementsystem;
Database changed

--checking description of student table
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
7 rows in set (0.05 sec)

--checking all the records of student table
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
7 rows in set (0.01 sec)

Lab-1:

Task: Let's consider a scenario where you want to retrieve information about students
from a database table named student and display the results in ascending order based
on their last names.

mysql> -- Retrieve student information in ascending order based on last names
mysql> SELECT *
    -> FROM Student
    -> ORDER BY LastName ASC;
+-----------+-----------+----------+-------------+--------+-------------------+------------+
| StudentID | FirstName | LastName | DateofBirth | Gender | Email             | Phone      |
+-----------+-----------+----------+-------------+--------+-------------------+------------+
| S5        | Shreya    | Banerjee | 2002-05-28  | Female | shreya@gmail.com  | 6546787654 |
| S7        | Joy       | Das      | 2000-08-21  | Male   | joy@example.com   | 9234567891 |
| S3        | Sunny     | Ghosh    | 2003-05-22  | Male   | sunny@gmail.com   | 8798767896 |
| S1        | Bidusha   | Halder   | 2002-02-03  | Female | bidusha@gmail.com | 9965785467 |
| S4        | Srirupa   | Hati     | 2002-08-12  | Female | srirupa@gmail.com | 8984534567 |
| S2        | Chayan    | Jana     | 2002-10-20  | Male   | chayan@gmail.com  | 8798767898 |
| S8        | Joyee     | Sardar   | 1999-05-14  | Female | joyee@example.com | 9876543210 |
+-----------+-----------+----------+-------------+--------+-------------------+------------+
7 rows in set (0.00 sec)

Lab-2:

Task: Let's consider a scenario where you want to count the number of students based
on their gender from a database table named Student.

mysql> -- Count the number of students based on gender
mysql> SELECT Gender, COUNT(*) AS NumberOfStudents
    -> FROM Student
    -> GROUP BY Gender;
+--------+------------------+
| Gender | NumberOfStudents |
+--------+------------------+
| Female |                4 |
| Male   |                3 |
+--------+------------------+
2 rows in set (0.01 sec)
