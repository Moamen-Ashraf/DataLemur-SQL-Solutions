-- Problem: Well Paid Employees
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-04-03

SELECT E.employee_id, E.name
FROM employee E
INNER JOIN employee M
ON E.manager_id = M.employee_id
WHERE E.salary > M.salary;
