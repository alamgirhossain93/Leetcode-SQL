/* Write your PL/SQL query statement below */
select case when e.id = d.id then d.unique_id else null end  unique_id, e.name
from Employees e  , EmployeeUNI d
where e.id= d.id(+)  
order by name;