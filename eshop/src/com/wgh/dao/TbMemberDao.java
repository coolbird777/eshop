package com.wgh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.wgh.DB.BaseDao;

import entity.TbMember;

public class TbMemberDao {
	
	public TbMember memberLogin(TbMember member) {
		TbMember mem = null;
		//BaseDao.fileName="src/connDB.properties";
		BaseDao dao = null;
		try {
			dao = new BaseDao();
		} catch (Exception e) {
			e.printStackTrace();
		}
		String sql = "select * from tb_Member where username=? and passWord=? and freeze=0";
		Connection conn = dao.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getUsername());
			pstmt.setString(2, member.getPassword());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				member.setId(rs.getInt(1));
				member.setTrueName(rs.getString("trueName"));
				mem = member;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		dao.closeConn(conn, pstmt, rs);
		return mem;
	}
}
