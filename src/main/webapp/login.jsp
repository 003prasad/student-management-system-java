<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="card">
	<h2> Admin Login</h2>
	<p> Please Login to continue</p>
	
	<%
		if (request.getParameter("error") != null)
		{
	%>
	<p style="color:red;"> Invalid UserName or PassWord</p>
	<% } %>
	
	<form action="login" method="post">
	<div class="form-group">
		<input type="text" name="username" placeholder="UserName" required>
	</div>
	<div class="form-group">
		<input type="password" name="password" placeholder="Password" required>
	</div>
	
	<input type="submit" value="Login" class="btn">
	
	</form>
</div>
</body>
</html>