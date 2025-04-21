-- 코드를 입력하세요
SELECT title, used_goods_board.board_id, reply_id, used_goods_reply.writer_id, used_goods_reply.contents, date_format(used_goods_reply.created_date, '%Y-%m-%d') as created_date
from used_goods_board
join used_goods_reply
on used_goods_board.board_id = used_goods_reply.board_id
where used_goods_board.created_date between '2022-10-01' and '2022-10-31'
order by used_goods_reply.created_date ASC, title ASC;

# SELECT *
# from used_goods_reply
# right join used_goods_board
# on used_goods_board.board_id = used_goods_reply.board_id
# where used_goods_reply.created_date between '2022-10-01' and '2022-10-31'
# and used_goods_board.created_date between '2022-10-01' and '2022-10-31'
# order by used_goods_reply.created_date ASC, title ASC;