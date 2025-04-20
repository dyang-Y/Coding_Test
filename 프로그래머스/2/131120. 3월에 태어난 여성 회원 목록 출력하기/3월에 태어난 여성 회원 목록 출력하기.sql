-- 코드를 입력하세요
SELECT member_id, member_name, gender, date_format(date_of_birth, '%Y-%m-%d') as date_of_birth
from MEMBER_PROFILE
where date_of_birth like '%-03-%'
and gender = 'W'
and tlno is not null;