select to_char(trans_date , 'rrrr-mm') month, country, count(*) trans_count , sum(case when state = 'approved'  then 1 else  0  end ) approved_count , sum(amount ) trans_total_amount , sum(decode(state ,'approved',amount , 0  )) approved_total_amount 
from Transactions 
group by to_char(trans_date , 'rrrr-mm'), country
order by 1;