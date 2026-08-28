create database hotels;

use hotels;

create table franchise(

franchise_id int,

franchise_name varchar(50),

email_id varchar(50)
);

create table store(

store_id int,

store_name varchar(50),

franchise_id int
);


insert into franchise values(101, 'taj', 'taj123@gmail.com'),
                             (102, 'sarvana', 'sarvana345@gmail.com'),
                             (103, 'aditya', 'aditya567@gmail.com');
                             
                             
insert into store values(1, 'tajmahal', 101),
						(2, 'sarvanabhavan', 102),
						(3, 'aditya sharma', 103);
                        

select*from franchise;

select*from store;

-- select*from franchise,store;

create table a_store as select*from store;

select*from a_store;

-- select s_no, stu_name, stu_id, stu_dob, stu_age from student;
