use charan;

select* from emp;

-- 1.Display the employee details of the employee(s) who receive the highest salary.

select max(sal) from emp;

select * from emp where sal=(select max(sal) from emp);

-- 2.Display the employee details of employees whose salary is greater than the average salary of all employees.

select avg(sal) from emp;

select * from emp where sal>(select avg(sal) from emp);

select * from emp  as e1 where sal >(select avg(sal)  from emp as e2 where e2.deptno=e1.deptno);

-- 1.Display employees who work in the same department as SMITH.

select deptno from emp where ename='smith';

select * from emp where deptno in (select deptno from emp where ename='smith');

-- 2.Display employees who have the same job as ALLEN.

select deptno from emp where ename='allen';

select * from emp where deptno in (select deptno from emp where ename='allen');

-- 3.Display each employee's name along with the average salary of all employees.

select avg(sal) from emp;

SELECT *, (SELECT avg(sal) FROM emp) AS sal
FROM emp;

-- 4.Display each employee's name along with the highest salary in the company.

select *, (select max(sal) from emp) as sal from emp;

-- 5.Display employees whose salary is greater than the average salary of all employees.

select * from emp where sal> (select avg(sal) from emp);

-- 1.Display the employee details of the employee(s) who receive the highest salary.

select max(sal) from emp;

select * from emp where sal=(select max(sal) from emp);

-- 2.Display the employee details of employees whose salary is greater than the average salary of all employees.

select avg(sal) from emp;

select * from emp where sal>(select avg(sal) from emp);

select * from emp  as e1 where sal >(select avg(sal)  from emp as e2 where e2.deptno=e1.deptno);



