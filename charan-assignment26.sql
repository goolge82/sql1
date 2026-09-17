use charan;

select* from emp;

-- 1.Display the employee names and job roles of employees who are either CLERK or ANALYST using UNION.

select  ename,job from emp where job='clerk'
union
select ename,job from emp where job='analyst';

-- 2.Display the employee names from employees earning more than 2500 and employees working in department 30 using UNION ALL.

select ename, sal, deptno from emp where sal >2500
union all
select ename, sal,deptno from emp where deptno=30;

select * from emp where  deptno=30;
-- 3.Display ename, deptno, sal, and divide employees into 3 groups within each department based on salary from highest to lowest.

select ename, sal, deptno, dense_rank() over(partition by deptno order by sal desc) as temp from emp;

select ename, sal, deptno, ntile(3) over(order by sal desc) as result from emp;

select ename, sal, deptno, ntile(3) over(partition by deptno order by sal desc) as result from emp;


-- 4.Display ename, sal, and NTILE(4) based on hiredate from earliest to latest, showing which group each employee belongs to.

select ename, sal,hiredate, deptno, ntile(4) over(order by hiredate ) as result from emp;
