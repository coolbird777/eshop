package service;

import java.util.List;

import com.wgh.dao.TbBbsDao;

import entity.TbBbs;

public class TbBbsService {
	TbBbsDao dao = new TbBbsDao();
	//��ȡ���յ������е�ǰ5����Ϣ
	public List<TbBbs> queryTopResult(){
		return dao.queryTopResult();
	}
}
