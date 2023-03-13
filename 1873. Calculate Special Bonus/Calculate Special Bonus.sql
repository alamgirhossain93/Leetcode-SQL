SELECT  employee_id, CASE
            WHEN MOD (employee_id, 2) <> 0 AND NAME NOT LIKE 'M%'
            THEN
               ( (salary * 100) / 100)
            ELSE
               0
         END
            bonus
  FROM   employees
  order by 1;
  