package test;

import java.util.List;

import com.wgh.DB.BaseDao;

import entity.VorderDetail;
import service.VorderDetailService;

public class VorderDetailTest {

	public static void main(String[] args) {
		BaseDao.fileName="src/connDB.properties";
		
		VorderDetailService service = new VorderDetailService();
		List<VorderDetail> myList = service.queryAll();
		for (VorderDetail vorderDetail : myList) {
			System.out.println(vorderDetail.getGoodsId()+":\t"+vorderDetail.getGoodsName());
		}

	}

}
