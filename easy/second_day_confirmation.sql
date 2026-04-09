-- Problem: Second Day Confirmation
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-04-09

SELECT user_id
FROM emails JOIN texts
USING(email_id)
WHERE signup_action = 'Confirmed' AND action_date = signup_date + INTERVAL '1 DAY';
