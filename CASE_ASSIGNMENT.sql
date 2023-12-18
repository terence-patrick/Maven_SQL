select
	first_name,
    last_name,
case
	when store_id = '1' AND `active` = 1 then 'store 1 active'
    when store_id = '1' AND `active` = 0 then 'store 1 inactive'
    when store_id = '2' AND `active` = 1 then 'store 2 active'
    when store_id = '2' AND `active` = 0 then 'store 2 inactive'
    else 'uh oh'
end as
	store_and_status
from
	customer;