<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>

	<tr>
		<td><a href="<%=basePath%>/jsp/book_add.jsp">增加图书</a></td>
	</tr>
	<tr>
		<td><a href="<%=basePath%>/jsp/book_edit.jsp">编辑图书</a></td>
	</tr>
	<tr>
		<td><a href="<%=basePath%>/jsp/book_list.jsp">图书列表</a></td>
	</tr>
	<tr>
		<td><a href="<%=basePath%>/jsp/book_delete.jsp">删除图书</a></td>
	</tr>
</body>
</html>
