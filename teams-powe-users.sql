SELECT sender_id, count(message_id) as cuenta
FROM messages
WHERE EXTRACT(year from sent_date)= (2022) AND
EXTRACT(month from sent_date)= (8)
GROUP BY sender_id
ORDER BY cuenta  DESC
limit 2;