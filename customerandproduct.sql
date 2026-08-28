use automobiles;

create table customer(

customer_id int,
customer_name varchar(50),
customer_email varchar(50),

primary key(customer_id)

-- FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)

);



create table product(

product_id int,
product_name varchar(50),
product_price int,
customer_id int not null,
foreign key(product_id) references customer(customer_id),
primary key(product_id)
);

-- drop table product;


insert into customer values(1,'charan', 'charan123@gmail.com'),
                            (2,'eswar', 'eswar155@gmail.com'),
                            (3,'navenn', 'naveen090@gmail.com'),
                            (4,'siva', 'siva165@gmail.com');
                            
                            
insert into product values(1,'bike', 1000000,1),
                            (2,'car', 5000000,2),
                            (3,'horse', 100000000,3),
                            (4,'house', 20000000,4);
                            
                            
-- insert into customer values(2, 'eswar', 'eswar155@gmail.com'); duplicate cannot allow.
-- insert into customer values( 'eswar', 'eswar155@gmail.com'); primary key cannot be  null.

-- insert into customer values(5, 'eswar', 'eswar155@gmail.com'); we should use one primary key for table and different number.
                            
                            
select*from customer;

select*from product;

update product

set product_name='cheese'

where product_id=4;