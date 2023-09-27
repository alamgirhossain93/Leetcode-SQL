SELECT
    id
    , CASE
        WHEN mod(id, 2) = 0 THEN LAG(student) OVER(ORDER BY id ASC)
        ELSE LEAD(student, 1, student) OVER(ORDER BY id ASC)
      END  as student
FROM seat