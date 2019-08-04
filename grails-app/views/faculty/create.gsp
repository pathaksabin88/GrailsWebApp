<html>
<head>
    <meta name="layout" content="main">
    <title>Create Faculty</title>
</head>
<body>
<br><br>
<g:uploadForm controller="faculty" action="save" onsubmit="return validateFacultyForm();">
    <div class="form-group">
        <label for="name">Name</label>
        <input type="text" class="form-control" id="name" placeholder="Full Name" name="name">
    </div>
    <div class="form-group">
        <label for="address">Address</label>
        <input type="text" class="form-control" id="address" placeholder="Address" name="address">
    </div>
    <div class="form-group">
        <label for="department">Department</label>
        <input type="text" class="form-control" id="department" placeholder="Department" name="department">
    </div>
    <div class="form-group">
        <label for="contactNumber">Contact Number</label>
        <input type="text" class="form-control" id="contactNumber" placeholder="Contact Number" name="contactNumber">
    </div>
    <input type="submit" class="btn btn-primary" value="Create">
</g:uploadForm>

</body>
</html>