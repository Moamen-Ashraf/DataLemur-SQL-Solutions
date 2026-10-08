-- Problem: Supercloud Customer
-- Difficulty: medium
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-10-08

SELECT customer_id
FROM customer_contracts c JOIN products p
ON c.product_id = p.product_id
GROUP BY c.customer_id 
HAVING COUNT(DISTINCT p.product_category) >= 3
