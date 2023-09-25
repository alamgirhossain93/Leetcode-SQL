select person_name 
from queue 
where turn = (select max(turn)
             from (SELECT turn, sum(weight) over(order by turn) max_weight 
                   from queue) a
                   where a.max_weight <=1000)