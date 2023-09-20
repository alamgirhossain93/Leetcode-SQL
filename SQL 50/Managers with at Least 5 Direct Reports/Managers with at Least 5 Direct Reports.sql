select name from Employee 
where id in  (select managerId from employee group by  managerId 
HAVING count(*) >= 5 ) 
order by name;