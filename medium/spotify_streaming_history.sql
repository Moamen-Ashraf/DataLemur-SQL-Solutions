-- Problem: Spotify Streaming History
-- Difficulty: medium
-- Platform: DataLemur (PostgreSQL)
-- Date: 2026-10-05

WITH count_songs AS 
(SELECT user_id, song_id,
        COUNT(song_id) AS song_plays
FROM songs_weekly
WHERE listen_time < '08/05/2022'
GROUP BY user_id, song_id

UNION ALL
  
SELECT user_id, song_id, song_plays
FROM songs_history 
)

SELECT user_id,
       song_id,
       SUM(song_plays) AS song_plays
FROM count_songs
GROUP BY user_id, song_id
ORDER BY song_plays DESC
