-- Write your query below
with cte as (
select
    cs.customer_id,
    cs.customer_name,
    STRING_AGG(distinct od.product_name, ',' order by od.product_name) products
from customers cs
inner join orders od
    on cs.customer_id = od.customer_id
group by cs.customer_id, cs.customer_name
)
select
    customer_id, customer_name
from cte
where products like 'A,B%' and products not like 'A,B,C%'
order by customer_name
;