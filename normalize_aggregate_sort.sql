
use joins;
   -- Example of 2NF

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE OrderItems (
    orderitem_id INT PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(50),
    qty INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);




-- 2. Correct Example of 3NF

CREATE TABLE Cities (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(50),
    pincode INT
);

CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(50),
    city_id INT,
    FOREIGN KEY (city_id) REFERENCES Cities(city_id)
);




   -- 3. Find the AVG() order price

CREATE TABLE product_orders (
    order_id INT,
    product_name VARCHAR(50),
    price INT
);

INSERT INTO product_orders VALUES
(1, 'TV', 15000),
(2, 'Mobile', 10000),
(3, 'TV', 18000);

SELECT AVG(price) AS average_price
FROM product_orders;




   -- 4. Group orders by product_name

SELECT product_name, SUM(price) AS total_sales
FROM product_orders
GROUP BY product_name;




  -- 5. Sort grouped data by total_sales DESC


SELECT product_name, SUM(price) AS total_sales
FROM product_orders
GROUP BY product_name
ORDER BY total_sales DESC;
