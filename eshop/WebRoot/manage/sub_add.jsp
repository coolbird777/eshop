<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.wgh.DB.connDB"%>
<%@ page import="com.wgh.DB.chStr"%>
<%
connDB conn=new connDB();
ResultSet rs=conn.executeQuery("select * from tb_superType order by ID Desc");
%>
<html>
<head>
<title>Go�������̳Ǻ�̨����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../CSS/style.css" rel="stylesheet">
</head>
<script language="javascript">
function mycheck(){
	if (form1.typename.value==""){
		alert("������С�������ƣ�");form1.typename.focus();return;
	}
	form1.submit();
}
</script>
<body  onLoad="clockon(bgclock)">  
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
        <td valign="top" background="../images/manage_center_subAdd.gif"><table width="100%" height="36"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="98%" align="right"><a href="subType.jsp">[ <img src="../images/list.gif" width="11" height="13">&nbsp;С������Ϣ����]</a></td>
            <td width="2%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table>
      <table width="92%" height="192"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td valign="top">
   			  <form action="subType_add_deal.jsp" method="post" name="form1">
			    <table width="100%"  border="0" align="center" cellpadding="-2" cellspacing="-2" bordercolordark="#FFFFFF">
                  <tr>
                    <td height="50">ѡ���������ࣺ</td>
					<td height="50"><select name="superid">
					<%
					int id=0;
					String typename="";
					while(rs.next()){
					id=rs.getInt("ID");
					typename=rs.getString("typename");
					%>
					  <option value="<%=id%>"><%=typename%></option>
					  <%}%>
					  </select></td>
                  </tr> 
				  <tr>
                    <td width="17%" height="50">С�������ƣ�</td>
                    <td width="83%" height="50"><input name="typename" type="text" id="typename" size="60"></td>
                  </tr>
                  <tr align="center">
                    <td height="38" colspan="3">
                        <input name="Button" type="button" class="btn_grey" value="����" onClick="mycheck()">
&nbsp;                        
<input name="Submit2" type="reset" class="btn_grey" value="����">
                        &nbsp;
                        <input name="Submit3" type="button" class="btn_grey" value="����" onClick="JScript:window.location.href='superType.jsp';">                    </td>
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
