<html>
<head>
    <meta name="layout" content="main">
    <title>Edit Student</title>
</head>
<body>
<br><br>

%{--<g:form controller="student" action="save">--}%
<form action="${createLink(controller: "student", action: "update")}">
    <input type="hidden" name="id" value="${student.id}">
    <div class="form-group">
        <label for="rollNumber">Roll Number</label>
        <input type="number" class="form-control" id="rollNumber" aria-describedby="rollNumberHelp" placeholder="Enter Roll Number" name="rollNumber" value="${student.rollNumber}">
        <small id="rollNumberHelp" class="form-text text-muted">Roll Number Must Be Unique</small>
    </div>
    <div class="form-group">
        <label for="name">Name</label>
        <input type="text" class="form-control" id="name" placeholder="Full Name" name="name" value="${student.name}">
    </div>
    <div class="form-group">
        <label for="name">Address</label>
        <input type="text" class="form-control" id="address" placeholder="Address" name="address" value="${student.address}">
    </div>
    <div class="form-group">
        <label for="name">Age</label>
        <input type="number" class="form-control" id="age" placeholder="Age" name="age" value="${student.age}">
    </div>
    <div class="form-group">
        <label for="name">Grade</label>
        <input type="text" class="form-control" id="grade" placeholder="Grade" name="grade" value="${student.grade}">
    </div>
    <input type="submit" class="btn btn-primary" value="Update">
</form>

</body>
</html>