-- Write your query below

select
    ps.first_name
    , ps.last_name
    , ad.city
    , ad.state
from person ps
left join address ad
    on ps.person_id = ad.person_id