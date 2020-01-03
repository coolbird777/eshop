package test;

import com.wgh.DB.BaseDao;

import entity.TbGoods;
import service.TbGoodsService;

public class TestTbGoods {

	public static void main(String[] args) {
		BaseDao.fileName="src/connDB.properties";
		TbGoodsService service = new TbGoodsService();
		TbGoods goods = service.queryGoodsById(32);
		System.out.println(goods.getId()+":"+goods.getGoodsName());

	}

}
