SELECT
	*
FROM
	payment
WHERE
	amount > 5.00
	or customer_id = '42'
    OR customer_id = '53'
	OR customer_id = '60'
    OR customer_id = '75'
;