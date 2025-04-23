-- 코드를 작성해주세요
select ITEM_INFO.item_id, item_name
from ITEM_INFO
join ITEM_TREE
on ITEM_TREE.item_id = ITEM_INFO.item_id
where parent_item_id is null
order by item_id;