<%@page import="com.bookstore.model.adminTable" %>
<%@page import="com.bookstore.service.adminservice" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
adminTable admin = (adminTable)session.getAttribute("admin");
if(admin==null)
{
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%}%>
