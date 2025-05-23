-- 코드를 작성해주세요

select ID, 
    Case
        when P_rank <= 0.25 then 'CRITICAL'
        when P_rank <= 0.5 then 'HIGH'
        when P_rank <= 0.75 then 'MEDIUM'
        else 'LOW'
    End as COLONY_NAME
from (select ID,
        percent_rank() over(order by size_of_colony DESC) as P_rank
    from ECOLI_DATA) as ecoil_table
order by ID
;
