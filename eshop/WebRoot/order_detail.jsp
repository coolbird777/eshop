<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.wgh.DB.chStr"%>
<%@ page import="com.wgh.DB.connDB"%>
<!-- jsp:include page="safe.jsp"-->
<%
String username="";
username=(String)session.getAttribute("username");
if(username.equals("")){
	out.println("<script language='javascript'>alert('���ȵ�¼!');window.location.href='index.jsp';</script>");
}else{
	connDB conn=new connDB();
	if (request.getParameter("ID")!=null){
		int ID=Integer.parseInt(request.getParameter("ID"));
		ResultSet rs_main=conn.executeQuery("select * from tb_order where orderID="+ID);
		int orderID=0;
		String address="";
		String postcode="";
		String tel="";
		String bz="";
		int goodID=-1;
		String goodsname="";
		float nowprice=0;
		int number=0;
		if(rs_main.next()){
			orderID=rs_main.getInt("orderID");
			address=rs_main.getString("address");
			postcode=rs_main.getString("postcode");
			tel=rs_main.getString("tel");
			bz=rs_main.getString("bz");
			if (bz.equals("")){
				bz="��";
			}
		}
%>
<html>
<head>
<title>Go�������̳�</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="CSS/style.css" rel="stylesheet">
</head>
<body>
<table width="790"  border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
 <td class="tableBorder">
<jsp:include page="navigation.jsp"/>
<table width="790" height="236"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="182" height="182" valign="top">
	<jsp:include page="left.jsp"/>
	</td>
    <td valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="33" background="images/shop_12.gif"></td>
        <td width="505" height="33" align="right" valign="middle" background="images/shop_12.gif"><table width="100%" height="24"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="8"></td>
          </tr>
          <tr>
            <td align="right" class="word_green"><marquee direction="left" scrollamount="1" scrolldelay="1" onMouseOver="this.stop();" onMouseOut="this.start();">^_^ �˿����ã�������Ʒ���ȵ�¼ <a href="register.jsp" class="word_green">[���û�ע��]</a></marquee></td>
          </tr>
        </table></td>
        <td width="10" background="images/shop_12.gif">&nbsp;</td>
      </tr>
      <tr>
        <td width="93" height="50" background="images/shop_15.gif">&nbsp;</td>
        <td colspan="2" background="images/shop_16.gif">
		       <jsp:include page="search.jsp"/>
		</td>
      </tr>
    </table>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="189" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="80" background="images/center_orderdetail.gif">&nbsp;</td>
              </tr>
            <tr valign="top">
              <td height="134" align="center">
<table width="100%" height="272"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="97%" height="220" align="center" valign="top">
					  <table width="90%" height="131"  border="0" cellpadding="0" cellspacing="0" class="tableBorder_LTR_dashed">
                        <tr>
                          <td width="16%" style="padding:5px;">�� �� �ţ�&nbsp;<%=orderID%></td>
                          </tr>
                        <tr>
                          <td style="padding:5px;">��&nbsp;&nbsp;&nbsp;&nbsp;ַ��&nbsp;<%=address%></td>
                          </tr>
                        <tr>
                          <td style="padding:5px;">�������룺&nbsp;<%=postcode%></td>
                          </tr>
                        <tr>
                          <td style="padding:5px;">��&nbsp;&nbsp;&nbsp;&nbsp;����&nbsp;<%=tel%></td>
                          </tr>
                        <tr>
                          <td style="padding:5px;">��&nbsp;&nbsp;&nbsp;&nbsp;ע��&nbsp;<%=bz%></td>
                        </tr>
                      </table>
					  <table width="90%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#CCCCCC" class="tableBorder_dashed">
                        <tr align="center" bgcolor="#eeeeee">
                          <td width="21%" height="24">��Ʒ����</td>
                          <td width="45%">��Ʒ����</td>
                          <td width="22%">����</td>
                          <td width="12%">����</td>
                          </tr>
						<%ResultSet rs=conn.executeQuery("select * from V_order_detail where orderID="+orderID);
						while(rs.next()){
							goodID=rs.getInt("goodsID");
							goodsname=rs.getString("goodsname");
							nowprice=rs.getFloat("price");
							number=rs.getInt("number");
						%>  
                        <tr align="center">
                          <td height="27"><%=goodsname%></td>
                          <td height="27"><%=goodsname%></td>
                          <td><%=nowprice%>(Ԫ)</td>
                          <td><%=number%></td>
                          </tr>
						 <%}%>
                      </table>
					  <table width="100%" height="49"  border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td align="center"><input name="Submit" type="submit" class="btn_grey" value="����" onClick="history.back(-1)"></td>
                        </tr>
                      </table></td>
              <td width="3%" valign="top">&nbsp;</td>
            </tr>
          </table>
                 </td>
            </tr>
            <tr>
              <td height="38" align="right" background="images/center02.gif"><a href="sale.jsp"><br>
                    <br>
              </a></td>
              </tr>
          </table></td>
          </tr>
      </table></td>
  </tr>
</table>
<table width="790"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" height="78"  border="0" align="center" cellpadding="-2" cellspacing="-2">
      <tr>
        <td height="13" colspan="5"><div align="center">
          <hr width="100%" size="1">
          </div></td>
        </tr>
      <tr>
        <td width="124" height="13">&nbsp;</td>
        <td height="13" colspan="3" align="center">Go�������̳ǿͻ��������ߣ�0431-4978981��4978982 ���棺0431-4972266</td>
        <td width="141">&nbsp;</td>
      </tr>
      <tr>
        <td height="15" colspan="2">&nbsp;</td>
        <td width="464" valign="bottom" align="center"> CopyRight &copy; 2005 www.mingrisoft.com ����ʡ���տƼ����޹�˾</td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td align="center">��վ��ʹ��IE6.0�����ϰ汾 1024*768Ϊ�����ʾЧ��</td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr bgcolor="#cccccc">
        <td height="8" colspan="2"></td>
        <td height="8" align="center"></td>
        <td height="8" colspan="2"></td>
      </tr>
    </table></td>
  </tr>
</table>
</td>
</tr>
</table>
</body>
</html>
<%	}else{
		response.sendRedirect("index.jsp");
	}
}
%>
