select employee_id, department_id
from Employee 
where primary_flag = 'Y'
OR employee_id in (select employee_id
  from employee
  having count(employee_id) = 1
  group by employee_id)