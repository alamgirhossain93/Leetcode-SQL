select stock_name, sum(decode (operation , 'Sell' , price , - price ) )capital_gain_loss 
from stocks 
group by stock_name
order by stock_name ;