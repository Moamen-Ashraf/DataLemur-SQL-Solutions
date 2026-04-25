-- Problem: Pharmacy Analytics (Part 3)
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-04-25

SELECT  manufacturer,
        CONCAT('$', ROUND(SUM(total_sales / 1000000)), ' million') AS sale
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC;
