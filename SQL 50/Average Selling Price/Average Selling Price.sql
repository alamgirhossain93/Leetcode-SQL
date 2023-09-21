/* Write your PL/SQL query statement below */
select a.product_id, NVL(round(sum(s.units* a.price)/sum(nvl(s.units,0)),2),0) average_price
from prices  a LEFT JOIN unitssold  s
ON a.product_id = s.product_id
and NVL(s.purchase_date,a.end_date)  between a.start_date  and a.end_date
group by a.product_id
order by a.product_id;