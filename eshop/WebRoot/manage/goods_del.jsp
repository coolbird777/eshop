<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.wgh.DB.connDB"%>
<%@ page import="com.wgh.DB.chStr"%>
<%
connDB conn=new connDB();
chStr chStr=new chStr();
String PID="";
String goodsname="";
String superType="";
String subType="";
String introduce="";
String picture="";
float price=(float)0.0;
float nowprice=(float)0.0;
int sale=0;
int newgoods=0;
PID=request.getParameter("ID");
if (PID!=null && PID!=""){
	int ID=Integer.parseInt(PID);
	ResultSet rs=conn.executeQuery("select * from V_goods where ID="+ID);
	if(!rs.next()){
		out.println("<script lanuage='javascript'>alert('���Ĳ�������1!');window.location.href='index.jsp';</script>");
	}else{
		superType=rs.getString("superType");	
		subType=rs.getString("subType");	
		goodsname=rs.getString("goodsname");
		introduce=rs.getString("introduce");
		price=rs.getFloat("Price");		
		nowprice=rs.getFloat("nowPrice");		
		picture=rs.getString("picture");
		newgoods=rs.getInt("newgoods");		
		sale=rs.getInt("sale");
	}
%>
<html>
<head>
<title>Go�������̳Ǻ�̨����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../CSS/style.css" rel="stylesheet">
</head>
<body>
<table width="777" height="192"  border="0" align="center" cellpadding="0" cellspacing="0" class="tableBorder">
<tr>
  <td>
<jsp:include page="banner.jsp"/>
<table width="777" height="288"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="182" valign="top"><table width="100%" height="431"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top" background="../images/manage_02.gif"><jsp:include page="navigation.jsp"/></td>
      </tr>
    </table></td>
    <td align="center" valign="top"><table width="100%" height="120"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top" background="../images/manage_center_goodsdel.gif"><table width="100%" height="36"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="98%" align="right"><a href="superType.jsp">[ <img src="../images/list.gif" width="11" height="13">&nbsp;�������Ϣ����]</a>&nbsp;<a href="subType.jsp">[ <img src="../images/list.gif" width="11" height="13">&nbsp;С������Ϣ����]</a>&nbsp;<a href="goods_add.jsp">[ <img src="../images/list.gif" width="11" height="13">&nbsp;�����Ʒ��Ϣ]</a></td>
            <td width="2%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table>
      <table width="92%" height="192"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td valign="top">
   			 <form action="goods_del_deal.jsp" method="post" name="form1">
			    <table width="100%"  border="0" align="center" cellpadding="-2" cellspacing="-2" bordercolordark="#FFFFFF">
                  <tr>
                    <td width="14%" height="27">&nbsp;��Ʒ���ƣ�</td>
                    <td height="27" colspan="3">&nbsp;
					<input name="ID" type="hidden" id="ID" value="<%=ID%>">
                      <%=goodsname%>
                      &nbsp;&nbsp;                    </td>
                    </tr>
                  <tr>
                    <td height="27">&nbsp;�������ࣺ</td>
                    <td width="31%" height="27">&nbsp;<%=superType%></td>
                    <td width="13%" height="27"> &nbsp;����С�ࣺ</td>
                    <td width="42%" height="27">&nbsp;<%=subType%></td>
                  </tr>
                  <tr>
                    <td height="16">&nbsp;ͼƬ�ļ���</td>
                    <td height="27" colspan="3">&nbsp;
                       <%=picture%></td>
                    </tr>
                  <tr>
                    <td height="27" align="center">�������ۣ�</td>
                    <td height="27">&nbsp;<%=price%>(Ԫ)</td><td height="27" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;�ۣ� </td>
                    <td height="27">&nbsp;<%=nowprice%>(Ԫ)</td>
                  </tr>
                  <tr>
                    <td height="45">&nbsp;�Ƿ���Ʒ��</td>
                    <td>&nbsp; <%if(newgoods==0){out.print("������Ʒ");}
					else{out.print("����Ʒ");}
					%></td>
                    <td>&nbsp;�Ƿ��ؼۣ�</td>
                    <td><%if(sale==0){out.print("�����ؼ���Ʒ");}
					else{out.print("���ؼ���Ʒ");}
					%></td>
                  </tr>
                  <tr>
                    <td height="103">&nbsp;��Ʒ��飺</td>
                    <td colspan="3"><span class="style5">&nbsp; </span>
                        <%=introduce%></td>
                  </tr>
                  <tr>
                    <td height="38" colspan="4" align="center">
                        <input name="Submit" type="submit" class="btn_grey" value="ȷ��ɾ��">
                        &nbsp;
                        <input name="Submit3" type="button" class="btn_grey" value="����" onClick="JScript:history.back()">                    </td>
                  </tr>
                </table>
			  </form>
          </td>
        </tr>
      </table>
      <table width="100%" height="46"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td background="../images/manage_06.gif">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
<table width="777"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="54" align="center"><jsp:include page="copyright.jsp"/></td>
  </tr>
</table>
</td>
</tr>
</table>
</body>
</html>
<%}else{
	out.println("<script language='javascript'>alert('���Ĳ�������!');window.location.href='index.jsp';");
}%>