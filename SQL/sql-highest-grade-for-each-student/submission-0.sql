-- Write your query below
with high_scores as (
    select
        student_id
        , max(score) score
    from exam_results
    group by student_id
)
select
    er.student_id
    , min(er.exam_id) exam_id
    , er.score
from high_scores hs
inner join exam_results er
    on hs.student_id = er.student_id
    and hs.score = er.score
group by er.student_id, er.score
order by er.student_id asc --, er.score desc, er.exam_id asc
;