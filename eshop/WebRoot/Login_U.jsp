<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.wgh.DB.connDB"%>
<%@ page import="com.wgh.DB.chStr"%>
<%
connDB conn=new connDB();
chStr chStr=new chStr();
String username=chStr.chStr(request.getParameter("username"));//�˴�������б���ת�����������������û���ʱ����������
try{
	ResultSet rs=conn.executeQuery("select * from tb_Member where username='"+username+"' and freeze=0");
	if(rs.next()){
		String PWD=request.getParameter("PWD");
		if(PWD.equals(rs.getString("password"))){
			session.setAttribute("username",username);
			response.sendRedirect("index.jsp");
		}else{
			out.println("<script language='javascript'>alert('��������û�������������������Ա��ϵ!');window.location.href='index.jsp';</script>");
		}
	}else{
			out.println("<script language='javascript'>alert('��������û�����������󣬻������˻��Ѿ������ᣬ�������Ա��ϵ!');window.location.href='index.jsp';</script>");
	}
}catch(Exception e){
	out.println("<script language='javascript'>alert('���Ĳ�������!');window.location.href='index.jsp';</script>");
}
conn.close();
%>
