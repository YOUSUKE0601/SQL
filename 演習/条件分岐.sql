select
	p.id product_id,
    p.name name,
	sum(product_qty),
     case
		when sum(product_qty) >= 20 then 'A'
        when sum(product_qty) >= 10 then 'B'
		else 'C' 
	end product_rank
from
	products p
left outer join
	order_details od
on 
	p.id = od.product_id
group by
	p.id
order by
	product_rank;