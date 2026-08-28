select * from emp;

-- now order by

select * from emp order by ename asc, sal desc; 
-- here ename is sorted but after that we add sal colum also but it didn't sorted because if repeated values are there at first sorted colum 
-- we   can add another coulm for sorting beside the coulms in orderby like 
-- ex:-

select * from emp order by deptno asc, job desc;

select * from emp order by deptno asc, sal desc, job asc, ename desc;


-- fiel function  
select * from emp order by field(job,'president');
-- above query it give first print remaining row than it print field function
 
select * from emp order by field(job,'president', job);

select * from emp order by field(job,'president', 'analyst','manager','clerk','salesman');

select * from emp order by field(job,'president', 'analyst','manager','clerk','salesman'), deptno desc, sal asc;

select * from emp order by field(job,'president', 'analyst','manager','salesman');

-- above query it give field function will  print first than it print remaining rows.