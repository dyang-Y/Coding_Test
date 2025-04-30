-- 코드를 입력하세요
SELECT extract(hour from DATETIME) as HOUR, count(*) as COUNT
from animal_outs
where extract(hour from DATETIME) between 9 and 19
group by HOUR
order by HOUR