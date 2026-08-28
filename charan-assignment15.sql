use charan;

select * from emp;

-- ------------------------------------------------------------------------------------------------------------------------

-- task 1:-.Display the number of employees in each department and identify the grand total row.

select deptno, count(*) from emp group by deptno with rollup; 
select deptno, count(*) from emp group by deptno with rollup having grouping(deptno)=1; 

-- ------------------------------------------------------------------------------------------------------------------------

-- task 2:-.Display the number of employees in each job and identify whether each row is a normal group or the grand total.

select job, count(*) from emp group by job;
select job, count(*) from emp group by job with rollup;
select deptno, job from emp group by  deptno,job with rollup;
select deptno, job, count(*) from emp group by  deptno,job with rollup;
select job, count(*) from emp group by job with rollup having grouping(job)=0;
select job, count(*) from emp group by job with rollup having grouping(job)=1;
-- ------------------------------------------------------------------------------------------------------------------------


-- task 3:-.Display departments having more than 2 employees and also display the grand total.

select deptno from emp;

select deptno,count(*) from emp group by deptno;

select deptno, count(*) from emp group by deptno with rollup;

-- exper:- select deptno,count(*) from emp group by deptno having ((count(*)>2) and  (grouping(deptno)=0));

select deptno, count(*) from emp group by deptno with rollup having(count(*)>2 or grouping(deptno)=0);

select deptno, count(*) from emp group by deptno with rollup having grouping(deptno)=1;

-- ------------------------------------------------------------------------------------------------------------------------

-- task 4:-.Display jobs having more than 1 employee, along with the grand total, and identify the total row.

select job, count(*) from emp group by job;

select job, count(*) from emp group by job with rollup;


select job, count(*) from emp group by job with rollup having grouping(job)=1;

select deptno, job, count(*) from emp group by deptno, job;

select deptno, job, count(*) from emp group by deptno, job having count(*)>1;

select deptno, job, count(*) from emp group by deptno, job having count(*)<=1;

-- ------------------------------------------------------------------------------------------------------------------------


-- task 5:-.Display the number of employees in each department, keep only departments with at least 2 employees, and identify the grand total row.

select deptno from emp;

select deptno, count(*) from emp group by deptno;

select deptno, count(*) from emp group by deptno with rollup having (count(*)>=2 and grouping(deptno)=1);




