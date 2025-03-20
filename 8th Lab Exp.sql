use hr;
show tables;
select last_name, salary from employees where salary>11000;
select salary from employees where last_name='Abel';
select last_name, salary 
from employees where
 salary>(select salary 
 from employees 
 where last_name='Abel');
 -- muje dekhna hai emp with empid 101 kis din (monday,tuesday,..) hua hai
 desc employees;
-- select hire_date from employees where employee_id=101
 -- select dayname( hire_date) from employees where employee_id=101;
 -- saare wednesday wale employees ayenge jinki hireday wednesday hai
 select last_name,dayname(hire_date)
 from employees
 where dayname(hire_date)=
               (select dayname( hire_date) from employees where employee_id=101);
-- voh employees nikalo jinka mgr same as that of 101 emp id vale ka hai
select manager_id from employees where employee_id=101;
select last_name,manager_id
from employees 
where manager_id=
(select manager_id from employees where employee_id=101);
-- voh employees nikalo jinki salary king se km hai
select last_name,salary
from employees
where salary<(select salary 
from employees
where last_name='king');-- no o/p becoz wre cannot compare one value with more than one value
-- voh employees nikalo jinki salary king k barabar hai
select last_name,salary
from employees
where salary in (select salary 
from employees
where last_name='king'); -- in is a multirow operator
-- hm department wise min salary dekh rahe hai
select min(salary) from employees group by department_id;
-- sb employees jinki department wise min salary hai
select last_name,salary
from employees
where salary in(
select min(salary) from employees group by department_id);
select last_name,salary,job_id
 from employees;
 -- voh employees nikalna hai jinki salary kisi bhi IT_Programmer se zyada hai
 select salary from employees 
 where job_id="it_prog";
--  employees having salary greater than any IT programmer job_id
select last_name,salary,job_id
from employees where salary> any
 (select salary from employees 
 where job_id="it_prog")
 and job_id != "it_prog"; -- this is a part of outer query
