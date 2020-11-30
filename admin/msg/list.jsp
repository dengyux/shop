<%@ page language="java" import="java.util.*,java.sql.*,com.biyeseng.dao.*"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />

		<link rel="stylesheet" type="text/css" href="<%=path%>/css/base.css" />

		<script language="JavaScript" src="<%=path%>/js/public.js"
			type="text/javascript">
		</script>


	</head>

	<body background='<%=path%>/img/allbg.gif'>
		<table width="98%" border="0" cellpadding="2" cellspacing="1"
			bgcolor="#D1DDAA" align="center" style="margin-top: 8px">
			<tr bgcolor="#E7E7E7">
				<td height="14" colspan="44" background="<%=path%>/img/wbg.gif">
					&nbsp;留言管理&nbsp;
				</td>
			</tr>
			<tr align="center" bgcolor="#FAFAF1">
				<td width="10%">
					内容
				</td>

				<td width="10%">
					日期
				</td>
				<td width="10%">
					发布人
				</td>
				<td width="10%">
					回复内容
				</td>
				<td width="10%">
					操作
				</td>
			</tr>
			<%
				DB dbm = new DB();
				Connection conn = dbm.getCon();
				String queryName = request.getParameter("queryName");
				String sql = "select * from t_message";

				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();

				while (rs.next()) {
					String id = rs.getString("id");
			%>
			<tr align='center' bgcolor="#FFFFFF">
				<td bgcolor="#FFFFFF" align="center">
					<%=rs.getString("msg")%>
				</td>

				<td bgcolor="#FFFFFF" align="center">
					<%=rs.getString("date")%>
				</td>
				<td bgcolor="#FFFFFF" align="center">
					<%=rs.getString("appuser")%>
				</td>
				<td bgcolor="#FFFFFF" align="center">
					<%=rs.getString("reply")%>
				</td>
				<td bgcolor="#FFFFFF" align="center">
					<a href="<%=path%>/msg?type=msgDel&id=<%=id%>">删除</a>|
					<a href="<%=path%>/admin/msg/addMsg.jsp?id=<%=id%>">回复</a>
				</td>
			</tr>
			<%
				}
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			%>
		</table>


	</body>
</html>
