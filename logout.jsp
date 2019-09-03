

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
session.invalidate();
out.println("alert('로그아웃');");
response.sendRedirect("index.jsp");
%>
