select  query_name , round(sum(rating/ position)/ count(query_name ),2) quality , 
round (sum (case when rating <3 then 1 else 0 end )*100 / count(query_name ),2) poor_query_percentage 
from Queries 
group by query_name 
order by query_name 