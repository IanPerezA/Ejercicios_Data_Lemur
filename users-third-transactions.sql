with sort AS(
select ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY transaction_date ASC) AS enumeration,
user_id,spend,transaction_date
from transactions
GROUP BY user_id,spend,transaction_date
ORDER BY transaction_date ASC
)
SELECT user_id,spend,transaction_date from sort
where enumeration=3;