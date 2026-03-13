-- Problem: Data Science Skills
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-03-13

SELECT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(*) = 3
ORDER BY candidate_id;
