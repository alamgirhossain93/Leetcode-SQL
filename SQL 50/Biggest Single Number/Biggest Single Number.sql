select max(num) num 
from (select num 
             from MyNumbers 
             having count(*) = 1
             group by num );