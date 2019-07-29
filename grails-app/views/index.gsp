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
&nbsp;
<g:link controller="student" action="index" class="btn btn-primary btn-lg">Student Page</g:link>
&nbsp;
<g:link controller="faculty" action="index" class="btn btn-info btn-lg">Faculty Page</g:link>
</body>
</html>
