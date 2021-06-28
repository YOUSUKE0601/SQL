/* 都道府県別平均客単価 */

select
	pre.id prefecture_id,
    pre.name prefecture_name,
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
	prefecture_id
order by
	prefecture_id;