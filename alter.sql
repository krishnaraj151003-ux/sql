--  Class Task
use schooldb;
show tables;
alter table inform add adhaar_no int(15);
desc inform;
alter table inform  change stu_name fir_name  varchar(50);
desc inform;
alter table inform rename to information;
desc information;
alter table  information drop column gender;
desc  information;

--   Todays Assignment

create table product(
prod_id  int primary  key,
prod_name varchar(15)
);
desc product;
alter table product add prod_pri int;
desc   product;
alter table  product add  stock_int int;
desc  product;
alter  table product change prod_price  unit_price  varchar(15);
desc  product;




