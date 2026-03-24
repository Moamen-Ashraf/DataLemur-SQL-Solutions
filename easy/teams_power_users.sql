-- Problem: Teams Power Users
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-03-24

SELECT sender_id,
       COUNT(*) AS message_count
FROM messages
WHERE sent_date BETWEEN '2022-08-01' AND '2022-08-31'
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2;
