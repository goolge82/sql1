use school;

create table library(

book_id int,

book_name varchar(50),

author_name varchar(40),

book_price int
);

select*from library;



insert into library values(321, 'biodiversity', 'chittem', 1200);

insert into library values(345, 'Reproductive system', 'eswar reddy', 5000);

insert into library (book_id, book_name, book_price) values(256, 'the love and voilence', 4689);


SET SQL_SAFE_UPDATES = 0;

update library

set author_name='anwar'

where book_id=256;