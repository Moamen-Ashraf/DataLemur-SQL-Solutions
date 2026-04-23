-- Problem: Pharmacy Analytics (Part 2)
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-04-23

SELECT manufacturer, 
       COUNT(*),
       SUM(abs(total_sales - cogs)) AS total_loss 
FROM pharmacy_sales
WHERE total_sales < cogs
GROUP BY manufacturer
ORDER BY total_loss DESC;
