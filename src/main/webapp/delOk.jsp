<%@page import="com.hyungseo.exe.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body>
	<%
		String sessionId = (String)session.getAttribute("memberId");
		MemberDao dao = new MemberDao();
		int delResult = dao.delOk(sessionId);
		if(delResult == 1){
			session.invalidate();
	%>
			<script type="text/javascript">
			alert('회원탈퇴성공');
			document.location.href="login.jsp";
			</script>	
	<%			
		}else{ //삭제 실패
	%>
			<script type="text/javascript">
			alert('회원탈퇴 실패');
			history.go(-1); //이전 페이지로 이동
			</script>	
	<%		
		}
	%>
</body>
</html>