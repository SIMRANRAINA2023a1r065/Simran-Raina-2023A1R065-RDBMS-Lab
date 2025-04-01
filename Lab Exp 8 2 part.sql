use hr;
show tables;
desc employees;
-- select manager_id,department_id from employees where employee_id in (174,180) -- multirow multi column subquery
-- pair wise comparison
select last_name,manager_id,department_id
from employees where(manager_id,department_id) in -- pair wise comparison
(select manager_id,department_id 
from employees 
where employee_id in (174,180)) -- multirow multi column subquery
order by department_id;
-- non pairwise comparison for different tables it is used
select last_name,manager_id,department_id
from employees where manager_id in(select manager_id from employees where employee_id in(174,180))
and 
department_id  in(  -- pair wise comparison
 select department_id 
from employees 
where employee_id in (174,180)) -- multirow multi column subquery
order by department_id;
-- hme voh employees chahiye jinki salary kisi bhi department ki avg salary se zyada ho 
-- select avg(salary) 
-- from employees
-- group by department_id;  -- single row multiple column query
-- select last_name,salary
-- from employees where salary > any 
-- (select avg(salary) 
-- from employees
-- group by department_id)
-- order by salary
-- hme voh employees chahiye jinki salary apne hi department ki avg salary se zyada ho 
-- in line view i.e; made (table) dynamically at the run time
select last_name,salary,e.department_id,deptavg.avgsal
from employees e
join
(select department_id,avg(salary) as avgsal -- in line view i.e; temporaray table and physical table k bich m hmne join lagaya hai
from employees 
group by department_id)  deptavg
on(e.department_id=deptavg.department_id)
and e.salary>deptavg.avgsal;
-- inner query help lati hai outer query se fir main query se output generate krti hai
-- co related subquery 
 -- outpur m did ki requirement hogi jo hr baar hr rowm avg salary nikaleghi
 select last_name,salary,department_id
 from employees outeremp 
 where salary >(select avg(salary) from employees where s



