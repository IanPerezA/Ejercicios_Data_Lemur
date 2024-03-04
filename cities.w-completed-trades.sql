SELECT u.city, count(t.status) as total_orders 
FROM users u
inner join trades  t
ON u.user_id=t.user_id
GROUP BY u.city,t.status
HAVING t.status = 'Completed'
ORDER BY total_orders DESC
limit 3;