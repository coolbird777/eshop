<%@ page contentType="text/html; charset=gb2312" language="java"%>
<html>
<head>
<title>Go�������̳�</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="CSS/style.css" rel="stylesheet">
<script src="JS/check.jsp"></script>
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
        <td width="93" height="33" background="images/shop_12.gif"></td>
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
    </table>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="189" valign="top">
		  <form action="register_deal.jsp" method="post" name="myform">
		  <table width="100%"  border="0" cellspacing="-2" cellpadding="-2">
            <tr>
              <script language="javascript">
						   function openwin(UID){
						   if (UID==""){
								alert("�������û���!");
								myform.username.focus();
								return;
						   }
						   var str="checkUserName.jsp?username="+UID;
						   window.showModalDialog(str,"","dialogWidth=300px;dialogHeight=150px;status=no;help=no;scrollbars=no");
						   }
			    </script>
              <td width="18%" height="30" align="center">�� �� ����</td>
              <td width="82%" class="word_grey"><input name="username" type="text" maxlength="20">
                <span class="word_orange">*</span> <span class="word_orange">[</span><a href="#" onClick="openwin(myform.username.value)">����û���</a><span class="word_orange">]</span></td>
            </tr>
            <tr>
              <td height="28" align="center">��ʵ������</td>
              <td height="28"><input name="truename" type="text" maxlength="10">
                <span class="word_orange">*</span></td>
            </tr>
            <tr>
              <td height="28" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;�룺</td>
              <td height="28"><input name="pwd" type="password" size="20" maxlength="20">
                <span class="word_orange">*</span></td>
            </tr>
            <tr>
              <td height="28" align="center">ȷ�����룺</td>
              <td height="28"><input name="pwd1" type="password" size="20" maxlength="20">
                <span class="word_orange">*</span> </td>
            </tr>
            <tr>
              <td height="28" align="center">���ڳ��У�</td>
              <td><input name="city" type="text"></td>
            </tr>
            <tr>
              <td height="28" align="center">��ϵ��ַ��</td>
              <td class="word_grey"><input name="address" type="text"size="50"></td>
            </tr>
            <tr>
              <td height="28" align="center">�������룺</td>
              <td class="word_grey"><input name="postcode" type="text" size="20"></td>
            </tr>
            <tr>
              <td height="28" align="center">֤�����룺</td>
              <td><input name="cardno" type="text">
              <span class="word_orange">*</span></td>
            </tr>
            <tr>
              <td height="28" align="center">֤�����</td>
              <td><input name="cardtype" type="radio" class="noborder" value="���֤" checked>
      ���֤&nbsp;
      <input name="cardtype" type="radio" class="noborder" value="����֤">
      ����֤
      <input name="cardtype" type="radio" class="noborder" value="ѧ��֤">
      ѧ��֤</td>
            </tr>
            <tr>
              <td height="28" align="center">��ϵ�绰��</td>
              <td><input name="tel" type="text"></td>
            </tr>
            <tr>
              <td height="28" align="center" style="padding-left:10px">Email��</td>
              <td class="word_grey"><input name="email" type="text" size="50">
                <span class="word_orange">*</span></td>
            </tr>

            <tr>
              <td height="34">&nbsp;</td>
              <td class="word_grey"><input name="Button" type="button" class="btn_grey" value="ȷ������" onClick="check()">
                  <input name="Submit2" type="reset" class="btn_grey" value="������д">
                  <input name="Submit22" type="button" class="btn_grey" value="����" onClick="window.location.href='index.jsp'">
              </td>
            </tr>
          </table>
		  </form>
		  </td>
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
<%//conn.close();%>
