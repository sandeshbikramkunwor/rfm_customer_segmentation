

select customer_id, customer_name,
datediff(day, max(order_date), '2026-01-22') Recency,
count(order_id) Frequency,
sum(order_amount) Monetary
from sales
group by customer_id, customer_name)