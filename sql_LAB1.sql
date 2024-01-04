Lab 1. Create a Database & Table Using MySQL Command-Line Client.
● Create a database with the name StudentManagementSystem.

-- Create a new database named StudentManagementSystem

mysql> create database StudentManagementSystem;         
Query OK, 1 row affected

-- Switch to the newly created database

mysql> use StudentManagementSystem;
Database changed




Create a table with named Student with attributes:
● StudentID (Primary Key)
● FirstName
● LastName
● DateOfBirth
● Gender
● Email
● Phone

-- Create a table named Student
CREATE TABLE Student(
    -- Define StudentID as the primary key
    StudentID VARCHAR(20) PRIMARY KEY,
    -- Specify FirstName as a non-null column
    FirstName VARCHAR(20) NOT NULL,
    -- Specify LastName as a non-null column
    LastName VARCHAR(20) NOT NULL,
    -- Specify DateofBirth as a non-null date column
    DateofBirth DATE NOT NULL,
    -- Specify Gender as a non-null column
    Gender VARCHAR(10) NOT NULL,
    -- Specify Email as a non-null column
    Email VARCHAR(50) NOT NULL,
    -- Specify Phone as a non-null column
    Phone VARCHAR(20) NOT NULL
);

-- Display a message indicating the query was successful
Query OK, 0 rows affected




Create a table with name Course with attributes:
● CourseID (Primary Key)
● CourseTitle
● Credits

-- Create a table named Course
CREATE TABLE Course(
    -- Define CourseID as the primary key
    CourseID VARCHAR(10) PRIMARY KEY,
    -- Specify CourseTitle as a non-null column
    CourseTitle VARCHAR(20) NOT NULL,
    -- Specify Credits as a non-null column
    Credits VARCHAR(10) NOT NULL
);

-- Display a message indicating the query was successful
Query OK, 0 rows affected





Create a table with named Instructor with attributes:
● InstructorID (Primary Key)
● FirstName
● LastName
● Email

-- Create a table named Instructor
CREATE TABLE Instructor(
    -- Define InstructorID as the primary key
    InstructorID VARCHAR(20) PRIMARY KEY,
    -- Specify FirstName as a non-null column
    FirstName VARCHAR(20) NOT NULL,
    -- Specify LastName as a non-null column
    LastName VARCHAR(20) NOT NULL,
    -- Specify Email as a non-null column
    Email VARCHAR(50) NOT NULL
);

-- Display a message indicating the query was successful
Query OK, 0 rows affected





Create a table with named Enrollment with attributes:
● EnrollmentID (Primary Key)
● EnrollmentDate
● StudentID(Foreign key)
● CourseID(Foreign Key)
● InstructorID(Foreign key)

-- Create a table named Enrollment
CREATE TABLE Enrollment (
    -- Define EnrollmentID as the primary key
    EnrollmentID VARCHAR(20) PRIMARY KEY,
    -- Specify EnrollmentDate as a date column
    EnrollmentDate DATE,
    -- Reference StudentID as a foreign key linked to the Student table
    StudentID VARCHAR(20),
    -- Reference CourseID as a foreign key linked to the Course table
    CourseID VARCHAR(10),
    -- Reference InstructorID as a foreign key linked to the Instructor table
    InstructorID VARCHAR(20),
    -- Establish a foreign key constraint linking StudentID to the Student table
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    -- Establish a foreign key constraint linking CourseID to the Course table
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    -- Establish a foreign key constraint linking InstructorID to the Instructor table
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
);

-- Display a message indicating the query was successful
Query OK, 0 rows affected




Create a table with named Score with attributes:
● ScoreID (Primary Key)
● CourseID (Foreign key)
● StudentID (Foreign Key)
● DateOfExam
● CreditObtained

-- Create a table named Score
CREATE TABLE Score (
    -- Define ScoreID as the primary key
    ScoreID VARCHAR(20) PRIMARY KEY,
    -- Reference CourseID as a foreign key linked to the Course table
    CourseID VARCHAR(10),
    -- Reference StudentID as a foreign key linked to the Student table
    StudentID VARCHAR(20),
    -- Specify DateOfExam as a date column
    DateOfExam DATE,
    -- Specify CreditObtained as a column for storing obtained credits
    CreditObtained VARCHAR(20),
    -- Establish a foreign key constraint linking CourseID to the Course table
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    -- Establish a foreign key constraint linking StudentID to the Student table
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

-- Display a message indicating the query was successful
Query OK, 0 rows affected






Create a table with named Feedback with attributes:
● FeedbackID (Primary Key)
● StudentID (Foreign key)
● Date
● InstructorName
● Feedback

-- Create a table named Feedback
CREATE TABLE Feedback (
    -- Define FeedbackID as the primary key
    FeedbackID VARCHAR(20) PRIMARY KEY,
    -- Reference StudentID as a foreign key linked to the Student table
    StudentID VARCHAR(20),
    -- Specify Date as a date column
    Date DATE,
    -- Specify InstructorName as a column for storing the instructor's name
    InstructorName VARCHAR(20),
    -- Specify Feedback as a column for storing feedback comments
    Feedback VARCHAR(100),
    -- Establish a foreign key constraint linking StudentID to the Student table
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

-- Display a message indicating the query was successful
Query OK, 0 rows affected






