-- Problem: Compressed Mean
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-08-11

SELECT ROUND((SUM(item_count * order_occurrences) / SUM(order_occurrences))::NUMERIC, 1)
FROM items_per_order;
