<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	GuestbookDao dao = new GuestbookDao();
	long no = (long)Integer.parseInt(request.getParameter("no"));
	if(dao.getPassword(no).equals(request.getParameter("password"))){
		dao.delete(no);
		response.sendRedirect("/guestbook1");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	alert("비밀번호가 일치하지 않습니다.");
	location.href="/guestbook1";
</script>
</head>
<body>

</body>
</html>