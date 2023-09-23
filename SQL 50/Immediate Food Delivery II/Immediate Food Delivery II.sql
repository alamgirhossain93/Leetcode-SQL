select round(sum(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END ) *100 / count(customer_id)  ,2)immediate_percentage 
from Delivery 
where (customer_id, order_date) in (select distinct customer_id, min(order_date) from Delivery group by customer_id)
order by customer_id