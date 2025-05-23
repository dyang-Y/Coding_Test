-- 코드를 작성해주세요

 select ID,
    Case
        when size_of_colony <= 100 then 'LOW'
        when size_of_colony > 100 and size_of_colony <= 1000 then 'MEDIUM'
        when size_of_colony > 1000 then 'HIGH'
        else size_of_colony
    End as SIZE
from ECOLI_DATA
order by ID;