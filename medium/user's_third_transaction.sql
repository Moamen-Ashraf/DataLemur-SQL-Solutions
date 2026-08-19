-- Problem: User's Third Transaction
-- Difficulty: medium
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-08-19

SELECT user_id,
       spend,
       transaction_date
FROM (
      SELECT *,
             ROW_Number() OVER(PARTITION BY user_id ORDER BY transaction_date) as rn
      FROM transactions) t
where rn = 3;
