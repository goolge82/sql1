use charan;

select * from emp;

-- task 1:- Display the top 5 highest-paid employees, sorting by salary descending. 
           -- If two employees have the same salary, sort them by ename alphabetically.

select sal, ename from emp order by sal desc, ename asc;
select sal, ename from emp order by sal desc, ename asc limit 0,5;

-- task 2:-Display the 3 employees with the lowest salary, but sort the final result by deptno ascending and then ename alphabetically.

select * from emp;
select sal,deptno,ename from emp;
select sal, deptno, ename from emp order by sal asc, deptno asc, ename asc;
select sal, deptno, ename from emp order by sal asc, deptno asc, ename desc limit 0, 3;


-- task 3:-Display the top 4 employees based on salary, using deptno ascending as the first sorting condition, 
          -- salary descending as the second condition, and ename ascending as the third condition.

select * from emp;

select deptno, sal, ename from emp;

select deptno, sal, ename from emp order by deptno asc, sal desc, ename asc;

select deptno, sal, ename from emp order by deptno asc, sal desc, ename asc limit 0, 4;


