select u.name, sum(t.amount) balance
from Users u , Transactions t
where u.account = t.account
group by u.name
having sum(t.amount) > 10000
order by name ;