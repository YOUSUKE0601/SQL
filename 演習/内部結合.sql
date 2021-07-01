select 
	o.id order_id,
    o.order_time orders_time,
    o.amount orders_amount,
    u.id user_id,
    u.last_name last_name,
    u.first_name first_name
from 
	orders o
inner join
	users u
on 
	o.user_id = u.id
where
	prefecture_id = 13
    and order_time >= '2017-01-01 00:00:00'
    and order_time < '2017-02-01 00:00:00'
order by o.id;