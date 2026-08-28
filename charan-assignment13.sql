use charan;

select * from emp;

-- -----------------------------------------------------------------------------

-- 1.Display the departments having more than 3 employees.

select deptno from emp;
select deptno, count(*) from emp group by deptno;
select deptno, count(*) from emp group by deptno having count(*)>=3;
select deptno, count(*) from emp group by deptno having count(*)>3;

-- --------------------------------------------------------------------------------
-- 2.Display the jobs having more than 2 employees.

select job from emp;
select job,count(*) from emp group by job;
select job, count(*) from emp group by job having count(*)>2;
select job, count(*) from emp group by job having count(*)>=2;

-- ------------------------------------------------------------------------------------

-- 3.Display the departments whose total salary is greater than 9000.

select deptno,sal from emp;

select deptno, sal, count(*) from emp group by deptno, sal;

select deptno, sal, count(*) from emp group by deptno, sal having sal>=9000;

select deptno, count(*),sum(sal) from emp group by deptno,  sal with rollup  having sum(sal)>=9000;
select deptno, sal, count(*) from emp where sal>9000 group by deptno, sal ;


-- ------------------------------------------------------------------------------------------------

-- 4.Display the jobs whose average salary is greater than 2000.

select job, sal from emp;

select job, sal, count(*) from emp group by job,sal having sal>2000;

select job,  sal, avg(sal) from emp group by job, sal;


select job,avg(sal) from emp  group by job having avg(sal)>2000;

-- 5.Display the departments having at least 2 employees, sorted by the employee count in descending order.

select deptno from emp;

select deptno,count(*) from emp group by deptno;

select deptno, count(*) from emp group by deptno  having count(*)>2 order by count(*) desc;
<<<<<<< HEAD
select deptno,job, count(*) from emp group by deptno,job  having count(*)>=2 order by count(*) desc;
=======

select deptno, count(*) from emp group by deptno  having deptno>2 order by deptno desc;

select deptno,job, count(*) from emp group by deptno,job  having count(*)>=2 order by count(*) desc;

>>>>>>> 1bcffe4 (second commit)
