-- Problem: Average Post Hiatus (Part 1)
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-03-19

WITH user_days AS (
    SELECT user_id,
    (post_date::date - LAG(post_date::date) OVER(PARTITION BY user_id ORDER BY post_date)) AS days_between
    FROM posts
    WHERE EXTRACT(YEAR FROM post_date) = 2021
)

SELECT user_id,
      SUM(days_between) AS days_between
FROM user_days
GROUP BY user_id
HAVING SUM(days_between) IS NOT NULL
ORDER BY days_between
