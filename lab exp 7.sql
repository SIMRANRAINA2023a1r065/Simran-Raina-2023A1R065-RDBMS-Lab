use hr;
select e.first_name, d.department_name
from employees e join departments d
on(e.department_id= d.department_id );
-- use right outer join
select e.first_name, d.department_name
from employees e right outer join departments d
on(e.department_id= d.department_id );-- yah voh departments hai jisme koe employees nhi hai
-- use left outer join for showing 

select e.first_name,e.last_name,d.department_name
from employees e left outer join departments d
on(e.department_id= d.department_id )
union
select e.first_name,e.last_name,d.department_name
from employees e right outer join departments d
on(e.department_id= d.department_id );
-- to show full name
select concat(e.first_name," ",e.last_name) fullname,d.department_name
from employees e left outer join departments d
on(e.department_id= d.department_id )
union
select concat(e.first_name," ",e.last_name)fullname,d.department_name
from employees e right outer join departments d
on(e.department_id= d.department_id );




