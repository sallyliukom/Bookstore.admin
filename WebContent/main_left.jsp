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
<a href="inputbookinfo.jsp" target="main_right">Input Book Info</a><br>
<a href="displaybookinfo.jsp" target="main_right">Display Book Info</a><br>
<a href="modifybookinfo.jsp" target="main_right">Modify Book Info</a><br>
<a href="deletebookinfo.jsp" target="main_right">Delete Book Info</a><br>
<a href="exit.jsp" target="main_right">Exit</a><br>
</body>
</html>