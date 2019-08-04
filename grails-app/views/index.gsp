<!doctype html>
<html>
<head>
    <title>Index Page</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="application.css"/>
</head>
<body>
<g:include view="layouts/_header.gsp"/>
<br>
<sec:ifAnyGranted roles="ROLE_ADMIN">
    <div class="text-center">
        &nbsp;
        <g:link controller="student" action="index" class="btn btn-primary btn-lg">Student List</g:link>
        &nbsp;
        <g:link controller="faculty" action="index" class="btn btn-info btn-lg">Faculty List</g:link>
        &nbsp;
        <g:link controller="user" action="index" class="btn btn-danger btn-lg">User List</g:link>
    </div>
</sec:ifAnyGranted>
<sec:ifNotLoggedIn>
    <div class="container-fluid no-padding" align="center">
        <div class="row">
            <div class="col-md-12">
                <asset:image src="userImage.jpg"/>
            </div>
        </div>
    </div>
</sec:ifNotLoggedIn>
</body>
</html>
