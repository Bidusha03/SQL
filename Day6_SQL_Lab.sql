Database Schema:
Use our database Ecommerce to complete the task.

Task: Imagine you are managing an e-commerce platform, and the holiday season is
approaching. To capitalize on the festive spirit and boost sales, you decide to organize a
special seasonal sale featuring electronics. The goal is to offer discounts on electronics
and include products with a price less than rs. 70,000 in the promotion.
Write a query to find products from the "product" table that are either in the 'Electronics' category or
have a price less than 70000.

--using ecommerce database
mysql> use ecommerce;
Database changed

--checking description of product table
mysql> desc product;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| Product_id     | varchar(10)  | NO   | PRI | NULL    |       |
| Product_name   | varchar(100) | NO   |     | NULL    |       |
| category       | varchar(50)  | NO   |     | NULL    |       |
| Sub_category   | varchar(50)  | NO   |     | NULL    |       |
| Original_Price | double       | NO   |     | NULL    |       |
| Selling_Price  | double       | NO   |     | NULL    |       |
| stock          | int          | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
7 rows in set (0.03 sec)

--All records of product table
mysql> select  * from product;
+------------+--------------+-------------+-----------------+----------------+---------------+-------+
| Product_id | Product_name | category    | Sub_category    | Original_Price | Selling_Price | stock |
+------------+--------------+-------------+-----------------+----------------+---------------+-------+
| P001       | Product A    | Electronics | Gadgets         |            250 |        299.99 |    50 |
| P002       | Product B    | Clothing    | T-shirts        |            350 |        390.99 |   100 |
| P003       | Product C    | Home        | Furniture       |         599.99 |        699.99 |    20 |
| P004       | Product D    | Electronics | Accessories     |        2900.99 |       4900.99 |    75 |
| P005       | Product E    | Sports      | Outdoor         |         490.99 |        790.99 |    30 |
| P006       | Product F    | Beauty      | Skincare        |            150 |        240.99 |   200 |
| P007       | Product G    | Toys        | Educational     |         190.99 |        290.99 |   150 |
| P008       | Product H    | Clothing    | Jeans           |         390.99 |        590.99 |    80 |
| P009       | Product I    | Electronics | Smartphones     |        9999.99 |       8999.99 |    10 |
| P010       | Product J    | Appliances  | Refrigerators   |       14999.99 |      16999.99 |     5 |
| P011       | Product K    | Electronics | Premium Gadgets |          85000 |      99999.99 |    15 |
| P012       | Product L    | Electronics | Luxury Devices  |          95000 |     109999.99 |    10 |
+------------+--------------+-------------+-----------------+----------------+---------------+-------+
12 rows in set (0.00 sec)

---- Filter the results where the category is 'Electronics' or the original price is less than 70000
mysql> SELECT *
    -> FROM product
    -> WHERE category = 'Electronics' OR Original_Price < 70000;
+------------+--------------+-------------+-----------------+----------------+---------------+-------+
| Product_id | Product_name | category    | Sub_category    | Original_Price | Selling_Price | stock |
+------------+--------------+-------------+-----------------+----------------+---------------+-------+
| P001       | Product A    | Electronics | Gadgets         |            250 |        299.99 |    50 |
| P002       | Product B    | Clothing    | T-shirts        |            350 |        390.99 |   100 |
| P003       | Product C    | Home        | Furniture       |         599.99 |        699.99 |    20 |
| P004       | Product D    | Electronics | Accessories     |        2900.99 |       4900.99 |    75 |
| P005       | Product E    | Sports      | Outdoor         |         490.99 |        790.99 |    30 |
| P006       | Product F    | Beauty      | Skincare        |            150 |        240.99 |   200 |
| P007       | Product G    | Toys        | Educational     |         190.99 |        290.99 |   150 |
| P008       | Product H    | Clothing    | Jeans           |         390.99 |        590.99 |    80 |
| P009       | Product I    | Electronics | Smartphones     |        9999.99 |       8999.99 |    10 |
| P010       | Product J    | Appliances  | Refrigerators   |       14999.99 |      16999.99 |     5 |
| P011       | Product K    | Electronics | Premium Gadgets |          85000 |      99999.99 |    15 |
| P012       | Product L    | Electronics | Luxury Devices  |          95000 |     109999.99 |    10 |
+------------+--------------+-------------+-----------------+----------------+---------------+-------+
12 rows in set (0.00 sec)

