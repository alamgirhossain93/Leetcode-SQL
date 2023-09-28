select product_name   , unit   
from (select product_name, sum(unit) unit
      from products p, orders o
      where p.product_id = o.product_id
      and o.order_date like '2020-02%'
      group by  product_name
      )    

      where unit >= 100