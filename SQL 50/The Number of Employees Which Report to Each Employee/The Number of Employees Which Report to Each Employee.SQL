 SELECT   e.employee_id,
           e.name,
           r.reports_count,
           r.average_age
    FROM      Employees e  join 
              (  SELECT   reports_to,
                          COUNT (reports_to) reports_count,
                          ROUND (AVG (age), 0) average_age
                   FROM   Employees
               GROUP BY   reports_to
               HAVING   COUNT (employee_id) >= 1) r
      ON  e.employee_id = r.reports_to
ORDER BY   e.employee_id