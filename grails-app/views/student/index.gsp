<html>
<head>
    <meta name="layout" content="main">
    <title>Student List</title>
    <script>
        $(document).ready(function() {
            var table = $('#studentTable').DataTable();
            $( table.table().container() ).removeClass( 'form-inline' );
        } );
    </script>
</head>
<body>
<br><br>
&nbsp;&nbsp;<a class="btn btn-primary btn-lg" href="${createLink(controller: "student", action: "create")}">Add New Student</a>
<br><br>
<table id="studentTable">
    <thead>
        <tr>
            <th>Roll Number</th>
            <th>Name</th>
            <th>Address</th>
            <th>Age</th>
            <th>Grade</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <g:each in="${stdList}" var="st">
            <tr>
                <td>${st.rollNumber}</td>
                <td>${st.name}</td>
                <td>${st.address}</td>
                <td>${st.age}</td>
                <td>${st.grade}</td>
                <td><a href="${createLink(controller: "student", action: "show", params: [id:st.id])}">View</a> || <a href="${createLink(controller: "student", action: "edit", params: [id:st.id])}">Edit</a> || <a href="${createLink(controller: "student", action: "delete", params: [id:st.id])}">Delete</a></td>
            </tr>
        </g:each>
    </tbody>
</table>

</body>
</html>