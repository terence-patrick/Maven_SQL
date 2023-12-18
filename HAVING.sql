SELECT
	customer_id,
    COUNT(rental_id) AS total_rentals
FROM
	rental
GROUP BY
	customer_id
HAVING COUNT(rental_id) >= 35
