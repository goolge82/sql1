use charan;

-- task1:- Display all unique manager numbers from the emp table.

select * from emp;

select job from emp;

select job from emp order by job asc;

select job from emp order by job asc limit 6,3;

-- using where condition we can print dircetly without these much  of query
select job from emp where job='manager';

select distinct mgr from emp;

-- 2.Display all unique commission values from the emp table.

select * from emp; 

select distinct comm from emp;

select distinct comm from emp order by comm desc;


-- 3.Display all unique combinations of job and salary, sorted by salary in descending order.

select * from emp;

select job,sal from emp order by job desc, sal;

select sal from emp order by sal desc; 

select sal, job from emp order by sal desc, job asc;

select distinct job, sal from emp order by sal desc;

-- 4.Display the top 3 highest different salary values using DISTINCT, ORDER BY, and LIMIT.

select sal from emp;

select distinct sal from emp;

select distinct sal from emp order by sal;

select distinct sal from emp order by sal desc limit 0,3;

-- 5.Display all unique combinations of deptno and job, sorted by deptno ascending and job alphabetically.

select distinct deptno, job from emp;

select distinct deptno, job from emp order by deptno asc, job;

select * from emp where deptno = 10 or job='manager';

 -- or operator even one condition satisfy it will print 
 
 select * from emp where deptno = 10 and job='manager';
 
 -- and operator must all condition satisfy then only it will print 

