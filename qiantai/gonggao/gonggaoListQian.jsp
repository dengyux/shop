<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <LINK href="<%=path %>/css/css.css" type=text/css rel=stylesheet>
  </head>
  
  <BODY text=#000000  leftMargin=0 topMargin=0>
	<div class="wrap"> 
		<TABLE  cellSpacing=0 cellPadding=0 width="100%" align=center border=0  background="<%=path %>/img/reservation01.gif">
				<TR height="90">
					<TD align="center">
					    <jsp:include flush="true" page="/qiantai/inc/incTop1.jsp"></jsp:include> 
					</TD>
				</TR>
		</TABLE>
		
		
		<jsp:include flush="true" page="/qiantai/inc/incTop2.jsp"></jsp:include>

        <TABLE class=MainTable style="MARGIN-TOP: 0px" cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
				    
					<TD class=Side vAlign=top align=right width="75%">
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TR>
									<TD class=head  colspan="2">
										<SPAN class=TAG>新闻公告</SPAN>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5" colspan="2"></TD>
								</TR>
								<c:forEach items="${requestScope.gonggaoList}" var="gonggao" end="5">
						          <tr>
						             <td align="left">
						                 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
                                         <a href="<%=path %>/gonggao?type=gonggaoDetailQian&id=${gonggao.id}" title="">${gonggao.title}</a>
                                     </td>
                                      <td align="right">${gonggao.shijian}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                      </td>
						          </tr>
						     </c:forEach>
								<TR align="left">
									<TD height="5"   colspan="2"></TD>
								</TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
		<jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
    </div>
  </BODY>
</html>
