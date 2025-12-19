<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>

<div class="card">
    <h2>Add Student</h2>
    <p>Enter student details</p>

    <form action="addStudent" method="post">

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" required>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" required>
        </div>

        <div class="form-group">
            <label>Course</label>
            <input type="text" name="course" required>
        </div>

        <input type="submit" value="Add Student" class="btn">

    </form>

    <a href="index.jsp" class="back-link">Back to Home</a>
</div>

</body>
</html>
