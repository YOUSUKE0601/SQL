/* 平均客単価 */

select
	round(avg(amount), 0) 
from
	orders;
    