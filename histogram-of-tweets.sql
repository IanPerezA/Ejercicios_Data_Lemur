WITH cont_tweet_user AS (
  SELECT user_id, COUNT(*) AS conteo_tweets
  FROM tweets
  WHERE EXTRACT(year FROM tweet_date) = 2022
  GROUP BY user_id
),
max_conteo_tweets AS (
  SELECT MAX(conteo_tweets) AS max_count
  FROM cont_tweet_user
),
frecuencia AS (
  SELECT GENERATE_SERIES(1, (SELECT max_count FROM max_conteo_tweets)) AS tweet_bucket
),
frecuencia_counts AS (
  SELECT f.tweet_bucket, COUNT(ctu.user_id) AS user_count
  FROM frecuencia f
  LEFT JOIN cont_tweet_user ctu ON f.tweet_bucket = ctu.conteo_tweets
  GROUP BY f.tweet_bucket
)
SELECT * FROM frecuencia_counts
ORDER BY tweet_bucket;