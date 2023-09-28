select max(salary) secondHighestSalary
from employee
where salary != (select max(salary)
                  from employee)
