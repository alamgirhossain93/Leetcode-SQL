select name  employee
from employee e
where salary > (select salary from employee
     where id = e.managerid)
