-- 코드를 작성해주세요
select extract(year from DIFFERENTIATION_DATE) as year, (max(size_of_colony) over(partition by extract(year from DIFFERENTIATION_DATE)) - size_of_colony) as year_dev, id
from ecoli_data
order by year, year_dev

# select (max(size_of_colony) - size_of_colony) as year_dev
# from ecoli_data

# select * from ecoli_data