create database joins;
use joins;
CREATE TABLE emp (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);

CREATE TABLE cust (
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(50)
);

CREATE TABLE prod (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT
);

CREATE TABLE ord(
    order_id INT PRIMARY KEY,
    cust_id INT,
    product_id INT,
    order_amount INT,
    FOREIGN KEY (cust_id) REFERENCES cust(cust_id),
    FOREIGN KEY (product_id) REFERENCES prod(product_id)
);



INSERT INTO emp VALUES
(1, 'e1', 30000),
(2, 'e2', 45000),
(3, 'e3', 28000),
(4, 'e4', 50000);

INSERT INTO cust VALUES
(101, 'Ravi'),
(102, 'Ram'),
(103, 'Pradeep');

INSERT INTO prod VALUES
(201, 'computer', 50000),
(202, 'laptop', 500),
(203, 'Tv', 1500);

INSERT INTO ord VALUES
(1, 101, 201, 50000),
(2, 102, 202, 500),
(3, 101, 203, 1500);

--  Employees with salary greater than average salary
SELECT emp_name, salary
FROM emp
WHERE salary > (SELECT AVG(salary) FROM emp);

-- Products with price higher than the cheapest order
SELECT product_name, price
FROM prod
WHERE price > (SELECT MIN(order_amount) FROM ord);

--  Customers who have placed at least one order
SELECT cust_id, cust_name
FROM cust
WHERE cust_id IN (SELECT cust_id FROM ord);

--   customers along with total number of orders
SELECT c.cust_id,
       c.cust_name,
       (SELECT COUNT(*)
        FROM ord o
        WHERE o.cust_id = c.cust_id) AS total_orders
FROM cust c;

-- Check if a product exists in any order 
SELECT *
FROM prod
WHERE EXISTS (
    SELECT 1
    FROM ord
    WHERE ord.product_id = prod.product_id
);
