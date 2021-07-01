select 
	concat(last_name, 'さん'),
    email
from 
	users
where
	gender = 2;