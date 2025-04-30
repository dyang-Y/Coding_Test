-- 코드를 작성해주세요
select ID, LENGTH
from fish_info
where LENGTH > 10
order by LENGTH DESC, ID
limit 10