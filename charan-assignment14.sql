use charan;

select * from emp;

-- task 1:-.Display the number of employees in each department and show the total number of employees.

select count(*) from emp; -- 14

select deptno, job, count(*) from emp group by deptno, job ;

-- 20	CLERK	2
-- 30	SALESMAN	4
-- 20	MANAGER	1
-- 30	MANAGER	1
-- 10	MANAGER	1
-- 20	ANALYST	2
-- 10	PRESIDENT	1
-- 30	CLERK	1
-- 10	CLERK	1

select deptno, count(*) from emp group by deptno, job with rollup;

-- 10	1
-- 10	1
-- 10	1
-- 10	3
-- 20	2
-- 20	2
-- 20	1
-- 20	5
-- 30	1
-- 30	1
-- 30	4
-- 30	6
-- 	    14

-- ----------------------------------------------------------------------------------------------------------

-- task 2:-.Display the number of employees in each job and show the grand total.

select deptno, job, count(*) from emp group by deptno, job with rollup;

-- 10	CLERK	1
-- 10	MANAGER	1
-- 10	PRESIDENT	1
-- 10		3
-- 20	ANALYST	2
-- 20	CLERK	2
-- 20	MANAGER	1
-- 20		   5
-- 30	CLERK	1
-- 30	MANAGER	1
-- 30	SALESMAN	4
-- 30		6
-- 		14
----------------------------------------------------------------------------------------------------------

-- task 3:-.Display departments having more than 2 employees and include the total number of employees.

select deptno,  count(*) from emp group by deptno having count(*)>=2;
-- 10	3
-- 20	5
-- 30	6
select deptno,  count(*) from emp group by deptno with rollup having count(*)>=2;
-- 10	3
-- 20	5
-- 30	6
--  	14

select deptno, job,  count(*) from emp group by deptno, job having count(*)>=2;

-- -----------------------------------------------------------------------------------------------------
-- task 4:-.Display jobs having more than 1 employee and include the total number of employees.

select deptno, count(*) from emp group by deptno, job having count(*)>=1;

select deptno, job, count(*) from emp group by deptno, job with rollup having count(*)>=1;
-- 10	CLERK	1
-- 10	MANAGER	1
-- 10	PRESIDENT	1
-- 10		3
-- 20	ANALYST	2
-- 20	CLERK	2
-- 20	MANAGER	1
-- 20		5
-- 30	CLERK	1
-- 30	MANAGER	1
-- 30	SALESMAN	4
-- 30		6
-- 		14

-- --------------------------------------------------------------------------------------------------------

-- task 5.Display the number of employees in each department, show only departments with at least 2 employees, and include the total number
-- of employees.

select deptno,count(*) from emp group by deptno having count(*)>=2;

select deptno,count(*) from emp group by deptno  with rollup having count(*)>=2;
-- -----------------------------------------------------------------------------------------------------------


select deptno,job, count(*) from emp group by deptno,job with rollup having grouping(deptno,job)=0;
-- by giving 0 it will print in both column which are not null it will print 0,0
select deptno,job, count(*) from emp group by deptno,job with rollup having grouping(deptno,job)=1;
-- by giving 1 it will print like one column without null values and another one column with null values column  it will print. 0,1
select deptno,job, count(*) from emp group by deptno,job with rollup having grouping(deptno,job)=2;
-- by giving 2 it won't return any data beacuse in deptno column there is no null values excpet grant total in job also not there
select deptno,job, count(*) from emp group by deptno,job with rollup having grouping(deptno,job)=3;
-- by giving 3 (binary-11) both column which are  null it will print grant total