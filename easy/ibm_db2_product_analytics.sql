-- Problem: IBM db2 Product Analytics
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-09-18

WITH queries_per_employee
     AS (SELECT Count(DISTINCT q.query_id) AS unique_queries,
                e.employee_id              AS emp_id
         FROM   queries q
                RIGHT JOIN employees e
                        ON q.employee_id = e.employee_id
                           AND query_starttime >= '07/01/2023 00:00:00'
                           AND query_starttime < '10/01/2023 00:00:00'
         GROUP  BY emp_id)

SELECT unique_queries,
       Count(emp_id) AS employee_count
FROM   queries_per_employee
GROUP  BY unique_queries
ORDER  BY unique_queries
