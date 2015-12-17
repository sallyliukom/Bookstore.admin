<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bookInfo" class="com.bookstore.model.bookInfo"></jsp:useBean>
	<jsp:setProperty property="*" name="bookInfo"/>
	<jsp:useBean id="bookServer" class="com.bookstore.service.bookInfoservice"></jsp:useBean>
<%
/* out.print(bookInfo.getBookname());
out.print(bookInfo.getBookprice()); */
if (bookServer.addBook(bookInfo))
	out.print("success");
	else
		out.print("failure");
%>
</body>
</html>