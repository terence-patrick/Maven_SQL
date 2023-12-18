select
	film_id,
    title,
    rental_rate,
CASE
	when rental_rate >= 4.99 then 'new release'
    when rental_rate >= 2.99 then 'standard'
    else 'discounted'
END AS price_stickers
from
	film
order by price_stickers