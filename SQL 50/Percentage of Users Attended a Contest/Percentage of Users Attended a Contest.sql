/* Write your PL/SQL query statement below */
select r.contest_id ,round( count(r.contest_id) * 100 / (select count(u.user_id)
from Users u ), 2) percentage 
from Register r
group by r.contest_id 
order by    percentage desc,  r.contest_id 