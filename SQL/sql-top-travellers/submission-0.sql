-- Write your query below
select
    ur.name, 
    sum(case when rd.distance is null then 0 else rd.distance end) travelled_distance
from users ur
left join rides rd
    on ur.id = rd.user_id
group by ur.name
order by travelled_distance desc, ur.name asc
;