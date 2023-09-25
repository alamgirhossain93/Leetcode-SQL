SELECT class
FROM Courses
HAVING COUNT(student) >= 5
GROUP BY class ;