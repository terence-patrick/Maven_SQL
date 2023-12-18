SELECT
	replacement_cost,
	COUNT(film_id) AS num_films,
    AVG(rental_rate) AS avg_price,
    MIN(rental_rate) AS min_price,
    MAX(rental_rate) AS max_price
FROM film
GROUP BY
	replacement_cost
ORDER BY
	replacement_cost desc;