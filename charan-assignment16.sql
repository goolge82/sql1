-- use charan;

-- select * from emp;
-- select deptno, count(*) from emp group by deptno with rollup having (count(*)>2 and grouping(deptno)=1);

-- select deptno, count(*) from emp group by deptno with rollup having count(*)>2;

-- select job, count(*) from emp group by deptno,job with rollup having grouping(job)=0 or job=1; 

use charan;

select * from emp;

-- task 1:-.Display employees who work in the same department as SMITH.

select ename,job, deptno from emp;

select deptno from emp;

select deptno from emp where deptno=20;
-- so here we checking deptno 20 how many are there so it given 5 
-- 20
-- 20
-- 20
-- 20
-- 20

select deptno from emp where ename='smith';
-- so here we checking smith which belongs so -->it give 20

select deptno,job,ename from emp where deptno=(select deptno from emp where ename='smith');

-- now question ask Display employees who work in the same department as SMITH.

-- outer query is checking 20 how many are there in deptno 20 and 
-- inner query is checking simith belongs to which deptno
-- sub query deptno,job,ename where deptno= inner query gives(simith deptno)
-- in that outer query checks and give 5 members 

-- 20	CLERK	SMITH
-- 20	MANAGER	JONES
-- 20	ANALYST	SCOTT
-- 20	CLERK	ADAMS
-- 20	ANALYST	FORD

-- -------------------------------------------------------------------------------------------------------------

-- task 2:-.Display employees who have the same job as ALLEN.

select ename, job from emp;

select job from emp where ename='allen';

select job, ename from emp where job='salesman';

select ename, job from emp where job=(select job from emp where ename='allen');

-- --------------------------------------------------------------------------------------

-- task 3:-.Display employees who report to the same manager as MARTIN.

select mgr, ename from emp;

select mgr, ename from emp where ename='martin';

select ename, job from emp where mgr=(select mgr from emp where ename='martin');

-- -----------------------------------------------------------------------------------------------------

-- task 4:-.Display employees who work in the same department as CLARK.

select ename, deptno from emp;

select deptno from emp where deptno=10;
select ename, deptno from emp where ename='clark';

select ename, deptno from emp where deptno=(select deptno from emp where ename='clark');

-- -------------------------------------------------------------------------------------------------------

-- task 5:-.Display employees who have the same job as JONES.

select job,deptno from emp where ename='jones';

select job,deptno from emp where deptno=20;

select job, deptno from emp where deptno=(select deptno from emp where ename='jones');