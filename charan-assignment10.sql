use charan;

select * from emp;
-- task 1:-Display the department numbers and job roles, grouped by department, for employees working in departments 10, 20, and 30.

select distinct deptno from emp;

select distinct job from emp;

select deptno,job from emp;

select  distinct deptno,job from emp;

-- select  distinct deptno,job, count(*) from emp; -- erro

select deptno, job, count(*) from emp group by deptno;

select deptno, count(*) from emp group by deptno, job;

select deptno, job, count(*) from emp group by deptno, job;


-- task 2:-Display the job roles grouped by job for employees whose salary is greater than 1500.

select job, sal from emp;

-- select job, count(*) from emp where sal>1500 and group by job; -- error

select job, sal, count(*) from emp where sal>1500 group by job,sal;

-- task 3:-Display the department numbers and employee names, grouped by department, for employees hired after 1981-01-01.

select hiredate, ename from emp;

select deptno, ename, hiredate, count(*) from emp where hiredate> '1981-01-01' group by  deptno, ename, hiredate;

-- task 4:-Display the job and department number grouped by job for employees working in department 20 or 30.

select deptno, job,ename from emp where deptno=20 or deptno=30 group by deptno, job,ename;

select deptno, job,ename, count(*) from emp where deptno=20 or deptno=30 group by deptno, job,ename;

select job, deptno, count(*) from emp where deptno=20 or deptno=30 group by  job, deptno;


-- task 5:-Display the department number and job grouped by department for employees whose job is not CLERK.

select  job , deptno, count(*)from emp where job<>'clerk'   group by  job, deptno;

select  job , deptno from emp where job<>'clerk'   group by  job, deptno;

select  job , deptno, ename, count(*)from emp where job<>'clerk'   group by  job, deptno, ename;

