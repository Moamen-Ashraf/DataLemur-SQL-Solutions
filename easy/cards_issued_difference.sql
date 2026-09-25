-- Problem: Cards Issued Difference
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-09-25

SELECT card_name,
       MAX(issued_amount) - MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC;
