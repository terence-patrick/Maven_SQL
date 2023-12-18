select
	rating,
	rental_duration,
	replacement_cost,
	count(title) AS films_with_this_rental_duration
from 
	film
group by 
	rating,
    	replacement_cost,
    	rental_duration;
