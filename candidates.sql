SELECT candidate_id from candidates
WHERE skill in ('Python','Tableau', 'PostgreSQL')
GROUP BY candidate_id 
HAVING COUNT(DISTINCT skill) = 3
ORDER BY candidate_id ASC;