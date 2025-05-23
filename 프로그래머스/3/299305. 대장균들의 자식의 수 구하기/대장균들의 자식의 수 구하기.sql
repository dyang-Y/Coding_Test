-- 코드를 작성해주세요
# select ID, CHILD_COUNT
# from ecoil_data


select e.ID, COUNT(c.ID) AS CHILD_COUNT 
from ECOLI_DATA e
left join ECOLI_DATA c
on e.ID = c.parent_id
group by e.ID
order by e.ID