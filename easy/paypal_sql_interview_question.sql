-- Problem: PayPal SQL Interview Question
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-04-03

SELECT 
    account_id,
    SUM(CASE 
        WHEN transaction_type = 'Withdrawal' THEN -amount
        ELSE amount
    END) AS final_balance
FROM transactions
GROUP BY account_id;
