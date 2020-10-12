<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.div{
	width: 100%;
	height:1050px;
	background-image: url("../img/success.jpg");
	background-size: 100% 100%;
	padding: 0;
}

</style>
</head>
<div class="div">
	<h1>用户${msg}注册成功，三秒后跳转到登录页面</h1>
	<meta http-equiv="refresh" content="3; url=${pageContext.request.contextPath}/toLogin" >
</div>
</html>