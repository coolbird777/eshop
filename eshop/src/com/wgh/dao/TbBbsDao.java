package com.wgh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.wgh.DB.BaseDao;

import entity.TbBbs;

public class TbBbsDao {
	
//按照倒序选取前5条信息
	public List<TbBbs> queryTopResult(){
		
		String sql = "select top 5 * from tb_bbs order by INTime desc";
		List<TbBbs> myList = new ArrayList<TbBbs>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BaseDao dao = null;
		try {
			dao = new BaseDao();
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			//有没有 ？
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TbBbs bbs = new TbBbs();
				bbs.setId(rs.getInt("id"));
				bbs.setContent(rs.getString("content"));
				bbs.setTitle(rs.getString("title"));
				bbs.setInTime(rs.getDate("INTime"));
				myList.add(bbs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dao.closeConn(conn, pstmt, rs);
		}
		
		if(myList.size()==0) {
			myList =null;
		}
		return myList;
	}
}
