use charan;


select * from emp;
-- task 1:-Display employees who work in department 20 and have a salary greater than 2000.

select * from emp where deptno=20 and sal>2000;
-- execution starts  'from' emp table then condition 'where' in condition deptno=20 it print all deptno 20 employees.
-- ofter it check is there another ohter condition if there it.check if not it went to select
-- here there is condition and sal>1500 above 1500 who are there in deptno 20 there will print 

-- here and operator works like if user need two colum combination of data of a user want we use 'and' operator

-- task 2:-Display employees whose job is CLERK or ANALYST.

select * from emp where job in ('clerk','analyst');

-- execution starts  'from' emp table then condition 'where' is job(cleark,analyst) it print all cleark, analyst employees.
-- ofter it check is there another ohter condition if there it.check if not it went to select

-- here 'in' operator is use like when we need multiple values of data in one list instead of write separtely.

-- task 3:-Display employees who work in department 10 or 30.

select * from emp where deptno=10 or deptno=30;

-- execution starts  'from' emp table then condition 'where' is deptno=10 and 30 it print all 10,30 employees.
-- ofter it check is there another ohter condition if there it.check if not it went to select

-- here 'or' operator use like when in a table a user have multiple role with different id


-- task 4:-Display employees who have a salary greater than 1500 and work in department 20 or 30.

select * from emp where deptno in (20,30) and sal>1500;

-- execution starts  'from' emp table then condition 'where' in condition deptno=20,30 it print all deptno 20,30 employees.
-- ofter it check is there another ohter condition if there it.check if not it went to select
-- here there is condition and sal>1500 above 1500 who are there in deptno 20,30 there will print

-- here 'in' operator is use like when we need multiple values of data in one list instead of write separtely.
-- here 'and' operator works like if user need two colum combination of data of a user want we use 'and' operator

-- task 5:-Display employees whose job is MANAGER or SALESMAN and whose salary is greater than 2000.

select * from emp where job in ('manager','salesman') and sal>2000;
-- execution starts  'from' emp table then condition 'where' in condition job(manager,salesman) it print all deptno manager,salesman employees.
-- ofter it check is there another ohter condition if there it.check if not it went to select
-- here there is condition and sal>1500 above 1500 who are there in job (manager,salesman) there will print

-- here 'in' operator is use like when we need multiple values of data in one list instead of write separtely.
-- here 'and' operator works like if user need two colum combination of data of a user want we use 'and' operator
