
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


INSERT INTO customers VALUES 
(1, 'Ram'),
(2, 'Kumar'),
(3, 'mohan'),
(4, 'Arun'),
(5, 'raj');

INSERT INTO orders VALUES 
(101, 1, 'mouse'),
(102, 2, 'pendrive'),
(103, 1, 'cd'),
(104, 4, 'Camera'),
(105, 2, 'Keyboard');


SELECT c.customer_name, o.product
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.product
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;
