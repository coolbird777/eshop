package test;

import java.util.List;

import com.wgh.DB.BaseDao;
import com.wgh.dao.TbBbsDao;

import entity.TbBbs;

public class TestTbBbsDao {

	public static void main(String[] args) {
		BaseDao.fileName="src/connDB.properties";
		List<TbBbs> myList = new TbBbsDao().queryTopResult();
		for (TbBbs tbBbs : myList) {
			System.out.println(tbBbs.getId()+":"+tbBbs.getTitle());
		}

	}

}
