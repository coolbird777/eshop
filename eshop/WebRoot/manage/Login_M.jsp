<%@ page contentType="text/html; charset=gb2312" language="java"%>
<html>
<head>
<title>��̨����!</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../CSS/style.css" rel="stylesheet">
<script src="../JS/check.jsp"></script>
<script type="text/javascript">
function checkM(myform){
	if(myform.manager.value==""){
		alert("���������Ա��!");myform.manager.focus();return;
	}
	if(myform.PWD.value==""){
		alert("����������!");myform.PWD.focus();return;
	}
	myform.submit();
}
</script>
</head>

<body>
      <table width="350" height="228"  border="0" align="center" cellpadding="0" cellspacing="0" background="../images/login_M.jpg" class="tableBorder">
        <tr>
          <td height="136" align="center">&nbsp;</td>
        </tr>	  
              
        <tr>
          <td height="87" align="center" valign="top"><table width="62%" height="87"  border="0" cellpadding="0" cellspacing="0">
              <form name="form1" method="post" action="Login_M_deal.jsp">
			<tr>
              <td width="95%" align="center">&nbsp;�û�����
              <input name="manager" type="text" id="manager" size="20"></td>
              </tr>
            <tr>
              <td align="center">&nbsp;��&nbsp;&nbsp;�룺
              <input name="PWD" type="password" id="PWD" size="20"></td>
              </tr>

            <tr>
              <td align="center"><input name="Submit" type="button" class="btn_grey" value="ȷ��" onClick="checkM(form1)"> &nbsp;
                <input name="Submit2" type="reset" class="btn_grey" value="����">
              &nbsp;
              <input name="Submit3" type="button" class="btn_grey" value="����" onClick="window.location.href='../index.jsp';"></td>
              </tr>
            </form>
          </table></td>
        </tr>
</table>
</body>
</html>
