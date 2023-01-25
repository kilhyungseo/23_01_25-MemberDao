<%@page import="com.hyungseo.exe.MemberDao"%>
<%@page import="com.hyungseo.exe.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
</head>
<body>
	<%
		String sessionId = (String)session.getAttribute("memberId");
		MemberDao dao = new MemberDao();
		MemberDto dto = dao.getMemberInfo(sessionId);
	%>
	<h2>회원 정보 수정</h2>
	<hr>
	<form action="modifyOk.jsp">
		아이디 : <input type="text" name="id" value="<%= dto.getId() %>" readonly="readonly"><br><br>
		비밀번호 : <input type="password" name="pw" value="<%= dto.getPassword()%>"><br><br>
		이름 : <input type="text" name="name" value="<%= dto.getName()%>"><br><br>
		이메일 : <input type="text" name="email" value="<%= dto.getEmail()%>"><br><br>
		가입일 : <input type="text" name="jointime" value="<%= dto.getJointime() %>" readonly="readonly"><br><br>
		<input type="submit" value="정보수정">
		<input type="button" value="취소" onclick="javacript:window.location='main.jsp'">
	</form>
	
</body>
</html>