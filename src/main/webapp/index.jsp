<!DOCTYPE html>
<html>
<head>
    <title>Student Management System</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<%
    if (session.getAttribute("admin") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<div class="main-card">

    <h1>Student Management System</h1>

    <% 
        String msg = (String) request.getAttribute("msg");
        if (msg != null) {
    %>
        <div class="success"><%= msg %></div>
    <% } %>

    <a href="addStudent.jsp" class="btn">Add Student</a>
    <a href="viewStudents" class="btn">View Students</a>
    <br>
    
    <a href="logout" class="btn" style="background:#e74c3c;">Logout</a>
    

</div>

</body>
</html>
