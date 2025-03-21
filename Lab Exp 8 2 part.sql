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
