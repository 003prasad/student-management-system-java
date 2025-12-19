<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Students</title>
   
   
    <style>
      table {
    width: 100%;
    border-collapse: collapse;
}

th {
    background-color: #2980b9;
    color: white;
}

th, td {
    padding: 10px;
    text-align: center;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

    </style>
</head>
<body>

<h2>Student List</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Course</th>
        <th colspan="2">Action</th>
    </tr>

<%
    List<String[]> students = (List<String[]>) request.getAttribute("students");
    if (students != null) {
        for (String[] s : students) {
%>
    <tr>
        <td><%= s[0] %></td>
        <td><%= s[1] %></td>
        <td><%= s[2] %></td>
        <td><%= s[3] %></td>
        
        <td> 
			<a href="deleteStudent?id=<%= s[0] %>" onclick="return confirm('Are you sure?')">Delete</a>        </td>
        <td>
        	<a href="editStudent.jsp?id=<%= s[0] %>&name=<%= s[1] %>&email=<%= s[2] %>&course=<%= s[3] %>">Edit</a>
        </td>
    </tr>
<%
        }
    }
%>

</table>

<br>
<a href="index.jsp">Back to Home</a>

</body>
</html>
