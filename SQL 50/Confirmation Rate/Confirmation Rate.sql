SELECT
S.USER_ID,
ROUND((COUNT(CASE WHEN C.ACTION='confirmed' THEN 1 END)/count(*)),2)  confirmation_rate
FROM SIGNUPS S
LEFT JOIN CONFIRMATIONS C
ON S.USER_ID=C.USER_ID
GROUP BY S.USER_ID
order by confirmation_rate




-- or 

/* Write your PL/SQL query statement below */
select b.user_id, nvl(round((a.confirmation_rate/a.request),2),0) confirmation_rate
from(select user_id, sum(confirmation_rate) confirmation_rate, sum(request) request
from (select user_id, count(action) confirmation_rate , 0 request
from Confirmations 
where action = 'confirmed' 
group by user_id
union all 
select user_id , 0 confirmation_rate, count(user_id) request 
from Confirmations 
group by user_id )
group by user_id ) a right join  Signups  b
on  a.user_id = b.user_id
order by confirmation_rate