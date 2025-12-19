<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>

<div class="card">
    <h2>Edit Student</h2><br>
    <p>Update student information</p><br>
    <form action="updateStudent" method="post">
        <input type="hidden" name="id" value="<%= request.getParameter("id") %>">

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" value="<%= request.getParameter("name") %>" required>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" value="<%= request.getParameter("email") %>" required>
        </div>

        <div class="form-group">
            <label>Course</label>
            <input type="text" name="course" value="<%= request.getParameter("course") %>" required>
        </div>

        <input type="submit" value="Update Student" class="btn btn-danger">
    </form>

    <a href="viewStudents" class="back-link">Back to Students</a>
</div>

</body>
</html>
