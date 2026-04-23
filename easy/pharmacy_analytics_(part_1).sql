-- Problem: Pharmacy Analytics (Part 1)
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-04-23

SELECT drug,
       total_sales - cogs AS total_profit
FROM pharmacy_sales
ORDER BY total_profit DESC
LIMIT 3;
