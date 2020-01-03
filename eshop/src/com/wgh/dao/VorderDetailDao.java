package com.wgh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.wgh.DB.BaseDao;

import entity.VorderDetail;

public class VorderDetailDao {
	//获取全部所有内容，倒序排列
	public List<VorderDetail> queryAll(){
		List<VorderDetail> myList = new ArrayList<VorderDetail>();
		String sql = "select GoodsID,GoodsName, sum(number) as sumNum from V_order_detail group by GoodsName,GoodsID order by sumNum desc";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BaseDao dao = null;
		try {
			dao = new BaseDao();
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				VorderDetail detail = new VorderDetail();
				detail.setGoodsId(rs.getInt("goodsId"));
				detail.setGoodsName(rs.getString("goodsName"));
				detail.setSumNum(rs.getInt("sumNum"));
				myList.add(detail);
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
