use charan;

select * from emp;

-- --------------------------------------------------------------------------------

-- MySQL 
-- task 1:-.Display the number of employees in each department, sorted by the employee count in descending order.

select deptno from emp;

select deptno, count(*) from emp group by deptno;

select deptno, count(*) from emp group by deptno order by deptno desc;

select deptno, count(*) from emp group by deptno order by deptno asc;

select  count(deptno) from emp group by deptno with rollup order by count(deptno) asc;

select deptno, job, count(*) from emp group by deptno,job order by deptno desc;
-- --------------------------------------------------------------------------------------------------


-- task 2:-.Display the number of employees in each job, sorted by the job name alphabetically.

select job from emp;
select job, count(*) from emp group by job;

select job, count(*) from emp group by job order by job desc;

select job, count(*) from emp group by job order by job  asc;

select job, deptno, count(*) from emp group by job,deptno order by job desc;

-- --------------------------------------------------------------------------------------------

-- task 3:-.Display the number of employees in each department, sorted by department number in descending order.

select deptno, count(*) from emp group by deptno order by deptno desc;

select count(deptno) from emp group by deptno order by deptno asc;

-- -------------------------------------------------------------------------------------------------

-- task 4:-.Display the number of employees in each job, sorted by employee count from lowest to highest.

select job, count(*) from emp  group by job order by count(job) asc;

-- ---------------------------------------------------------------------------------------------------

-- task 5:-.Display the number of employees in each department whose salary is greater than 1500, sorted by employee count in descending order.

select  deptno, sal,count(*) from emp group by deptno, sal;

select deptno, sal, count(*) from emp where sal>1500 group by deptno, sal;

select deptno, sal, count(*) from emp where sal>1500 group by deptno, sal order by  deptno, sal, count(*) desc;

select deptno, sal, count(*) from emp  group by deptno, sal having sal>1500 order by  deptno ,  sal desc , count(*) desc;
