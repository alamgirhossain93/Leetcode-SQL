/* Write your PL/SQL query statement below */
select to_char(activity_date , 'rrrr-mm-dd')day , count(DISTINCT user_id ) active_users 
from Activity 
where  activity_date between '2019-06-28' and '2019-07-28' 
group by activity_date 
order by  activity_date