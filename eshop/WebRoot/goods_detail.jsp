<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- <table width="100%"  border="0" cellspacing="0" cellpadding="0">
goods详情里面真正的内容 开始 -->
    
      
        <tr>
          <td height="189" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="80" background="images/center01.gif">&nbsp;</td>
              </tr>
            <tr valign="top">
              <td height="134" align="center">
                  <table width="98%" height="79"  border="0" cellpadding="0" cellspacing="0" class="noborder">
                    <tr>
                      <td width="37%" height="95" rowspan="4" align="center"><img src="images/goods/${goods.picture }" width="184" height="119"></td>
                      <td width="63%">${goods.goodsName}</td>
                    </tr>
                    <tr>
                      <td>单价：${goods.nowPrice}(元) </td>
                    </tr>
                    <tr>
                      <td>${goods.introduce}</td>
                    </tr>
                    <tr>
                      <td><input name="Submit" type="submit" class="btn_grey" onClick="history.back(-1);" value="返回">
&nbsp;					  
						 <c:if test="${username!=null}">
							&nbsp;
						 <input name="see" type="button" class="btn_grey" onClick="window.location.href='cart_add.jsp?goodsID=${goods.id}'" value="购买">						 
						 </c:if>
						 </td>
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
     


<!-- </table> goods详情里面真正的内容 开始 -->       
 