-- RFM analysis

select *,
case when r_analysis >=4 and f_analysis >=4 and m_analysis>=4 then 'Champions'
when r_analysis>=3 and f_analysis>=3 then 'Loyal_customer'
when  r_analysis>=3 then 'Potential_loyalist'
when r_analysis<=2 and f_analysis<=2 then 'At_risk'
else 'Lost_customer'
end Customer_segment
from(
select *,
ntile(5) over(order by recency desc) r_analysis,
ntile(5) over(order by frequency desc ) f_analysis,
ntile(5) over(order by monetary desc) m_analysis
from(
select customer_id, customer_name,
datediff(day, max(order_date), '2026-01-22') Recency,
count(order_id) Frequency,
sum(order_amount) Monetary
from sales
group by customer_id, customer_name)t)t