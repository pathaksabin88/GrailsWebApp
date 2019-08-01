<%@ page import="grailswebapp.Role" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Create User</title>
    <script>

    </script>
</head>
<body>
<br><br>

%{--<g:form controller="student" action="save">--}%
<form action="${createLink(controller: "user", action: "save")}" onsubmit="return validateUser();">
    <div class="form-group">
        <label for="name">Name</label>
        <input type="text" class="form-control" id="name" placeholder="Full Name" name="name">
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <input type="email" class="form-control" id="email" placeholder="Email" name="email">
    </div>
    <div class="form-group">
        <label for="username">Username : </label>
        <input type="text" class="form-control" id="username" placeholder="Enter Username" name="username">
    </div>
    <div class="form-group">
        <label for="password">Password : </label>
        <input type="text" class="form-control" id="password" placeholder="Password" name="password">
    </div>
    <div class="form-group">
        <label for="role">Role</label>
        <g:select name="role" id="role" from="${Role.list()}" class="form-control" optionKey="id"/>
    </div>
    <input type="submit" class="btn btn-primary" value="Create">
</form>

</body>
</html>