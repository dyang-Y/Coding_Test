-- 코드를 입력하세요
SELECT ingredient_type, sum(total_order) as TOTAL_ORDER
from icecream_info i
join first_half f
on i.flavor = f.flavor
group by ingredient_type
order by TOTAL_ORDER;