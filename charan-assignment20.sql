use charan;

select * from emp;

 -- --------------------------------------------------------------------------------------------

-- 1.Write a query to find the employees whose salary is greater than the average salary of their department but less 
-- than company average salary?
select avg(sal) from emp;

-- company avg sal is :- 2073.2143

select avg(sal) from emp where deptno=10;
-- avg of deptno 10 is:- 2916.6667

select avg(sal) from emp where deptno=20;
-- avg of deptno 20 is:- 2175.0000

select avg(sal) from emp where deptno=30;
-- avg of deptno 30 is:- 1566.6667

(select * from emp as e1 where sal>(select avg(sal) from emp as e2 where e2.deptno=e1.deptno) and sal < (select avg(sal) from emp));

-- first find each dept avg sal in each then compare with company avg sal
-- in corerelated query first we need to right query first  condition and then write second condition

 -- --------------------------------------------------------------------------------------------

-- Write a query to find employees whose salary is less than the average salary of their department.
select * from emp as e1 where sal>(select avg(sal) from emp as e2 where e2.deptno=e1.deptno);
-- above query is finding avg(sal) is greater than sal in each department
select * from emp as e1 where sal<(select avg(sal) from emp as e2 where e2.deptno=e1.deptno);
-- above query is finding avg(sal) is less than sal in each department

-- ---------------------------------------------------------------------------------------------------------
select * from emp as e1 where sal in (select max(sal) from emp as e2 where e2.deptno=e1.deptno);
-- above we Write a query to find the employee(s) who earn the highest salary in each department.

select max(sal) from emp where deptno=20;
-- ----------------------------------------------------------------------------------------------------------

select * from emp as e1 where sal in (select min(sal) from emp as e2 where e2.deptno=e1.deptno);

select * from emp as e1 where sal in (select max(sal) from emp as e2 where e2.deptno=e1.deptno) and sal in(select max(sal) from emp);

select * from emp where job='manager';

---------------------------------------------------------------------------------------------------------------

-- 2.Write a query to find the latest joined employee from each department?
-- Note: using subqueries only

select hiredate from emp;

select * from emp as e1 where hiredate in (select max(hiredate) from emp as e2 where  e2.deptno=e1.deptno);

select * from emp order by hiredate desc limit 1,3;

select max(hiredate) from emp order by hiredate desc;