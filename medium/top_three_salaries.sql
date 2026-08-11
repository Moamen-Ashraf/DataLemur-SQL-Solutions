-- Problem: Top Three Salaries
-- Difficulty: medium
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-08-11

SELECT 
    department_name, 
    name, 
    salary
FROM (
    SELECT 
        D.department_name,
        E.name, 
        E.salary,
        DENSE_RANK() OVER (
            PARTITION BY D.department_name 
            ORDER BY E.salary DESC
        ) AS RN
    FROM employee E 
    JOIN department D 
        ON E.department_id = D.department_id
) T
WHERE RN <= 3
ORDER BY 
    department_name, 
    salary DESC, 
    name;
