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
        </tr>
        </thead>
        <tbody>
            <g:each in="${facultyList}" var="faculty">
                <tr>
                    <td>${faculty.name}</td>
                    <td>${faculty.address}</td>
                    <td>${faculty.department}</td>
                    <td>${faculty.contactNumber}</td>
                </tr>
            </g:each>
        </tbody>
    </table>
    <br>
    <br>
    </body>
</html>