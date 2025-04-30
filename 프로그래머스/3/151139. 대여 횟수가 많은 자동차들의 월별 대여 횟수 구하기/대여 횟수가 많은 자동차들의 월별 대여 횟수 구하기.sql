-- 코드를 입력하세요
SELECT extract(MONTH from start_date) as MONTH, CAR_ID, count(car_id) as RECORDS
from car_rental_company_rental_history
where car_id in (select car_id from car_rental_company_rental_history where start_date between '2022-08-01' and '2022-10-31' group by car_id having count(*) >= 5)
and start_date between '2022-08-01' and '2022-10-31'
group by month, car_id
order by MONTH, car_id DESC;

# select extract(MONTH from start_date) as MONTH, CAR_ID, count(car_id) as RECORDS
# from car_rental_company_rental_history
# where and start_date between '2022-08-01' and '2022-10-31'
# group by CAR_ID
# order by MONTH, CAR_ID DESC;

# select extract(MONTH from start_date) as month
# from car_rental_company_rental_history;

# select *
# from car_rental_company_rental_history
# group by car_id