select name Customers
from customers
where ID not IN (select customerID from orders) 
order by name;