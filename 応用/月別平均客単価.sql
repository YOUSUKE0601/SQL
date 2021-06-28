/* 月別平均客単価　*/

select
	round(avg(amount), 0),
    date_format(order_time, '%Y%m') as order_year_month
from
	orders
group by
	order_year_month;