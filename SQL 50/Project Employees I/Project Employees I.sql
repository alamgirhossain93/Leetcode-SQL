/* Write your PL/SQL query statement below */
select p.project_id  , round (sum(e.experience_years ) / count(p.project_id), 2) average_years 
from Employee e , Project  p
where   e.employee_id  = p.employee_id 
group by p.project_id
order by p.project_id ;

