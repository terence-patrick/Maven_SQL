SELECT
	*
FROM
	payment
WHERE
	amount > 5.00
	OR customer_id IN (42,53,60,75);