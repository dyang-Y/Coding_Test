-- 코드를 입력하세요
# SELECT f.sales_date, f.product_id, user_id, f.sales_amount
# from offline_sale f
# cross join online_sale n
# on f.product_id = n.product_id
# where f.sales_date like '2022-03%'

# select * from online_sale n
# join offline_sale f on f.product_id = n.product_id
# where sales_date between '2022-03-01' and '2022-03-31';

select date_format(sales_date, '%Y-%m-%d') as sales_date, product_id, null as user_id, sales_amount from offline_sale
where sales_date between '2022-03-01' and '2022-03-31'
union all
select date_format(sales_date, '%Y-%m-%d') as sales_date, product_id, user_id, sales_amount from online_sale
where sales_date between '2022-03-01' and '2022-03-31'
order by sales_date, product_id, user_id