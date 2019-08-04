function isEmpty(fieldName, fieldValue) {
    if(fieldValue === ''){
        alert(fieldName + " cannot be Empty");
        return true;
    }else{
        return false;
    }
}

function checkForNumber(fieldName, fieldValue) {
    if(isNaN(fieldValue)){
        alert(fieldName+" should be a Number (not a String)");
        return false;
    }else{
        return true;
    }
}

function validateStudentForm() {
    var rollNumber = document.getElementById("rollNumber").value.trim();
    var name = document.getElementById("name").value.trim();
    var address = document.getElementById("address").value.trim();
    var age = document.getElementById("age").value.trim();
    var grade = document.getElementById("grade").value.trim();
    var profilePicture = document.getElementById("profilePicture").value.trim();

    if(isEmpty("Roll Number",rollNumber) || !checkForNumber("Roll Number",rollNumber) || isEmpty("Name",name) || isEmpty("Address",address)|| isEmpty("Age",age) || !checkForNumber("Age",age) || isEmpty("Grade",grade) || isEmpty("Profile Picture",profilePicture)){
        return false;
    }else{
        return true;
    }
}

function validateFacultyForm() {
    var name = document.getElementById("name").value.trim();
    var address = document.getElementById("address").value.trim();
    var department = document.getElementById("department").value.trim();
    var contactNumber = document.getElementById("contactNumber").value.trim();

    if(isEmpty("Name",name) || isEmpty("Address",address)|| isEmpty("Department",department) || isEmpty("Contact Number",contactNumber)){
        return false;
    }else{
        return true;
    }
}