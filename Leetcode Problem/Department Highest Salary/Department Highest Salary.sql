SELECT   c.Department, c.Employee, c.Salary
  FROM   (SELECT   d.NAME Department,
                   e.NAME Employee,
                   e.Salary Salary,
                   RANK ()
                      OVER (PARTITION BY d.NAME
                            ORDER BY Salary DESC)
                      RANK
            FROM   Employee e, DEPARTMENT d
           WHERE   e.DEPARTMENTID = d.ID) c
 WHERE   RANK = 1