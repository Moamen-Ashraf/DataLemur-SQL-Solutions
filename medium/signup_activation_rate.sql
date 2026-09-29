-- Problem: Signup Activation Rate
-- Difficulty: medium
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-09-29

SELECT
  ROUND(
    COUNT(DISTINCT t.email_id)::DECIMAL
    / (SELECT COUNT(*) FROM emails), 2 ) AS confirm_rate
FROM emails e
JOIN texts t
  ON e.email_id = t.email_id
WHERE t.signup_action = 'Confirmed';
