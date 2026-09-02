use charan;

select * from emp;

-- from-where-group by- having-select-distinct-orerby-limit

-- sub query write in three places (3types)

-- where
-- from
-- select

-- where '=' if inner sub query contains only single value it assign to outer sub query there we use '='
-- where '=' if inner sub query contains multiple values it assign to outer sub query there we use 'in'

-- where-- in the outer query our wise how many columns to to print . but in inner query which condition we checking that values 
-- related columns only write after select


-- from in sub query startes 'from' so the taable coulmn will it take take from inner sub query not from outer sub query
-- from -- we must use reference even we can use 'as' our wish but reference must and should
 

-- task 1:-.Display all employee details from a subquery created using the emp table.


select * from emp;
select * from(select * from emp) as emp;

-- ----------------------------------------------------------------------------------------------------------------

-- task 2:-.Display the employee names and salaries from a subquery containing employees with salary greater than 2000.

select * from emp where sal in(select sal from emp where sal>2000);
select ename, sal from emp where sal in (select sal from emp where sal>2000);

select * from (select ename, sal from emp where sal>=2000) as result;

-- select ename, sal in (select sal from emp where sal>2000) from emp;

-- -----------------------------------------------------------------------------------------------------

-- task 3:-.Display all details from a subquery containing employees who work in department 20.

select * from emp where deptno in (select deptno from emp where deptno=20);

select * from(select ename,deptno from emp where deptno=20) as emp;

-- -----------------------------------------------------------------------------------------------------

-- task 4:-.Display employee names and job roles from a subquery containing employees hired after 1981-01-01.

select ename, job, hiredate from emp where hiredate in (select hiredate from emp where hiredate>'1981-01-01'); 

select * from (select ename, job, hiredate from emp where hiredate>'1981-01-01') as emp;

-- -------------------------------------------------------------------------------------------------------------

-- task 5:-.Display employee names and department numbers from a subquery containing employees whose job is MANAGER.

select * from emp where job in (select job from emp where job='manager');

select * from(select ename, job from emp where job='manager') e;

