-- CREATE database charan1;

use charan1;

CREATE TABLE dept (

deptno int(2) not NULL,

dname varchar(20) not NULL,

loc varchar(20) not NULL,

primary key(deptno)

);

INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');

INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');

INSERT INTO dept VALUES ('30','SALES','CHICAGO');

INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');

CREATE TABLE emp (

empno int(6) NOT NULL,

ename varchar(10) not NULL,

job varchar(15) not NULL,

mgr int(6) default NULL,

hiredate date not NULL,

sal int(8) not NULL,

comm int(5) default NULL,

deptno int(2) not NULL,

primary key(empno),

foreign key(deptno)

references dept(deptno)

);

INSERT INTO emp VALUES ('7369','SMI%TH','CLE%RK','7902','1980-12-17','800.00',NULL,'20');

INSERT INTO emp VALUES ('7499','ALL%%EN','SALES_MAN','7698','1981-02-20','1600.00','300.00','30');

INSERT INTO emp VALUES ('7566','JON%ES','MANA%%GER','7839','1981-04-02','2975.00',NULL,'20');

INSERT INTO emp VALUES ('7654','MAR%TIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');

INSERT INTO emp VALUES ('7782','CLA_RK','MA_NAGER','7839','1981-06-09','2450.00',NULL,'10');

INSERT INTO emp VALUES ('7788','SCO_TT','ANA__LYST','7566','1982-12-09','3000.00',NULL,'20');

INSERT INTO emp VALUES ('7839','KING','PRESI_DENT',NULL,'1981-11-17','5000.00',NULL,'10');

INSERT INTO emp VALUES ('7876','ADAMS','CLER%K','7788','1983-01-12','1100.00',NULL,'20');

INSERT INTO emp VALUES ('7902','FOR_D','ANALYST','7566','1981-12-03','3000.00',NULL,'20');



select * from emp;

-- task 1:-Display employees whose name contains the actual % character.

select ename from emp where ename like '%\%%%';

-- it will come those who have '%' or '%%' so these query will 

-- now another question there is a person that consist of '%%' i need that person then 

SELECT ename FROM emp WHERE ename LIKE '%!%!%%' ESCAPE '!';

-- by use '!' we can get that person here ! is an literal  we can use backslash also

-- and also backslsh only we need to use with escape remaining character we have to use escape

SELECT ename FROM emp WHERE ename LIKE '%\%\%%';
 

-- task 2:-Display employees whose name contains the actual _ character.

select ename from emp;

select ename from emp where ename like '%\_%';

-- so underscore '_' is take only one single value but here it is in middle of the letter we need those who have '_' those people i need

-- so here first percentail is which is at ending value must be is and ending percentail is staring value so here underscore is between two percentails
-- so it will search starting to ending and by using backshashle we can get those peoples

-- task 3:-Display employees whose job contains the actual % character.

select job from emp;

select job from emp where job like '%\%%';
select job from emp where job  not  like '%\%\%%' and job like '%\%%';
select job from emp where job like '%\\%%';

-- task 4:-Display employees whose job contains the actual _ character, using ! as the escape character.

select job from emp where job like '%!_%' escape '!';
select job from emp where job like '%!_!_%' escape '!';
select job from emp where job not like   '%!_!_%' escape '!' and job like '%!_%' escape '!' ;

-- task 5:-Display employees whose name starts with an actual _ character, using ! as the escape character.

select job from emp where job like '%\_%';
select job from emp where job like '%!_!_%' escape '!';

-- select job from emp where job like '%\\\\_%';

-- \%	 % / escaped %
-- \_	 _ / escaped _
-- \\	 one literal \
-- \\\\	 two literal \


