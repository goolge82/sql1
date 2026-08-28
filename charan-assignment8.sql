use charan;

select * from emp;


-- task 1:-Display employees whose name starts with the letter S.

select ename from emp;
select ename from emp where ename like '%s';
select ename from emp where ename like 's%';
-- if we put percentail '%' at starting it is sign of ending 
-- and if we put percentail '%' at ending it is sign of starting 

-- so here at putting '%' at ending there are three employees came ending ename with s

-- 1.jones ,2.adams, 3.james

-- but by putting '%' at the starting there are two name came at staring ename with s

-- 1.smith, 2.scott



-- ---------------------------------------------------------------------------------------------
-- task 2:-Display employees whose name ends with the letter N.

select ename from emp;
select ename from emp where ename like 'n%';
select ename from emp where ename like '%n';

-- if we put percentail '%' at starting it is sign of ending 
-- and if we put percentail '%' at ending it is sign of starting 

-- so here at putting '%' at ending there is no starting ename with N

-- but by putting '%' at the starting there are two name came

-- 1.allen, 2.martin

-- --------------------------------------------------------------------------
-- task 3:-Display employees whose name contains the letter A.

select ename from emp;

select ename from emp where ename like '%a%';

-- so by putting '%' at starting and ending it will give those who contains 'a' it will come
-- even it is in starting, ending, middle, are second, third where ever it will search each name. by doing these the program became slowest

-- by doing these we get 7 employees name who coints 'a'
-- ALLEN
-- WARD
-- MARTIN
-- BLAKE
-- CLARK
-- ADAMS
-- JAMES

-- ------------------------------------------------------------------------------------
-- task 4:-Display employees whose salary is not between 1000 and 3000.

select ename, sal from emp;

select sal from emp where sal  between 1000 and 3000;

select sal from emp where sal  not between 1000 and 3000;

select ename, sal from emp where sal  not between 1000 and 3000;

-- -----------------------------------------------------------------------------------------
-- task 5:-Display employees whose job is not CLERK and whose name contains the letter E.

select job from emp where job<>'clerk';

select ename,  job from emp where job<>'clerk' and ename like '%e%';

select ename,  job from emp where job<>'clerk' and job like '%e%';

-- for first query job column only come in that we remove 'clerk' we can like <>, !=, not ok so it remove clerk and print remaining jobs
-- for second query ename, job columns only print in that we we remove 'clerk' and in ename we only want whose contains 'e' those peoples only come

-- ALLEN	SALESMAN
-- JONES	MANAGER
-- BLAKE	MANAGER
-- TURNER	SALESMAN

-- for third query job columns only print in that we we remove 'clerk' and in job we only want whose contains 'e' those peoples only come

-- ALLEN	SALESMAN
-- WARD	SALESMAN
-- JONES	MANAGER
-- MARTIN	SALESMAN
-- BLAKE	MANAGER
-- CLARK	MANAGER
-- KING	PRESIDENT
-- TURNER	SALESMAN