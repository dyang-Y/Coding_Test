-- 코드를 작성해주세요
# select i.item_id, item_name, rarity
# from (select * from ITEM_INFO where rarity = 'rare') as i
# join (select * from item_tree where parent_item_id is not null) as t
# on t.item_id = i.item_id
# order by t.item_id DESC;

select item_id, item_name, rarity
from item_info
where item_id in (select item_id from item_tree where parent_item_id in (select item_Id from ITEM_INFO where rarity = 'rare'))
order by item_id DESC;
# select item_id from item_info where rarity = 'RARE'

# t.parent_item_id = i.item_id

# select ITEM_TREE.ITEM_ID, ITEM_NAME, RARITY
# from (select * from (select * from ITEM_INFO where rarity = 'rare') as i where item_id in (select PARENT_ITEM_ID from ITEM_TREE where parent_item_id is not null)) as item_table
# right outer join ITEM_TREE
# on item_table.ITEM_ID = ITEM_TREE.PARENT_ITEM_ID