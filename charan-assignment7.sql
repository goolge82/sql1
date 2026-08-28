use charan;

select * from emp;

-- task 1:-Display employees who work in department 10, 20, or 30 and have a salary greater than 2000

select deptno,sal from emp;
select deptno,sal from emp where deptno in (10,20,30);
select deptno,sal from emp where deptno in (10,20,30) and sal>2000;

-- task 2:-Display employees whose job is CLERK or SALESMAN, and whose salary is greater than 1000 but less than 3000.

select job,sal from emp;

select job, sal from emp where job in ('clerk', 'salesman');

select job, sal from emp where job in ('clerk', 'salesman') and sal between 1000  and  3000;

-- select job, sal from emp where job in ('clerk', 'salesman') and sal>=1000  or  sal<=3000;


-- task 3:-Display employees who work in department 20 or have a salary greater than 3000.

select deptno, sal from emp;

select deptno, sal from emp where deptno=10; 

select deptno, sal from emp where deptno=20 or sal>3000; 


-- task 4:-Display employees whose job is MANAGER, ANALYST, or CLERK and who were hired before 1982-01-01.

select * from emp;

select job, hiredate from emp;

select job, hiredate from emp where job in ('MANAGER', 'ANALYST','CLERK');

select job, hiredate from emp where job in ('MANAGER', 'ANALYST','CLERK') and hiredate < '1982-01-01';

-- here while we use date we need to mention like string like way so here job employees are manager,clerk,analyst employee
-- in those peoples who hired in before 1982-01-01 those peoples will com


-- task 5:-Display employees who work in department 10 or 30, and whose salary is greater than 1200 or commission is 0.

select deptno from emp where deptno in (10,30);

select deptno from emp where deptno in (10,30) and sal<1200 or comm=0;

select * from emp where deptno in (10,30) and sal<1200 or comm=0;

-- in 'or' operator not only use in single column but we can use while we need more than one column 
-- here or condition is atleast one condition is because true it will satisify the 'or' operator  


