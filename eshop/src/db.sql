select top 2 ID,GoodsName,price,nowprice,picture from tb_goods where sale=1 order by INTime desc

select top 4 ID,GoodsName,nowprice,introduce,picture from tb_goods where newGoods=1 order by INTime desc

select top 5 * from tb_bbs order by INTime desc

select GoodsID,GoodsName, sum(number) as sumNum from V_order_detail group by GoodsName,GoodsID order by sumNum desc

select ID,GoodsName,Introduce,nowprice,picture 
from tb_goods 
where ID=32