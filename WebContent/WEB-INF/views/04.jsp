<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>el jstl</h1>

	<h2>객체 접근</h2> <!-- 03.jsp에선 파라미터값을 뽑은 거였다면 이번은 attribute를 통해 -->

	<h3>자바 문법</h3>
	
	<%
	UserVo userVo = (UserVo)request.getAttribute("userVo");
	int num = (int)request.getAttribute("num");
	String str = (String)request.getAttribute("str");	
	%>

	no = <%=userVo.getNo() %> <br>
	name = <%=userVo.getName()%> <br>
	email = <%=userVo.getEmail() %> <br>
	password = <%=userVo.getPassword() %> <br>
	gender = <%=userVo.getGender() %> <Br>
	<br>
	
	num = <%=num  %><br>
	str = <%=str  %><br>	
	<br>
	<br>
	
	<h3>el</h3>
	no = ${ requestScope.userVo.no } <br>  <!-- .name 이렇게 쓰면 자기들이 getName()모양 메소드를 만든다 -->
	name = ${ userVo.name } <br> <!-- requestScope는 생략 가능 -->
	email = ${ userVo.email } <br>
	password = ${ requestScope.userVo.password } <br>	
	gender = ${ requestScope.userVo.gender } <br>	
	<br>
	<br>

</body>
</html>