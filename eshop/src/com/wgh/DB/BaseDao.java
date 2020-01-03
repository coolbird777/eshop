package com.wgh.DB;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class BaseDao {
	public static String fileName;
	
	public BaseDao() throws Exception {
		if(fileName==null || "".equals(fileName)) {
			//this.setFileName(fileName);
			throw new Exception("fileName没有初始化，请设置fileName值");
		}
	}
	//在进行编写的时候需要首先初始化fileName
	private void setFileName(String myfileName) {
		fileName = myfileName;
	}
	
	public Connection getConnection() {
		Connection conn = null;
		Properties prop = new Properties();	
		try {
			prop.load(new FileInputStream(fileName));
			String driverName = prop.get("DB_CLASS_NAME").toString();
			String url= prop.getProperty("DB_URL").toString();
			String username = prop.getProperty("DB_USER");
			String userpwd = prop.getProperty("DB_PWD");
			Class.forName(driverName);
			conn = DriverManager.getConnection(url, username, userpwd);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public void closeConn(Connection conn,PreparedStatement pstmt,ResultSet rs) {
		if(rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(pstmt!=null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
