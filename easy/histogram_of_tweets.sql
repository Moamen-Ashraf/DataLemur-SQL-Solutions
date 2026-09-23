-- Problem: Histogram of Tweets
-- Difficulty: easy
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-09-23

WITH count_tweets AS
(SELECT user_id, 
       COUNT(tweet_id) AS tweet_bucket
FROM tweets
WHERE EXTRACT(YEAR FROM tweet_date) = 2022
GROUP BY user_id)

SELECT tweet_bucket,
       COUNT(user_id) AS user_num
FROM count_tweets
GROUP BY tweet_bucket;
