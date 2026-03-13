-- Problem: Data ScienceSkills
-- Platform: DataLemur (PostgreSQL)
-- Pushed: 2026-03-13T22:42:50.884Z

SELECT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(*) = 3
ORDER BY candidate_id;
