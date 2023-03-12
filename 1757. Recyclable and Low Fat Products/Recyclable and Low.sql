select product_id
from Products
where low_fats = 'Y'
AND recyclable = 'Y'
ORDER BY  product_id ASC;