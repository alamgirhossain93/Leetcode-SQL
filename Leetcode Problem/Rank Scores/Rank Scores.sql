select a.score ,(select count(distinct score) 
                from scores b
                where b.score>=a.score) as "rank" 
from scores a 
order by a.score desc