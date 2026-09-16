-- Problem: Highest-Grossing Items
-- Difficulty: medium
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-09-16

WITH Sum_ProductSpend AS
(SELECT category,
        product,
        SUM(spend) AS total_spend
FROM product_spend 
WHERE EXTRACT(YEAR FROM transaction_date) = 2022
GROUP BY category, product)

SELECT category,
       product,
       total_spend
FROM( 
    SELECT *,
           RANK() OVER(PARTITION BY category ORDER BY total_spend DESC) AS rn 
    FROM Sum_ProductSpend
) t
WHERE rn < 3;
