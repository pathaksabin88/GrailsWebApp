<html>
<head>
    <meta name="layout" content="main">
    <title>Edit Faculty</title>
</head>
<body>
<br><br>
<g:uploadForm controller="faculty" action="update" onsubmit="return validateFacultyForm();">
    <input type="hidden" name="id" value="${faculty.id}">
    <div class="form-group">
        <label for="name">Name</label>
        <input type="text" class="form-control" id="name" placeholder="Full Name" name="name" value="${faculty.name}">
    </div>
    <div class="form-group">
        <label for="address">Address</label>
        <input type="text" class="form-control" id="address" placeholder="Address" name="address" value="${faculty.address}">
    </div>
    <div class="form-group">
        <label for="department">Department</label>
        <input type="text" class="form-control" id="department" placeholder="Department" name="department" value="${faculty.department}">
    </div>
    <div class="form-group">
        <label for="contactNumber">Contact Number</label>
        <input type="text" class="form-control" id="contactNumber" placeholder="Contact Number" name="contactNumber" value="${faculty.contactNumber}">
    </div>
    <input type="submit" class="btn btn-primary" value="Update">
</g:uploadForm>

</body>
</html>