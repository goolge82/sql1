use charan;

select * from emp;

-- 1.Display all departments and the highest salary in each department, including departments that have no employees.

-- select * from emp as e right outer join dept as d 
-- on e.deptno=d.deptno where sal>(select avg(sal) from emp as e1 where e1.deptno=e.deptno);

select  d.deptno, max(sal) as Max_Salary from emp as e right outer join dept as d
on e.deptno=d.deptno  group by d.deptno;

-- -----------------------------------------------------------------------------------------------------------------

-- 2.Display the employee name and their manager's name for employees whose managers exist in the emp table.


select e1.ename, e2.ename from emp as e1, emp as e2 where e1.empno=e2.mgr;

select e1.empno,e1.ename, e1.job,e1.mgr, e2.empno, e2.ename, e2.job
from emp as e1, emp as e2 
where e1.empno=e2.mgr;

-- ----------------------------------------------------------------------------------------------------------------------

-- 3.Display all departments along with the number of employees in each department, including departments with zero employees.

select * from emp as e right outer join dept as d on e.deptno=d.deptno;

select count(e.deptno), d.deptno from emp as e right outer join dept as d on e.deptno=d.deptno group by d.deptno;

-- ------------------------------------------------------------------------------------------------------------------------

-- 4.Display all departments along with the latest hire date, including departments with no employees.

select * from emp as e1 where hiredate in (select max(hiredate) from emp as e2 where e2.deptno=e1.deptno);

select * from emp as e right outer join dept as d on e.deptno=d.deptno;

select d.deptno, max(hiredate) from emp as e right outer join dept as d on e.deptno=d.deptno group by d.deptno;
