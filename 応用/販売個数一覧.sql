/* すべての商品について、販売個数一覧を出す */
select 
	p.id,
    p.name,
    sum(od.product_qty) num
from 
	products p
left outer join
	order_details od
on p.id = od.product_id
group by p.id;