select to_char(event_day, 'rrrr-mm-dd') day, emp_id, sum(out_time) - sum(in_time) total_time
from employees
group by event_day, emp_id
order by event_day ;