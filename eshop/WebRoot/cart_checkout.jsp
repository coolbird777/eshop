<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.wgh.DB.connDB"%>
<%
connDB conn=new connDB();
if(session.getAttribute("cart")==""){
	out.println("<script language='javascript'>alert('����û�й���!');window.location.href='index.jsp';</script>");
}
String Username="";
Username=(String)session.getAttribute("username");
if (Username!=""){
try{
ResultSet rs_user=conn.executeQuery("select * from tb_Member where username='"+Username+"'");
if(!rs_user.next()){
	session.invalidate();
	out.println("<script language='javascript'>alert('���ȵ�¼���ٽ��й���!');window.location.href='index.jsp';</script>");
	return;
}else{
	String Truename=rs_user.getString("Truename");
	String address=rs_user.getString("address");
	String postcode=rs_user.getString("postcode");
	String tel=rs_user.getString("tel");
%>
<script language="javascript">
function check_member(form){
	if(form.truename.value==""){
		alert("������������ʵ����!");form.truename.focus();return;	
	}
	if(form.address.value==""){
		alert("������������ϵ��ַ!");form.address.focus();return;	
	}	
	if(form.postcode.value==""){
		alert("������������������!");form.postcode.focus();return;	
	}	
	if(form.tel.value==""){
		alert("������������ϵ�绰!");form.tel.focus();return;	
	}
	form.submit();
}
</script>
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
              <td height="80" background="images/center_checkout.gif">&nbsp;</td>
              </tr>
            <tr valign="top">
              <td height="134" align="center">
<form method="post" action="cart_order.jsp" name="form_checkout">
                    <table width="100%" height="339"  border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="7%" height="26">&nbsp; </td>
                        <td height="26" colspan="2" class="word_deepgrey">ע�⣺������Ҫ�����Ƿ��ύ����������ɲ���Ҫ���鷳��</td>
                        </tr>
                      <tr>
                        <td height="26" colspan="2" align="center">�� �� ����</td>
                        <td width="74%"><input name="username" type="text" id="username" value="<%=Username%>" readonly="yes">
                          *</td>
                      </tr>
                      <tr>
                        <td height="26" colspan="2" align="center">��ʵ������</td>
                        <td><input name="truename" type="text" id="truename" value="<%=Truename%>">
                          *</td>
                      </tr>
                      <tr>
                        <td height="26" colspan="2" align="center">��ϵ��ַ��</td>
                        <td><input name="address" type="text" id="address" value="<%=address%>">
                          *</td>
                      </tr>
                      <tr>
                        <td height="26" colspan="2" align="center">�������룺</td>
                        <td><input name="postcode" type="text" id="postcode" value="<%=postcode%>">
                          *</td>
                      </tr>
                      <tr>
                        <td height="26" colspan="2" align="center">��ϵ�绰��</td>
                        <td><input name="tel" type="text" id="tel" value="<%=tel%>">
                          *</td>
                      </tr>
                      <tr>
                        <td height="26" colspan="2" align="center">���ʽ��</td>
                        <td><select name="pay" class="textarea">
      <option>���и���</option>
      <option>��������</option>
      <option>�ֽ�֧��</option>
    </select>
                          *</td>
                      </tr>
                      <tr>
                        <td height="26" colspan="2" align="center">���ͷ�ʽ��</td>
                        <td><select name="carry" class="textarea">
      <option>��ͨ�ʼ�</option>
      <option>�ؿ�ר��</option>
      <option>EMSר�ݷ�ʽ</option>
    </select>
                          *</td>
                      </tr>
                      <tr>
                        <td height="101" colspan="2" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;ע��</td>
                        <td><textarea name="bz" cols="50" rows="5" class="textarea" id="bz"></textarea></td>
                      </tr>
                      <tr align="center">
                        <td colspan="3"><input name="Button" type="button" class="btn_grey" value="�ύ" onClick="check_member(form_checkout)">
                           &nbsp;
                           <input name="Submit2" type="button" class="btn_grey" value="����" onClick="history.back(1);"></td>
                        </tr>
                    </table>
</form>
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
<%}
}catch(Exception e){
out.println(e.toString());
}
}else{
	session.invalidate();
	out.println("<script language='javascript'>alert('���ȵ�¼���ٽ��й���!');window.location.href='index.jsp';</script>");
}
%>