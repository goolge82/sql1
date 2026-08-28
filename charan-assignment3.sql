use charan;

select * from dept;

select * from emp;


-- --------------------------------------------------------------------------------------- --

-- task 1:- .Display employee details sorted by ename alphabetically.

select * from emp order by ename asc;

-- task 2:- Display all employees sorted by salary in descending order.

select * from emp order by sal desc; 

-- task 3:-Display employees sorted by deptno ascending and salary descending. 

select * from emp order by deptno asc, sal desc;

-- task 4:-Display the first 5 employees from the emp table. 

select * from emp limit 0,5;

-- task 5:-Display the 3 employees with the lowest salary.

select * from emp order by sal asc limit 0,3; 

 