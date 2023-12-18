select
	rental_duration,
    count(title) AS films_with_this_rental_duration
from film
group by rental_duration;