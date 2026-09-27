-- Problem: Sending vs. Opening Snaps
-- Difficulty: medium
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-09-27

WITH age_activity_time AS(
SELECT age_bucket,
       activity_type,
       SUM(time_spent) AS time_spent
FROM activities ac
      LEFT JOIN age_breakdown ag ON ac.user_id = ag.user_id
WHERE activity_type IN ('open', 'send')
GROUP BY age_bucket, activity_type),

age_tot_time AS
(SELECT *,
       SUM(time_spent) OVER(PARTITION BY age_bucket) AS tot_time
FROM age_activity_time)

SELECT age_bucket,
       MAX(CASE WHEN activity_type='send' THEN ROUND(time_spent / tot_time* 100, 2) END) AS send_perc,
       MAX(CASE WHEN activity_type='open' THEN ROUND(time_spent / tot_time *100, 2) END) AS open_perc
FROM age_tot_time
GROUP BY age_bucket
