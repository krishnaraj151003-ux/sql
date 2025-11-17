use schooldb;

create table material(
mat_id int primary key,
mat_name varchar(20),
mat_price int 
);
alter table material add column stock int;
desc material;
alter table material change mat_price unit_price int;
insert into material(mat_id,mat_name,unit_price,stock) values
(1,'bat',1000,5),
(2,'ball',500,10),
(3,'helmet',2000,5),
(4,'gloves',1500,8),
(5,'pad',3000,5);
select * from material;
update material
set stock=7
where mat_id=5;
select * from material;
delete from material
where mat_id=3;
select* from material;
