use company;


-- praent table franchise
create table franchise(

fran_id int,
fran_name varchar(50),
location varchar(50),
fran_status varchar(50),
primary key(fran_id)
);


-- first child user details

create table userdeal(
user_id int,
user_name varchar(50),
mobile bigint,
email varchar(50),
user_status varchar(50),
fran_id int not null,
primary key(user_id),
foreign key(fran_id) references franchise(fran_id)on update cascade
);

-- second child role 

create table role(
role_id int,

role_name varchar(50),

primary key(role_id)
);

-- second child permission table for which user have which role and permissions

create table permission(
user_role_id int,

user_id int not null,
role_id int not null,

permission varchar(50),

primary key(user_role_id),
foreign key(user_id) references userdeal(user_id) on update cascade,
foreign key(role_id) references role(role_id)on update cascade
);


drop table  permission;
drop table userdeal;

-- alter table userdeal 
-- drop foreign key userdeal_ibfk_1;

-- show create table userdeal;

select*from franchise;
select*from userdeal;
select*from role;
select*from permission;

insert into franchise values(1069, 'kfc', 'kphb', 'activie'),
                             (1459, 'kfc', 'kukutpally', 'inactive'),
                             (1345, 'kfc', 'eragadda', 'inactivie'),
                             (1109, 'kfc', 'sr nagar', 'activie');

insert into userdeal values(1001, 'charan', 8317684321, 'charan123@gmail.com', 'active',1069),
                         (1201,'naveen', 6304145678, 'naveen567@gmail.com','inactive',1459),
                          (3421,'eswar',823476521, 'eswar515@gmail.com','active',1345),
                            (2314,'prudhvi', 6307893218, 'prudhvi169@gmail.com','active',1109);
                            
insert into role values(45, 'waiter'),
                       (35, 'manager'),
                       (25, 'accouter'),
                       (15, 'manager');
                       
insert into permission values(10,1001,45,'cleaning'),
                              (100,1201,35,'manage'),
                              (120,3421,25,'accounts'),
                              (130,2314,15,'manage');




