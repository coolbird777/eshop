package service;

import java.util.List;

import com.wgh.dao.VorderDetailDao;

import entity.VorderDetail;

public class VorderDetailService {
	VorderDetailDao dao = new VorderDetailDao();
	public List<VorderDetail> queryAll(){
		return dao.queryAll();
	}
}
