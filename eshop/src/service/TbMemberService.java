package service;

import com.wgh.dao.TbMemberDao;

import entity.TbMember;

public class TbMemberService {
	TbMemberDao dao = new TbMemberDao();
	public TbMember memberLogin(TbMember member) {
		return dao.memberLogin(member);
	}
}
