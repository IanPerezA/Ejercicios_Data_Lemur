SELECT manufacturer,count(case WHEN (total_sales-cogs)<0 THEN 1 end) as drug_count
,abs(sum(case WHEN (total_sales-cogs)<0 THEN (total_sales - cogs)  end)) as total_loss
FROM pharmacy_sales
GROUP BY manufacturer
HAVING count(case WHEN (total_sales-cogs)<0 THEN 1 end) >0
ORDER BY total_loss DESC;