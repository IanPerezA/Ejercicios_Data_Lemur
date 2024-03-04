SELECT 
    user_id, 
    MAX(post_date::DATE) - MIN(post_date::DATE) AS days_between /* se castea a tipo fecha*/
    FROM posts
    WHERE EXTRACT(year FROM post_date)=2021 
    GROUP BY user_id
    HAVING COUNT(post_id)>1;
