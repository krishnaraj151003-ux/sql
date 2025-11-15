use schooldb;

create table pro(
pro_id int primary key,
pro_name varchar(20),
pro_pri int,
pro_quantity varchar(20)
);
show tables;
desc pro;
insert into pro(pro_id,pro_name,pro_pri,pro_quantity)values
(1,'pen',50,'5 nos'),
(2, 'pencil',40,'8 nos'),
(3, 'note' ,200,'2 nos'),
(4,'chart',100,'10 nos'),
(5,'scissor',50,'1 nos');

select * from pro;
