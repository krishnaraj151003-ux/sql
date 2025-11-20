
CREATE TABLE vehicle (
    vehicle_id INT PRIMARY KEY,
    vehicle_name VARCHAR(30),
    vehicle_type VARCHAR(20),
    price INT
);

-- 2. Insert sample data
INSERT INTO vehicle VALUES
(1, 'Activa', 'Scooty', 80000),
(2, 'Dio', 'Scooty', 85000),
(3, 'Splendor', 'Bike', 90000),
(4, 'Pulsar', 'Bike', 110000),
(5, 'Swift', 'Car', 600000),
(6, 'Creta', 'Car', 1200000);

-- 3. Create table sales
CREATE TABLE sale (
    sale_id INT PRIMARY KEY,
    vehicle_id INT,
    quantity INT,
    FOREIGN KEY (vehicle_id) REFERENCES vehicle(vehicle_id)
);

-- 4. Insert sample sales data
INSERT INTO sale VALUES
(101, 1, 5),
(102, 3, 2),
(103, 5, 1),
(104, 2, 4),
(105, 4, 3);

-- 5. Create VIEW for combined data
CREATE VIEW vehicle_sal AS
SELECT 
    v.vehicle_id,
    v.vehicle_name,
    v.vehicle_type,
    v.price,
    s.quantity
FROM vehicle v
LEFT JOIN sale s
ON v.vehicle_id = s.vehicle_id;


SELECT * FROM vehicle_sal;

CREATE OR REPLACE VIEW vehicle_sal AS
SELECT 
    v.vehicle_id,
    v.vehicle_name,
    v.vehicle_type,
    v.price,
    s.quantity,
    (v.price * s.quantity) AS total_amount
FROM vehicle v
LEFT JOIN sale s
ON v.vehicle_id = s.vehicle_id;
select * from vehicle_sal;

