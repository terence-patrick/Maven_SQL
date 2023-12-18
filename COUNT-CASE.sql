-- select
-- 	store_id,
-- count(case when `active` = 1 and store_id = 1 then active
-- 	else null
-- 	end) as active,
-- count(case when `active` = 1 and store_id = 2 then active
-- 	else null
-- 	end) as active,
-- count(case when `active` = 0 and store_id = 1 then 'inactive'
-- 	else null
--     end) as inactive,
-- count(case when `active` = 0 and store_id = 2 then 'inactive'
-- 	else null
--     end) as inactive
-- from customer
-- group by store_id

-- i couldn't figure this out and had to ask ChatGPT. here is its answer. :(
SELECT
    store_id,
    COUNT(CASE WHEN `active` = 1 THEN 1 END) AS active,
    COUNT(CASE WHEN `active` = 0 THEN 1 END) AS inactive
FROM customer
WHERE store_id IN (1, 2)  -- Add this line to filter only store_id 1 and 2
GROUP BY store_id;

-- I apologize for any confusion. In the modified query I provided, the "1" inside the COUNT function with CASE represents a placeholder value. In this context, it's not actually counting the number "1"; it's used to count the number of rows that meet the condition.

-- Here's how it works:

-- CASE WHEN active = 1 THEN 1 END is a conditional statement. When the condition active = 1 is met for a particular row, it evaluates to "1"; otherwise, it evaluates to NULL.
-- The COUNT function counts the number of non-null values. So, when the condition is met, it counts "1," and when the condition is not met, it counts NULL.
-- As a result, you get the count of rows where the condition is true (i.e., where active = 1) as the 'active' count and the count of rows where the condition is false (i.e., where active = 0) as the 'inactive' count.

-- This approach allows you to count rows based on a specific condition using the COUNT and CASE combination.

-- ChatGPT
-- Certainly, I'd be happy to explain the WHERE store_id IN (1, 2) clause for you.

-- In SQL, the IN keyword is used to filter rows based on a specified list of values. In this case, store_id is the column you're filtering on, and (1, 2) is the list of values you're filtering for.

-- Here's how it works:

-- store_id is a column in your table that contains store identifiers or numbers.
-- IN is a SQL operator that allows you to specify a list of values within parentheses. It checks if the value in the specified column (in this case, store_id) matches any of the values in the list.
-- (1, 2) is the list of values you want to match against. In this context, it means you want to retrieve rows where the store_id is either 1 or 2.
-- So, when you use WHERE store_id IN (1, 2), you're telling the SQL database to include only those rows where the store_id is either 1 or 2 in the result set. This is a convenient way to filter for specific values when you have a list of them.

-- In your original query, this clause ensures that you're only considering data for store_id 1 and 2 in the calculation of 'active' and 'inactive' counts.

-- ANSWER GIVEN IN THE MAVEN CLASS
SELECT
    store_id,
    COUNT(CASE WHEN `active` = 1 THEN customer_id ELSE NULL END) AS active,
    COUNT(CASE WHEN `active` = 0 THEN customer_id ELSE NULL END) AS inactive
FROM customer
GROUP BY store_id;