<html>
    <head>
        <meta name="layout" content="main" />
       <title>Faculty List</title>
        <script>
            $(document).ready(function() {
                var table = $('#facultyTable').DataTable();
                $( table.table().container() ).removeClass( 'form-inline' );
            } );
        </script>
    </head>
    <body>
        <br>
        <a href="${createLink(controller: "faculty", action: "create")}" class="btn btn-info btn-lg">Add New faculty</a>
    <table id="facultyTable">
        <thead>
        <tr>
            <th>Name</th>
            <th>Address</th>
            <th>Department</th>
            <th>Contact Number</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
            <g:each in="${facultyList}" var="faculty">
                <tr>
                    <td>${faculty.name}</td>
                    <td>${faculty.address}</td>
                    <td>${faculty.department}</td>
                    <td>${faculty.contactNumber}</td>
                    <td><a href="${createLink(controller: 'faculty', action: 'edit', params: [id: faculty.id])}"><i class="fa fa-edit"></i></a> || <a href="${createLink(controller: 'faculty', action: 'delete', params: [id: faculty.id])}"><i class="fa fa-remove alert-danger"></i></a></td>
                </tr>
            </g:each>
        </tbody>
    </table>
    <br>
    <br>
    </body>
</html>