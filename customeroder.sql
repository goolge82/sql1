create database shop;
use shop;

create table customer(
customer_id int,
customer_name varchar(50),
primary key(customer_id)
);

create table orders(
order_id int,
customer_id int,
product_name varchar(50),
quantity int,
foreign key(customer_id) references customer(customer_id) 
);

insert into customer values(01, 'charan'),(02, 'harn'),(03, 'eswar');

insert into orders values(21, 01,'idly', 4),(22,02, 'dosa', 3 );

insert into orders(order_id,product_name,quantity) values(03,'poori', 3);

select*from customer;

select*from orders;

update orders
set customer_id=3
where order_id=3;