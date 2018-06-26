<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<td>书名</td><td>作者</td><td>价格</td><td>类型</td><td colspan="2">操作</td>
	</tr>
	<c:forEach items="${list }" var="book">
		<tr>
			<td>${book.bookName}</td>
			<td>${book.author}</td>
			<td>${book.price}</td>
			<td>${book.bookTypeInfo.bookTypeName}</td>
			<td><a href="toEditBook?id=${book.id }">编辑</a></td>
			<td><a href="delBook?id=${book.id }">删除</a></td>
		</tr>
	</c:forEach>
</table>
<a href="toaddBook">新增</a>
</body>
</html>