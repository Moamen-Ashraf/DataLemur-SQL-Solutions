-- Problem: Patient Support Analysis (Part 1)
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-07-28

SELECT COUNT(*)
FROM (
    SELECT policy_holder_id
    FROM callers
    GROUP BY policy_holder_id
    HAVING COUNT(DISTINCT case_id) > 2
) AS t;
