-- Problem: Average Review Ratings
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-04-01

SELECT EXTRACT(month FROM submit_date) AS mth,
       product_id AS product,
       ROUND(AVG(stars), 2) AS avg_stars
FROM reviews
GROUP BY product_id, mth
ORDER BY mth;
