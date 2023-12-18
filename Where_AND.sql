SELECT
	*
FROM
	payment
WHERE
	customer_id <= 100 
	AND amount > 5.00
    AND payment_date > '2006-01-01';