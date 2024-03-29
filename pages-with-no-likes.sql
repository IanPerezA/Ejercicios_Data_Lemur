/*
Assume you're given two tables containing data about Facebook Pages
 and their respective likes 
(as in "Like a Facebook Page").

Write a query to return the IDs of the Facebook pages that have zero likes.
 The output should be sorted in ascending order based on the page IDs.
*/
SELECT DISTINCT pages.page_id FROM pages
left  JOIN  page_likes
on pages.page_id=page_likes.page_id
WHERE page_likes.page_id is null
ORDER BY pages.page_id ASC ;
