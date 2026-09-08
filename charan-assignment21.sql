use charan;

select * from emp;

-- --------------------------------------------------------------------------------------------
-- 1.Display the employee name, job, and department name for all employees.

select ename, job, deptno from emp;

select dname from dept;

select e.ename, e.job, e.deptno, d.dname from emp as e inner join dept as d on e.deptno=d.deptno;
 
 -- --------------------------------------------------------------------------------------------
 
-- 2.Display the employee name, salary, and department location for all employees.

select ename, sal, deptno from emp;

select loc from dept;

select e.ename, e.sal, e.deptno, d.loc from emp as e inner join dept as d on e.deptno=d.deptno;

 -- --------------------------------------------------------------------------------------------

-- 3.Display the employee name, job, salary, and department name for employees earning more than 2000.

select e.ename, e.job, e.sal, e.deptno, d.dname from emp as e inner join dept as d on e.deptno=d.deptno where sal>2000;

 -- -----------------------------------------------------------------------------------------------

-- 4.Display the department name and the number of employees working in each department.

select dname, count(*) from dept group by dname;

select deptno, count(*) from emp group by deptno;

select e.job,e.deptno, d.dname, count(*) from emp  as e inner join dept as d on e.deptno=d.deptno group by e.job, e.deptno, d.dname;

select e.deptno, d.dname, count(*) from emp  as e inner join dept as d on e.deptno=d.deptno group by  e.deptno, d.dname;