<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="vo.UserVo"%>
<%
List<UserVo> userList = (List<UserVo>) request.getAttribute("userList");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el jstl</h1>

	<h2>jstl 반복문</h2>

	<h3>자바 문법</h3>
	
	<h3>jstl</h3>
	<table border="1">
		<tr>
			<th>no</th>
			<th>name</th>
			<th>email</th>
			<th>index/th>
			<th>count</th>
		</tr>

		<c:forEach items="${requestScope.userList}" var="userVo" varStatus="status">

			<tr>
				<td>${ userVo.no}</td>
				<td>${ userVo.name}</td>
				<td>${ userVo.email}</td>
				<td>${ status.index }</td>
				<td>${ status.count }</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>