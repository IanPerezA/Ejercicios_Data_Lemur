with cuenta as (
SELECT company_id,title,description, COUNT(*)
from job_listings
GROUP BY company_id, title,description
HAVING COUNT(*) > 1
)
SELECT count(*) FROM cuenta as duplicate_companies;