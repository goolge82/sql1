use charan;

select * from emp;

-- ------------------------------------------------------------------------------------------------

-- 1.Display the employee name, joining date, and year of joining for all employees.

select ename, hiredate from emp;

select ename, year(hiredate) from emp;


-- 2.Display the employee name and number of days they have worked in the company using DATEDIFF().

select date(now());
select day(now());
select hour(now());
select min(now());

select ename, datediff(now(),hiredate) from emp;

-- 3.Display the employee name and the date 6 months after their joining date using DATE_ADD(). 

select ename, hiredate, date_add(hiredate, interval 6 month) from emp;


-- 4.Display ename, job, and salary along with the salary rank across all employees using DENSE_RANK(). 
-- Highest salary should get rank 1.

-- window functions

-- syntax:-

-- function_name() over(
-- [partition by exper_list],
-- [order by exper_list],
-- [rows_between]
-- )


select ename, job, sal, 
rank() over(order by sal) 
from emp;

select ename, job, sal, 
dense_rank() over(order by sal) 
from emp;


-- 5.Department-wise
-- Display ename, deptno, and salary with a unique row number separately for each department, ordering salary from highest to lowest.

select ename, deptno, sal, 
row_number() over(partition by deptno order by sal)
 from emp;

-- 6.Display ename, salary, RANK() and DENSE_RANK() together, ordered by salary in descending order.

select ename, sal,
rank() over(order by sal desc),
 dense_rank() over(order by sal desc) 
 from emp;