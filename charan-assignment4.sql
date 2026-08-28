use charan;

select * from emp;

-- distinct is a key word to represent the data uniquely

-- task 1:-Display all unique job roles from the emp table.

select job from emp; 

-- so all jobs came from emplypoee table 
-- but we need unique job roles not repeated roles

select distinct job from emp;

-- ----------------------------------------------------------------------------------

-- task 2:-Display all unique department numbers from the emp table.

select deptno from emp;

-- so all deptno came from emplypoee table 
-- but we need unique deptno  not repeated numbers

select distinct deptno from emp;

-- --------------------------------------------------------------------------------------

-- task 3:-Display all unique salary values from the emp table.

select sal from emp;

-- so all salary came from emplypoee table 
-- but we need unique salary  not repeated salary

select distinct sal from emp;

-- ------------------------------------------------------------------------------------------

-- task 4:-Display all unique combinations of job and department number from the emp table.

select job, deptno from emp;

select distinct job, deptno from emp;

-- so 9 rows affected

-- -------------------------------------------------------------------------------------------------

-- task 5:-Display all unique salary values in descending order and show only the top 5 different salaries.

select sal from emp;

select sal from emp order by sal desc;

select sal from emp order by sal desc limit 0,5;

select  distinct sal from emp order by sal desc limit 0,5;
