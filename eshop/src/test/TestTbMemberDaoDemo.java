package test;

import com.wgh.dao.TbMemberDao;

import entity.TbMember;

public class TestTbMemberDaoDemo {

	public static void main(String[] args) {
		TbMemberDao dao = new TbMemberDao();
		TbMember member = new TbMember();
		member.setUsername("wgh");
		member.setPassword("1111");
		TbMember m = dao.memberLogin(member);
		if(m==null) {
			System.out.println("��¼ʧ��");
		}else {
			System.out.println("��¼�ɹ�");
		}

	}

}
