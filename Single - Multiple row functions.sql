use university;
show tables;
select ifnull(10,"na");
select* from instructors;
select max(salary) as maxsal,
       min(salary) as minsal,
	   round(avg(salary),2) as avgsal,
      sum(salary) as sumsal,
       count(InstructorID) as noofemp
     from instructors;
     select* from instructors;
	-- department wise max salary chahiye hmme - use group by clause becoz we have to implement max salary in group
    use university;
    select max(salary)
    from instructors
    group by deptid;
    select deptid,max(salary),count(*)
    from instructors
    group by deptid;
    select deptid from instructors;
    select* from students;
    select deptid, count(*) 
    from students
    group by deptid;
    use scott;
    show tables;
    select* from emp;
    select max(sal) as maxsal from emp;