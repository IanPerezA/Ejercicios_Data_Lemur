SELECT DISTINCT pages.page_id FROM pages
left  JOIN  page_likes
on pages.page_id=page_likes.page_id
WHERE page_likes.page_id is null
ORDER BY pages.page_id ASC ;
