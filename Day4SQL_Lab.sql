Lab 1: Database Schema:
Consider a simple database with one tables: BankAccount

BankAccount Table:
● Columns: account_id (Primary Key), account_holder_name,account_balance

--creating a database name bank
mysql> create database bank;
Query OK, 1 row affected (0.01 sec)

--use bank database
mysql> use bank;
Database changed

mysql> -- Create the BankAccount table
mysql> CREATE TABLE BankAccount (
    ->     account_id INT PRIMARY KEY,
    ->     account_holder_name VARCHAR(50),
    ->     account_balance DECIMAL(10, 2)
    -> );
Query OK, 0 rows affected (0.10 sec)

--checking description of BankAccount table
mysql> desc bankaccount;
+---------------------+---------------+------+-----+---------+-------+
| Field               | Type          | Null | Key | Default | Extra |
+---------------------+---------------+------+-----+---------+-------+
| account_id          | int           | NO   | PRI | NULL    |       |
| account_holder_name | varchar(50)   | YES  |     | NULL    |       |
| account_balance     | decimal(10,2) | YES  |     | NULL    |       |
+---------------------+---------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

Task 1: Insert Data:
Write an SQL INSERT statement to insert data into the BankAccount table.

mysql> -- Insert data into the BankAccount table
mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)
    -> VALUES
    ->     (101, 'Joy Das', 50000.00),
    ->     (102, 'Joyee Sen', 35000.75),
    ->     (103, 'Babli Roy', 25000.50),
    ->     (104, 'Baban Rohit', 26000.50);
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

--after inserting value in BankAccount table 
mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Joy Das             |        50000.00 |
|        102 | Joyee Sen           |        35000.75 |
|        103 | Babli Roy           |        25000.50 |
|        104 | Baban Rohit         |        26000.50 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

Task 2: Retrieving Data:
Write an SQL SELECT statement to retrieve the account_holder_name and 
account_balance of all account holders from the BankAccount table.

--viewing actual BankAccount table 
mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Joy Das             |        50000.00 |
|        102 | Joyee Sen           |        35000.75 |
|        103 | Babli Roy           |        25000.50 |
|        104 | Baban Rohit         |        26000.50 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql> -- Retrieve account_holder_name and account_balance of all account holders
mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Joy Das             |        50000.00 |
| Joyee Sen           |        35000.75 |
| Babli Roy           |        25000.50 |
| Baban Rohit         |        26000.50 |
+---------------------+-----------------+
4 rows in set (0.01 sec)

Task 3: Filtering Data:
Write an SQL SELECT statement to retrieve the account_holder_name and
account_balance where the account_balance is more than 30,000.

--viewing BankAccount table to check whose account_balance is more than 30,000
mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Joy Das             |        50000.00 |
|        102 | Joyee Sen           |        35000.75 |
|        103 | Babli Roy           |        25000.50 |
|        104 | Baban Rohit         |        26000.50 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql> -- Retrieve account_holder_name and account_balance where account_balance is more than 30,000
mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccount
    -> WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Joy Das             |        50000.00 |
| Joyee Sen           |        35000.75 |
+---------------------+-----------------+
2 rows in set (0.01 sec)

Task 4: Updating Data:
Write an SQL UPDATE statement to change the account_balance of the account
holder whose ID is 101.

--viewing BankAccount table before updating
mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Joy Das             |        50000.00 |
|        102 | Joyee Sen           |        35000.75 |
|        103 | Babli Roy           |        25000.50 |
|        104 | Baban Rohit         |        26000.50 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql> -- Update the account_balance of the account holder whose ID is 101
mysql> UPDATE BankAccount
    -> SET account_balance = 55000.00
    -> WHERE account_id = 101;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

----viewing BankAccount table after updating
mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Joy Das             |        55000.00 |
|        102 | Joyee Sen           |        35000.75 |
|        103 | Babli Roy           |        25000.50 |
|        104 | Baban Rohit         |        26000.50 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)