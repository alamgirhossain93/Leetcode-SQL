select customer_id
from Customer
group by customer_id
having COUNT(DISTINCT product_key) = (SELECT COUNT (product_key) FROM Product)
order by customer_id;