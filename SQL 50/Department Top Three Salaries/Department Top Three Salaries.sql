SELECT   d.name department, employee, salary
  FROM   (SELECT   e.departmentId,
                   e.name employee,
                   e.salary salary,
                   DENSE_RANK ()
                      OVER (PARTITION BY e.departmentId
                            ORDER BY e.salary DESC)
                      AS salary_rank
            FROM   Employee e) e,
         department d
 WHERE   e.departmentId = d.id AND e.salary_rank <= 3