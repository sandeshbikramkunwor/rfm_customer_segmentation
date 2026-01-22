-- Pareto analysis

select *,
case when cum_percent<=80 then 'Important_customer'
else 'Regular_Customer'
end Pareto_Analysis
from(
select *,
round(sum(monetary) over(order by monetary desc)/sum(monetary) over()*100,2) cum_percent
from(
select customer_id, customer_name,
sum(order_amount) Monetary
from sales
group by customer_id, customer_name)t)t