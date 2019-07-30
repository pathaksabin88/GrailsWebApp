function validateStudentForm() {
    var rollNumber = document.getElementById("rollNumber").value.trim();
    var name = document.getElementById("name").value.trim();
    var address = document.getElementById("address").value.trim();
    var age = document.getElementById("age").value.trim();
    var grade = document.getElementById("grade").value.trim();

    if(isEmpty("Roll Number ",rollNumber) || isEmpty("Name",name) || isEmpty("Address",address)|| isEmpty("Age",age) || isEmpty("Grade",grade)){
        return false;
    }else{
        return true;
    }
}

function isEmpty(fieldName, fieldValue) {
    if(fieldValue === ''){
        alert(fieldName + " cannot be Empty");
        return true;
    }else{
        return false;
    }
}