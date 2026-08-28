create database automobiles;

use automobiles;

create table vehicle(

v_no int,

v_name varchar(50),

v_price int,

v_brand varchar(50)

);

insert into vehicle values(1,'acess', 120000, 'suziki'),
                          (2,'shine', 390000, 'honda'),
                          (3,'bmw1000r', 3000000, 'BMW'),
                          (4,'rx100', 150000, 'yamaha'),
                          (5, 'nija', 1000000, 'kawasaki');

insert into vehicle values(6,'xpulser', 125000 ,'Hero'),
						  (7,'unicon', 100000, 'Hero');

select*from vehicle;
                          
                          
                          
-- CREATE TABLE `z_vehicle` (
--   `v_no` int(11) DEFAULT NULL,
--   `v_name` varchar(50) DEFAULT NULL,
--   `v_price` int(11) DEFAULT NULL,
--   `v_brand` varchar(50) DEFAULT NULL
-- );

-- insert into z_vehicle select*from vehicle;

-- select*from z_vehicle;

-- drop table z_vehicle;


CREATE TABLE `z_vehicle` (
  `v_no` int(11) DEFAULT NULL,
  `v_name` varchar(50) DEFAULT NULL,
  `v_price` int(11) DEFAULT NULL,
  `v_brand` varchar(50) DEFAULT NULL
);

insert into z_vehicle select*from vehicle;

select*from z_vehicle;

 

