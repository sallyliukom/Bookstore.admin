<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="islogin.jsp"></jsp:include>
<body>
<form method="post" action="inputStuInfo_result.jsp">
<table bgColor="#c0c0c0">
<tr><td colspan="2">Input Book Information</td></tr>
<tr><td>name</td><td><input type="text" name="bookname"/></td></tr>
<tr><td>author</td><td><input type="text" name="bookauthor"/></td></tr>
<tr><td>price</td><td><input type="text" name="bookprice"/></td></tr>
<tr><td>ISBN</td><td><input type="text" name="bookISBN"/></td></tr>
<tr><td>category<select name="category">
	<option>Arts</option>
	<option>Biographies</option>
	<option>Cookbooks</option>
</select></td></tr>
<tr><td>img</td><td><input type="text" name="bookimg"/></td></tr>
<tr><td>description</td><td><input type="text" name="bookdescription"/></td></tr>
</table>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
</form>
</body>
</html>