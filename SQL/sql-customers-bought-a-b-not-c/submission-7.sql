-- Write your query below
with cte as (
    select
        cs.customer_id,
        cs.customer_name,
        -- STRING_AGG(distinct od.product_name, ',' order by od.product_name) products
        MAX(case when od.product_name = 'A' then 1 else 0 end) has_a,
        MAX(case when od.product_name = 'B' then 1 else 0 end) has_b,
        MAX(case when od.product_name = 'C' then 1 else 0 end) has_c
    from customers cs
    inner join orders od
        on cs.customer_id = od.customer_id
    group by cs.customer_id, cs.customer_name
)
select
    customer_id, customer_name
from cte
where has_a > 0 and has_b > 0 and has_c = 0
order by customer_name
;