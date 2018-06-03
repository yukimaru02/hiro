<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>勤怠管理_ログイン</title>
</head>
<body>
	<h1>― 勤怠情報管理システム ―</h1>
	<h2>ログインページ</h2>
	<br/>
	<form:form modelAttribute="loginModel"> <!-- LoginControllerの@SessionAttribute や@ModelAttributeで同じ名前をつかう -->
	    <div class = "id_and_pass"> 
			<p>ユーザーID:<form:input path="user_id" />  <!-- form:input要素はHTMLの<input type = "text"＞要素を自動生成、path属性がname属性に設定される（※モデルクラスのプロパティ名と同じに） -->
			<br/>
			<br/>
			パスワード:<form:input path="password" />
			</p>
			<div class="error">${errorMessage }</div>
		</div>
		
		<input type="submit" class="log_in" value="ログイン" />
	</form:form>
	<p>
	<%@ page import="hiro.shitanda.yuki.entity.*" %>
	<%
		Login login = (Login)session.getAttribute("loginModel");
		out.println("Loginセッション" + login.getUser_id() + ", " + login.getPassword());
		
	%>
	</p>
</body>
</html>
