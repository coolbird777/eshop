<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%--@ page import="com.wgh.DB.connDB" --%>

<!-- c:if test="${bbsList==null }"
	jsp:forward page="queryTopBBSServlet" 	
c:if-->
<%
//connDB conn=new connDB();
//ResultSet rs_bbs=conn.executeQuery("select top 5 * from tb_bbs order by INTime desc");
//ResultSet rs_sort=conn.executeQuery("select GoodsID,GoodsName, sum(number) as sumNum from V_order_detail group by GoodsName,GoodsID order by sumNum desc");
%>
<script src="JS/check.js"></script>
<table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="83" align="center"><img src="images/shop_11.gif" width="182" height="83"></td>
      </tr>
      <tr>
        <td height="98" align="center" background="images/shop_17.gif">		  
        <!-- form name="form1" method="post" action="Login_U.jsp"-->
        <form name="form1" method="post" action="tbMemberLoginServlet">
		  <table width="100%"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="10%">&nbsp;</td>
              <td width="90%" valign="top" background="Images/index_09.gif">
			  <%--String username=(String)session.getAttribute("username");
			  if (username==null || username==""){--%>
			  <c:if test="${username==null }">
			  <table width="100%"  border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="94%" height="24">会员名
                    <input name="username" type="text" class="txt_grey" id="username" size="16"></td>
                  <td width="6%">&nbsp;</td>
                </tr>
                <tr>
                  <td height="24">密&nbsp;&nbsp;码
                    <input name="PWD" type="password" class="txt_grey" id="PWD" size="16" onKeydown="if(event.keyCode==13) form1.submit();"></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="31">
                    <input name="Button" type="button" class="btn_grey" value="注册" onClick="window.location.href='register.jsp'">
                    &nbsp;
                    <input name="Submit2" type="button" class="btn_grey" value="登录" onClick="checkU(form1)">                    <input name="Submit3" type="reset" class="btn_grey" value="重置"></td>
                  <td>&nbsp;</td>
                </tr>
              </table>
              </c:if>
			  <%--}else{--%>
			  <c:if test="${username!=null }">
                <table width="100%"  border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="94%" height="31" align="center" class="word_white">[${username}<%--=username----%>]您好!<br>您现在可以购物了!</td>
                    <td width="6%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="24" align="center"><input name="Submit22" type="button" class="btn_grey" value="修改资料" onClick="window.location.href='modifyMember.jsp';"></td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="24" align="center">
      <input name="Submit32" type="button" class="btn_grey" value="退出登录" onClick="window.location.href='logout.jsp';"></td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
                </c:if>
				<%--}--%>
				</td>
            </tr>
          </table>
		  </form></td>
      </tr>
    </table>
      <table width="100%" height="155"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><img src="images/shop_22.gif" width="182" height="58"></td>
        </tr>
        <tr>
          <td height="97" align="center" valign="top" class="tableBorder_l"><table width="88%"  border="0" cellspacing="0" cellpadding="0">
            <%--
			int ID_bbs=0;
			String title="";
			while(rs_bbs.next()){
			  ID_bbs=rs_bbs.getInt(1);
			  title=rs_bbs.getString(2);
--%>
			<c:forEach items="${bbsList }" var="data">
			<tr>
<!-- <a href="queryTbGoodsByIdServlet?ID=${data.id}">${data.title}</a> -->			
			
              <td height="24" class="tableBorder_T_dashed"><a href="javascript:void()" onclick="queryTbGoodsById(${data.id})">${data.title}</a></td>
            </tr>
            </c:forEach>
<%--			}--%>
          </table></td>
        </tr>
      </table>
      <table width="100%" height="151"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="40" background="images/shop_33.gif">&nbsp;</td>
        </tr>
        <tr>
          <td align="center" valign="top" class="tableBorder_lb"><table width="88%"  border="0" cellspacing="0" cellpadding="0">
            <%--
			int ID_sort=0;
			String goodsname="";
			while(rs_sort.next()){
			  ID_sort=rs_sort.getInt(1);
			  goodsname=rs_sort.getString(2);
--%>
			<c:forEach items="${orderDetailList}" var="data"> 
			<tr>
              <td height="20" class="tableBorder_B_dashed"><a href="javascript:void()" onclick="queryTbGoodsById(${data.goodsId})">${data.goodsName}</a></td>
            </tr>
            </c:forEach>
<%--}--%>
          </table>
            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
      </table>
