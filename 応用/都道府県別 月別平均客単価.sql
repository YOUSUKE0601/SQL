/* 都道府県別・月別平均客単価 */

select
	pre.id prefecture_id,
    pre.name prefecture_name,
    date_format(o.order_time, '%Y%m') order_year_month,
    round(avg(o.amount), 0) averege_customer_spend
from
	orders o
inner join
	users u
on
	u.id = o.user_id
inner join
	prefectures pre
on
	pre.id = u.prefecture_id
group by
	prefecture_id, order_year_month
order by
	prefecture_id, order_year_month;