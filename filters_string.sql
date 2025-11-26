use joins;
create table material(
material_id int primary key,
event_name varchar(50),
event_date date,
product_name varchar(50),
quantity int,
price int
);
insert into material(material_id,event_name,event_date,product_name,quantity,price) values
(1,'mon','2025-12-01','Airpods',2,2000),
(2,'tue','2025-12-02','Headset',3,1500),
(3,'wed','2025-12-03','mouse',4,2500),
(4,'thru','2025-12-04','phone',5,3000),
(5,'fri','2025-12-05','computer',2,100000);

select * from material;

select material_id,event_date,quantity from material
where quantity>2;

select material_id,price from material
where price between 100 and 500;

select product_name from material
where product_name like 'A%';

select quantity from material
order by quantity desc;

select concat(event_name,'-',event_date)as event_details from material;