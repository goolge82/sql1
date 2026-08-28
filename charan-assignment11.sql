use charan;

select * from emp;

-- ---------------------------------------------------------------------------------
-- task 1:- .Display the number of employees in each department.

select deptno from emp;
select count(*) from emp;

select distinct deptno from emp; -- it removes duplicates

select distinct deptno, count(*)from emp; -- aggregate query without group by

select deptno, count(*) from emp group by deptno; -- group by it didn't remove duplicates it group the duplicate values section wise

-- 10	3
-- 20	5
-- 30	6

-- ---------------------------------------------------------------------------

-- task 2:- .Display the number of employees in each job.


-- it check the count in job column which job how many are there.we can see output below
select job, count(*) from emp group by job;

-- CLERK	 4
-- SALESMAN	 4
-- MANAGER	 3
-- ANALYST	 2
-- PRESIDENT 1
-- --------------------------------------------------------------------------

-- task 3:- .Display the number of employees in each department, considering only employees with a salary greater than 2000.

-- it check the count  deptno and also it check condition it that deptno which one have more than 2000. we can see below the output

select deptno,sal, count(*) from emp where sal>2000  group by deptno, sal;

-- 20	2975	1
-- 30	2850	1
-- 10	2450	1
-- 20	3000	2
-- 10	5000	1

-- -------------------------------------------------------------------------------
-- task 4:-.Display the number of employees in each job, considering only employees hired after 1981-01-01.

select deptno, job, hiredate from emp where hiredate<>'1981-02-22';

select deptno, job, hiredate from emp where hiredate>'1981-01-01';
-- if the data not there in table it won't effect if is there means it will effect the rows

-- ------------------------------------------------------------------------------

-- task 5:- .Display the number of employees in each department for departments 10, 20, and 30.

select deptno,  count(*) from emp group by deptno, job;

select deptno, count(*) from emp where deptno in (10,20,30) group by deptno;