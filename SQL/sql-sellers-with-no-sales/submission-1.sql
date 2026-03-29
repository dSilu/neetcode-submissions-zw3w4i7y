-- Write your query below
select
    sl.seller_name
from seller sl
left join orders od
    on sl.seller_id = od.seller_id
    and date_part('year', od.sale_date) = 2020
where od.order_id is null
order by sl.seller_name
;