-- Problem: Page With No Likes
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-03-13

SELECT P.page_id
FROM pages P LEFT JOIN page_likes L
ON P.page_id = L.page_id 
WHERE L.liked_date IS NULL
ORDER BY P.page_id;
