<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="admin" class="com.bookstore.model.adminTable"></jsp:useBean>
	<jsp:useBean id="adminservice"
		class="com.bookstore.service.adminservice"></jsp:useBean>
	<jsp:setProperty property="*" name="admin" />
	<%
		//admin.setName("aa");
		out.print(admin.getName());
		out.print(admin.getPassword());
		if (adminservice.valiadmin(admin))
		//out.print("success");out.print("error");

		{
			session.setAttribute("admin",admin);		
	%>
	
	<jsp:forward page="main.jsp"></jsp:forward>
	<%
		}

		else {
	%>
	<jsp:forward page="index.jsp"></jsp:forward>

	<%
		}
	%>
</body>
</html>