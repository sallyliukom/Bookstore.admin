<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="com.bookstore.model.bookInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="islogin.jsp"></jsp:include>
<body>
<jsp:useBean id="bookInfo" class="com.bookstore.model.bookInfo"></jsp:useBean>
<jsp:useBean id="bookServer" class="com.bookstore.service.bookInfoservice"></jsp:useBean>
<%
List books = bookServer.queryAllbook();
//out.print(books.size());
Iterator iter = books.iterator();
%>
<table>
<tr><td>name</td><td>author</td><td>price</td><td>ISBN</td><td>category</td><td>img</td><td>description</td></tr>
<%
int i = 0;
while(iter.hasNext())
{
	bookInfo book = (bookInfo)iter.next();
	%>
	<tr>
	<td><%=book.getBookname() %></td>
	<td><%=book.getBookauthor() %></td>
	<td><%=book.getBookprice() %></td>
	<td><%=book.getBookISBN() %></td>
	<td><%=book.getCategory() %></td>
	<td><%=book.getBookimg() %></td>
	<td><%=book.getBookdescription() %></td>
	</tr>
	<%
	i++;
}
%>
</table>
</body>
</html>