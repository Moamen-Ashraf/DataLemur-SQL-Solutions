-- Problem: Unfinished Parts
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-03-14

SELECT part, assembly_step 
FROM parts_assembly
WHERE finish_date IS NULL;
