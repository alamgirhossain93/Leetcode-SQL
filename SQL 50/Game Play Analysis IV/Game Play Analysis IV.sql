/* Write your PL/SQL query statement below */
select round(avg(fraction),2) fraction 
from (select case when A2.player_id is not null then 1.00 else 0.00 end fraction,
row_number()over(partition by A1.player_id order by A1.event_date ) id
from Activity A1 left join Activity A2 
on A1.player_id =A2.player_id
and A1.event_date =A2.event_date -1
) t where id=1