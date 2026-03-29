-- Write your query below
select name
from customers cs
left join orders od 
    on cs.id = od.customer_id
where od.customer_id is null;