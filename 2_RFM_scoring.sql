


select *,
ntile(5) over(order by recency asc) r_analysis,
ntile(5) over(order by frequency desc ) f_analysis,
ntile(5) over(order by monetary desc) m_analysis
from(
select customer_id, customer_name,
datediff(day, max(order_date), '2026-01-22') Recency,
count(order_id) Frequency,
sum(order_amount) Monetary
from sales
group by customer_id, customer_name)t)