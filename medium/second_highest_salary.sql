-- Problem: Second Highest Salary
-- Difficulty: medium
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-08-19

SELECT salary AS second_highest_salary
FROM  (SELECT *,
              RANK() OVER(ORDER BY salary DESC) as RN
       FROM employee) t 
WHERE RN = 2;
