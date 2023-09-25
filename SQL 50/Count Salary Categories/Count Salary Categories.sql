select category, sum (NVL(accounts_count,0)) accounts_count
 from (select 'Low Salary' category , (case when income < 20000 then 1 else 0 end ) accounts_count
from Accounts 
union all
select 'Average Salary' category , (case when income between  20000  and 50000 then 1 else 0 end ) accounts_count
from Accounts 
union all
select 'High Salary' category , (case when income > 50000 then 1 else 0 end ) accounts_count
from Accounts )
group  by category