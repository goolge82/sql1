use charan;

CREATE TABLE salgrade (

grade int,

losal int,

hisal int

);

INSERT INTO salgrade VALUES (1, 700, 1200);

INSERT INTO salgrade VALUES (2, 1201, 1400);

INSERT INTO salgrade VALUES (3, 1401, 2000);

INSERT INTO salgrade VALUES (4, 2001, 3000);

INSERT INTO salgrade VALUES (5, 3001, 9999);

select * from salgrade;

select * from emp;

select * from dept;

-- 1.Display the employee name, job, department name, salary, and salary grade of employees 
-- whose salary is greater than their department’s average salary.

select ename, job, sal from emp;

select e.ename, e.job, e.sal, e.deptno, d.dname from emp as e inner join dept as d on e.deptno=d.deptno;



select e.ename, e.job, e.sal, e.deptno, d.dname, s.losal, s.hisal from emp as e inner join salgrade as s on  e.sal between losal and hisal inner join dept as d on e.deptno=d.deptno
where sal>(select avg(sal) from emp as e1 where e1.deptno=e.deptno) ;

-- ---------------------------------------------------------------------------------------------------

-- 2.Display the employee name, job, department name, salary, and salary grade of all employees.

select * from emp as e inner join dept as d on e.deptno=d.deptno left outer join salgrade as s on e.sal between losal and hisal;

-- 3.Display the employee name, department number, and salary, sorted by department number and salary in descending order.
select * from emp as e inner join dept as d on e.deptno=d.deptno order by d.deptno desc;
