package service;

import java.util.List;

import com.wgh.dao.TbGoodsDao;

import entity.TbGoods;

public class TbGoodsService {
	TbGoodsDao dao = new TbGoodsDao();
	//查询特价前2个
	public List<TbGoods> queryTopSaleGoods(){
		TbGoods goods = new TbGoods();
		goods.setTopNum(2);
		goods.setSale(1);
		return dao.queryGoodsByCondition(goods);
	}
	//查询销售排行前4个
	public List<TbGoods> queryTopNewGoods(){
		TbGoods goods = new TbGoods();
		goods.setTopNum(4);
		goods.setNewGoods(1);
		return dao.queryGoodsByCondition(goods);		
	}
	//根据id查询商品
	public TbGoods queryGoodsById(Integer id) {
		return dao.queryGoodsById(id);
	}
}
