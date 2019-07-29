<html>
<head>
    <meta name="layout" content="main">
    <title>Create Student</title>
</head>
<body>
<br><br>

%{--<g:form controller="student" action="save">--}%
<form action="${createLink(controller: "student", action: "save")}">
    <div class="form-group">
        <label for="rollNumber">Roll Number</label>
        <input type="number" class="form-control" id="rollNumber" aria-describedby="rollNumberHelp" placeholder="Enter Roll Number" name="rollNumber">
        <small id="rollNumberHelp" class="form-text text-muted">Roll Number Must Be Unique</small>
    </div>
    <div class="form-group">
        <label for="name">Name</label>
        <input type="text" class="form-control" id="name" placeholder="Full Name" name="name">
    </div>
    <div class="form-group">
        <label for="name">Address</label>
        <input type="text" class="form-control" id="address" placeholder="Address" name="address">
    </div>
    <div class="form-group">
        <label for="name">Age</label>
        <input type="number" class="form-control" id="age" placeholder="Age" name="age">
    </div>
    <div class="form-group">
        <label for="name">Grade</label>
        <input type="text" class="form-control" id="grade" placeholder="Grade" name="grade">
    </div>
    <input type="submit" class="btn btn-primary" value="Create">
</form>

</body>
</html>