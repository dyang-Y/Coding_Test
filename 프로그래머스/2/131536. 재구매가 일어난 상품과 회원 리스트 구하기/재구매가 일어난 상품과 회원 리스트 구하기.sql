-- 코드를 입력하세요
# select *
# from online_sale;

SELECT user_id, product_id
from online_sale
group by user_id, product_id
having count(*) > 1
order by user_id ASC , product_id DESC;