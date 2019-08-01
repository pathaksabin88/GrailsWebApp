<%@ page import="grailswebapp.UserRole" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>User List</title>
    <script>
        $(document).ready(function() {
            var table = $('#userTable').DataTable();
            $( table.table().container() ).removeClass( 'form-inline' );
        } );
    </script>
</head>
<body>
<br><br>
&nbsp;&nbsp;<a class="btn btn-primary btn-lg" href="${createLink(controller: "user", action: "create")}">Add New User</a>
<br><br>
<table id="userTable">
    <thead>
        <tr>
            <th>Full Name</th>
            <th>Email</th>
            <th>Username</th>
            <th>Role</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <g:each in="${userList}" var="user">
            <tr>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.username}</td>
                <td>${UserRole.findByUser(user).role.authority}</td>
                <td><a href="${createLink(controller: 'user', action: 'delete', params: [id: user.id])}">Delete</a></td>
            </tr>
        </g:each>
    </tbody>
</table>

</body>
</html>