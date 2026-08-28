use college;

select*from student;

-- drop table student;

create table course(

course_id int,

course_name varchar(50),

duration int,

fee int,

primary key(course_id)

);

-- ----------------------------------------------------------------------------------------------------------------------- 

create table student(

stu_id int,

stu_name varchar(50),

branch varchar(20),

yop int,

course_id int not null,

primary key(stu_id),

foreign key(course_id) references course(course_id)

);

-- on update cascade

drop table student;



use college;

select*from course;

insert into course values(1,'jfs', 6, 30000),(2,'pfs', 8, 32000),(3,'testing', 4, 28000),(4, 'deveops', 7, 40000);
insert into course values(5,'aws', 10, 45000);

select*from student;

                           
		
insert into student values (1,'charan', 'cse', 2026,1),
                            (2,'eswar','it', 2026, 2),
                           (3,'megha', 'ece', 2026,5),
                           (4,'prudhvi', 'cse', 2026,4),
                           (5, 'abdhul', 'cse', 2026,30);                        
                           
-- update course set course_id =30 where course_id =3;

-- set sql_safe_updates=1;
--                            
-- update student
-- set stu_name='kumar'
-- where stu_id=8;
-- -- cannot delete/update in parent row so foregin key will fail

-- delete from course
-- where course_id=4;

-- delete from student
-- where stu_id=6;

-- insert into student values(3, 'megha', 'ece', 2026, 3);





