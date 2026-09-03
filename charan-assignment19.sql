use charan;

select * from emp;


select avg(sal) from emp;
select sum(sal) from emp;
select max(sal) from emp;
select min(sal) from emp;

-- -------------------------------------------------------------------------

-- task-1:- write a query to display employees who work in a department where at least one employee has a salary greater than 3000

select * from emp;

select * from emp where sal>3000;

select * from emp where ename =(select ename from emp where sal>3000);

select  * from emp where sal>(select deptno where sal>3000);

-- ------------------------------------------------------------------------------------------------------------------------------

-- task-2:- write a query to display employees who have at leasst one other employee with same job

select * from emp;

select job from emp group by job having count(job)>1;

select * from emp where job in (select job from emp group by job having count(*)>1);

-- select job,count(*) from emp group by job having count(*)>1;

-- --------------------------------------------------------------------------------------------------------------------------------
-- task-3:- write a query to display employees whose salary is greater than the average salary of their respective dapartment

select avg(sal) from emp;
select * from emp where sal > (select avg(sal) from emp);

select * from emp as e1 where sal > (select avg(sal) from emp as e2 where  e2.deptno=e1.deptno);

-- -----------------------------------------------------------------------------------------------------------------------------------
-- task-4:- write a query to display employees who recevie highest salary in their respective dapartment


select * from emp where deptno=10;
-- 7839	KING	PRESIDENT		1981-11-17	5000		10

select * from emp where deptno=20;
select * from emp where deptno=30;

select * from emp where sal=(select max(sal) from emp where deptno=10); -- 5000
-- 7839	KING	PRESIDENT		1981-11-17	5000		10 
select * from emp where sal=(select max(sal) from emp where deptno=20); -- 3000
-- 7788	SCOTT	ANALYST	7566	1982-12-09	3000		20
-- 7902	FORD	ANALYST	7566	1981-12-03	3000		20

select * from emp where sal=(select max(sal) from emp where deptno=30); -- 2850
-- 7698	BLAKE	MANAGER	7839	1981-05-01	2850		30

select * from emp where sal in (select max(sal) from emp where deptno in(10,20,30)); -- 5000

select * from emp as e1 where sal = (select max(sal) from emp as e2 where e2.deptno=e1.deptno);

-- 7698	BLAKE	MANAGER	7839	1981-05-01	2850		30
-- 7788	SCOTT	ANALYST	7566	1982-12-09	3000		20
-- 7839	KING	PRESIDENT		1981-11-17	5000		10
-- 7902	FORD	ANALYST	7566	1981-12-03	3000		20

-- -----------------------------------------------------------------------------------------------------------
-- task-5:- write a query to display employees who recevie lowest salary in their respective dapartment

select * from emp as e1 where sal =(select min(sal) from emp as e2 where e2.deptno=e1.deptno);

-- 7369	SMITH	CLERK	7902	1980-12-17	800		20
-- 7900	JAMES	CLERK	7698	1981-12-03	950		30
-- 7934	MILLER	CLERK	7782	1982-01-23	1300	10

