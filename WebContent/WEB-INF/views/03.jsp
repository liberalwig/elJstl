<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el jstl</h1>

	<h2>파라미터 > 자바 문법 파라미터값 꺼내 쓰기</h2>

	<%
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	int no1 = Integer.parseInt(request.getParameter("num1"));
	int no2 = Integer.parseInt(request.getParameter("num2"));
	
	%>

	id = <%= id %> <br>
	pw = <%= pw %> <br>
	name = <%= name %> <br>
	no1 = <%= no1 %> <br>
	no2 = <%= no2 %> <br>

	<br>
	<br>
	
	<h2>파라미터 > el 문법 파라미터값 꺼내 쓰기</h2>
	id = ${ param.id } <br>
	pw = ${ param.pw } <br>
	name = ${ param.name } <br>
	no1 = ${ param.num1 } <br>
	no2 = ${ param.num2 } <br>

</body>
</html>