package com.wgh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.wgh.DB.BaseDao;

import entity.TbGoods;

public class TbGoodsDao {
	
//动态查询
//	select top 2 ID,GoodsName,price,nowprice,picture from tb_goods where sale=1 order by INTime desc
//	select top 4 ID,GoodsName,nowprice,introduce,picture from tb_goods where newGoods=1 order by INTime desc
	public List<TbGoods> queryGoodsByCondition(TbGoods goods) {
		String sql ="select top "+goods.getTopNum()+" * from tb_goods where 1=1 ";
		if(goods.getSale()!=null) {
			sql += " and sale=1 ";
		}else if(goods.getNewGoods()!=null) {
			sql += " and newGoods=1 ";
		}		
		sql += " order by INTime desc";
/////////////////////////////////////////////////////////////////////
		List<TbGoods> myList = new ArrayList<TbGoods>();	
		
		Connection conn= null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BaseDao dao = null;
		try {
			dao = new BaseDao();
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TbGoods mygoods = new TbGoods();
				mygoods.setId(rs.getInt("id"));
				mygoods.setGoodsName(rs.getString("goodsName"));
				mygoods.setIntroduce(rs.getString("introduce"));
				mygoods.setNewGoods(rs.getInt("newGoods"));
				mygoods.setNowPrice(rs.getDouble("nowPrice"));
				mygoods.setPicture(rs.getString("picture"));
				mygoods.setPrice(rs.getDouble("price"));
				mygoods.setSale(rs.getInt("sale"));
				myList.add(mygoods);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dao.closeConn(conn, pstmt, rs);
		}
		
		if(myList.size()==0) {
			myList = null;
		}
		return myList;
	}

//根据ID找商品详情
	public TbGoods queryGoodsById(Integer id) {
		TbGoods goods = null;
		String sql = "select ID,GoodsName,Introduce,nowprice,picture from tb_goods where ID=?";
		BaseDao dao = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			dao = new BaseDao();
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				goods = new TbGoods();
				goods.setId(rs.getInt("id"));
				goods.setPicture(rs.getString("picture"));
				goods.setGoodsName(rs.getString("goodsName"));
				goods.setNowPrice(rs.getDouble("nowPrice"));
				goods.setIntroduce(rs.getString("introduce"));
				//picture
				//goodsName
				//nowprice
				//introduce
				//goodsID
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dao.closeConn(conn, pstmt, rs);
		}
		return goods;
	}
}
