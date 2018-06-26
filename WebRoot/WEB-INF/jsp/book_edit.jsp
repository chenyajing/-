<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-1.9.0.min.js"></script>
<script>
$(document).ready(function (){
	$("#sub").click(function (){
		var book =$("#BookInfo").serializeArray(); 
		var str = JSON.stringify(book);
		alert(str);
			$.post("editBook",book,function(tip){
				if(tip=='succeed'){
				 window.location = "bookList";
				}else{
					alert("修改失败");
				}
			});
	});
});
</script>
</head>
<body>
<h2>修改图书${book.bookTypeInfo.id }</h2>
<form id="BookInfo" action="" method="post">
<table>
	<tr>
		<td>书名</td><td>作者</td><td>价格</td><td>图书类型</td>
	</tr>
	<tr>
		<td style="display: none;"><input name="id" value="${book.id }" type="text"></td>
		<td><input name="bookName" value="${book.bookName }" type="text"></td>
		<td><input name="author" value="${book.author}" type="text"></td>
		<td><input name="price" value="${book.price}" type="text"></td>
		<td>
			<select  name="bookTypeInfo.id">
			<c:forEach  items="${list}" var="bookType" >	
				<c:choose>
					<c:when test="${bookType.id ==book.bookTypeInfo.id }">
						<option   value="${bookType.id }" selected="selected"> ${bookType.bookTypeName }</option>
					</c:when>
					<c:otherwise>
						<option   value="${bookType.id }" >${bookType.bookTypeName }</option>	
					</c:otherwise>
				</c:choose>
			</c:forEach>
			</select>
		</td>
	</tr>
	<tr align="center">
		<td colspan="4"><input id="sub" type="button" value="提交"></td>
	</tr>
</table>
</form>
</body>
</html>