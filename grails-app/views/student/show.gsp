<html>
<head>
    <meta name="layout" content="main">
    <title>Student Details</title>
</head>
<body>
<br><br><br>
<div class="centered">
    <h1>Details</h1>
    <div>
        <img src="${createLink(controller: 'student', action: 'image', params: [id: student.id])}" style="width: auto;height:200px;">
    </div>
    <div>
        <ul>
            <li>Name : ${student.name}</li>
            <li>Address : ${student.address}</li>
            <li>Roll No.: ${student.rollNumber}</li>
            <li>Age : ${student.age}</li>
            <li>Grade : ${student.grade}</li>
        </ul>
    </div>
</div>
</body>
</html>