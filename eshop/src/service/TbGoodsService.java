package service;

import java.util.List;

import com.wgh.dao.TbGoodsDao;

import entity.TbGoods;

public class TbGoodsService {
	TbGoodsDao dao = new TbGoodsDao();
	//��ѯ�ؼ�ǰ2��
	public List<TbGoods> queryTopSaleGoods(){
		TbGoods goods = new TbGoods();
		goods.setTopNum(2);
		goods.setSale(1);
		return dao.queryGoodsByCondition(goods);
	}
	//��ѯ��������ǰ4��
	public List<TbGoods> queryTopNewGoods(){
		TbGoods goods = new TbGoods();
		goods.setTopNum(4);
		goods.setNewGoods(1);
		return dao.queryGoodsByCondition(goods);		
	}
	//����id��ѯ��Ʒ
	public TbGoods queryGoodsById(Integer id) {
		return dao.queryGoodsById(id);
	}
}
