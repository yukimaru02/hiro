<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>test</title>
</head>
<body>
	<h1>― 勤怠情報管理システム ―</h1>
	<h2>ホーム</h2>
	<br/>
	<form:form>
		<input type="submit" class="menu" name="Input_work_time" value="当月の勤怠管理画面へ" />
		<input type="submit" class="menu" name="check_work_time" value="勤怠確認画面へ" />
	</form:form>




	<p>ログイン成功！</p>
	<p>${loginModel.user_id}</p>
	<!--  -->
	<%@ page import = "hiro.shitanda.yuki.entity.*" %>
	<%
		Login login = (Login)session.getAttribute("loginModel");
		out.println("Loginセッション" + login.getUser_id() + ", " + login.getPassword());
		out.println(login);
	%>

</body>
</html>
