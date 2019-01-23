<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	GuestbookVo vo = new GuestbookVo();
	vo.setName(request.getParameter("name"));
	vo.setPassword(request.getParameter("password"));
	vo.setMessage(request.getParameter("message"));
	GuestbookDao dao = new GuestbookDao();
	dao.insert(vo);
	response.sendRedirect("/guestbook1");
%>