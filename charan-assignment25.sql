use charan;

select* from emp;

-- 1.Display ename, sal, and RANK() based on salary, with the highest salary getting rank 1.

select ename, sal, rank() over(order by sal) as r from emp;

select * from (select ename, sal, rank() over(order by sal) as r from emp)as temp where temp.r=1;

select * from (select ename, sal, rank() over (partition by deptno order by sal desc) as high from emp) as temp where temp.high=1;

-- ---------------------------------------------------------------------------------------------------------------------------

-- 2.Display ename, deptno, and ROW_NUMBER() for each department based on salary in descending order.

select ename, sal,  deptno, row_number() over(partition by deptno order by sal desc) as  high from emp;

-- ---------------------------------------------------------------------------------------------------------------------------

-- 3.Display ename, job, sal, and department-wise DENSE_RANK() based on salary from highest to lowest.

select ename, job, sal, deptno, dense_rank() over(order by sal desc) as high from emp;

-- ----------------------------------------------------------------------------------------------------------------------------

-- 4.Display ename, deptno, sal, and department-wise ROW_NUMBER(), ordering by salary descending and ename ascending when salaries are equal.

select ename, sal, deptno, row_number() over(partition by  deptno order by sal desc, ename) as sala from emp;
-- select ename, sal, deptno, row_number() over(order by sal desc) as sala, row_number() over(order by ename asc)as ename from emp;

-- 5.Display the top 2 highest-paid employees from each department using ROW_NUMBER().

select * from(select ename, sal, deptno, row_number() over(partition by deptno order by sal desc) as high from emp)
 as temp where temp.high<=2;
 
--  KING	5000	10	1
-- CLARK	2450	10	2
-- SCOTT	3000	20	1
-- FORD	3000	20	2
-- BLAKE	2850	30	1
-- ALLEN	1600	30	2