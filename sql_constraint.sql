create database schDB;
use schDB;
create table employe(
emp_id int primary key,
emp_name varchar(20) not null,
emp_sal int default '30000',
emp_email varchar(50) 
);
desc employe;
alter table employe add constraint uni_email unique(emp_email);
desc employe;
create table prod(
pro_id int primary key,
pro_name varchar(50),
pro_price int
);
desc prod;
alter table prod add column stock int;
desc prod;
alter table prod change pro_price unit_price int;
desc prod;