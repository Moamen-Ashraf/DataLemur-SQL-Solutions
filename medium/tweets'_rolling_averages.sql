-- Problem: Tweets' Rolling Averages
-- Difficulty: medium
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-09-28

WITH tweet_sum AS 
(SELECT user_id,
        tweet_date,
       SUM(tweet_count::DECIMAL) OVER(PARTITION BY user_id ORDER BY tweet_date) AS cum_sum,
       ROW_NUMBER() OVER(PARTITION BY user_id ORDER BY tweet_date) AS rn
FROM tweets)

SELECT user_id,
       tweet_date,
       ROUND(
         (cum_sum - COALESCE(LAG(cum_sum, 3) OVER(PARTITION BY user_id), 0)) 
          / LEAST(rn, 3), 2
       ) AS rolling_avg_3d
FROM tweet_sum;
