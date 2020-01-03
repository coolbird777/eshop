package service;

import java.util.List;

import com.wgh.dao.TbBbsDao;

import entity.TbBbs;

public class TbBbsService {
	TbBbsDao dao = new TbBbsDao();
	//获取按照倒序排列的前5条信息
	public List<TbBbs> queryTopResult(){
		return dao.queryTopResult();
	}
}
