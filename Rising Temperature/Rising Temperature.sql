/* Write your PL/SQL query statement below */
 select slno as "id" from (select a.id as slno
from Weather a join Weather b
on a.recordDate = b.recordDate + 1 --  a.id = b.id+1
where  a.temperature > b.temperature)
order by slno; 