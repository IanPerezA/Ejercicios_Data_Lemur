SELECT (d.employee_id),
(CASE WHEN sum(d.deal_size)>=s.quota then 'yes' else 'no' end) as made_quota
FROM deals d inner JOIN sales_quotas s
on d.employee_id=s.employee_id
GROUP BY d.employee_id, s.quota
ORDER BY d.employee_id asc;