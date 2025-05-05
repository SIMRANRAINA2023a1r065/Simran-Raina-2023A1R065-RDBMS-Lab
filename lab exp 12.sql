create database spdemo;
use spdemo;
set autocommit=0; -- for DML functionality performing
/*
syntax of procedure:
create procedure name(para1,para2,...paran)
begin
     proc body
end*/
create table employees (
eid int,
name varchar(20) not null,
salary decimal (8,2),
email varchar(20),
gender char(1),
primary key(eid),
unique(email),
check (salary>0),
check (gender in(binary('M'),binary('F')))
);

desc employees; -- to see structure of a table
show tables; -- to see all the tables in a particular database
-- creating Procedure
delimiter //
create procedure insemp(in empno int,in ename varchar(20), 
                              in sal decimal(8,2), in eemail varchar(20), in gen char(1))
begin
     insert into employees value(empno,ename,sal,eemail,gen);
end //
delimiter ;
select* from employees;
-- Now, adding data into employees table using Procedure using calling it
call insemp (101,'James',90000,'James@gmail.com','M');
commit;
-- changing email using Procedure
delimiter //
create procedure uodateemail (in empno int, in newemail varchar(20))
begin
     update employees set email=newemail where eid=empno;
     end //
     delimiter ;
call uodateemail(101,'Jamesnew@gmail.com');
commit;
call insemp(102,'King',80000,'King@gmail.com','M');
commit;
call insemp(103,'Neena', 10000,'neena@gmail.com','F');
commit;
-- deleting record using Procedure
delimiter //
 create procedure delemp(in empno int)
 begin
   delete from employees where eid=empno;
   end //
   delimiter ;
call delemp(102);
commit;
-- search emp krna hai using Procedure
delimiter //
create procedure searchemp(in empno int)
begin
    select* from employees where eid=empno;
    end //
delimiter ;
call searchemp(103);
commit;
-- for cdeleting a Procedure
-- drop procedure [procedure name];
-- creating function
delimiter //
create function getasal(empno int)
returns decimal(10,2)
deterministic -- alrready we know that this dataset is present there
begin
declare asal decimal(10,2) default 0;
select salary into asal from employees where eid=empno;
return asal*12;
end //
delimiter ;
-- for calling function
select eid,name,salary ,getasal(eid)from employees;
-- for deleting function
-- drop function [function name];
