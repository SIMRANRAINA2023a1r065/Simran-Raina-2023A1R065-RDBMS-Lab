use scott;
show tables;
desc emp;
desc dept;
select* from emp;
select* from dept;
select emp.ename,emp.sal,dept.dname,dept.loc -- tablename.column name -- catresian product liya yha pe
 from emp join dept 
 -- now filter krenge jha deptno. emp aur dept table dono m same hoga
 on(emp.deptno=dept.deptno); -- equi join

select emp.ename,emp.sal,dept.dname,dept.loc -- tablename.column name -- catresian product liya yha pe
from emp natural join dept; -- natural join is a type of equi join
-- now filter krenge jha deptno. emp aur dept table dono m same hogan
select* from emp;
select* from salgrade;
# non equi-join as 'between' keyword is used not'=' sign
select  e.ename,e.sal,s.grade,s.losal,s.hisal
from emp e join salgrade s
on( e.sal between s.losal and s.hisal);
select* from emp;
select* from dept;
-- Self join i.e; join a table within itself -> recursive relation
-- emp e and emp m -> making replica of a table
select e.ename as empname, m.ename as mgrname
from emp e join emp m
on(e.mgr=m.empno); -- null value join m nhi aata hai
select ename, dname
from emp join dept
on emp.deptno=dept.deptno;
-- right outer side join
-- shows dept(all) in which no emp is there
select ename, dname
from emp right  outer join dept
on emp.deptno=dept.deptno;
-- left outer join shows ename (all) whom no dept has been assigned
select ename, dname
from emp left  outer join dept
on emp.deptno=dept.deptno;
-- to get full outer join -- dono null values show krega for ename and dname
select ename, dname
from emp right  outer join dept
on emp.deptno=dept.deptno -- union m order by last line m lgta hai aur column aliasing 1st line m
-- left outer join shows ename (all) whom no dept has been assigned
union
select ename, dname
from emp left  outer join dept
on emp.deptno=dept.deptno;
insert into emp values(999,'Simran','clerk',7566,'2025-12-6',2000,NULL,NULL);
select* from emp;
create database  hr;
desc employees;
desc departnents;
drop database hr;


