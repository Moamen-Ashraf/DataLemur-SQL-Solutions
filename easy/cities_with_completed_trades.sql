-- Problem: Cities With Completed Trades
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-04-01

SELECT city, 
       COUNT(order_id) AS total_orders
FROM trades T INNER JOIN users U
      ON T.status = 'Completed'
WHERE T.user_id = U.user_id 
GROUP BY city
ORDER BY total_orders DESC
LIMIT 3;
