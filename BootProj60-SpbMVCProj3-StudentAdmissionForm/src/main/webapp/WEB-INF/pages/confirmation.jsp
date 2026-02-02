<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ page  import="com.ravi.model.Student"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation</title>
</head>

<body style="background:#ecf0f1; font-family:Arial;">

<h1 style="text-align:center; color:green;">
    Admission Successful ✅
</h1>

<div style="width:420px; margin:auto; background:white; padding:20px; border-radius:8px;">

    <p><b>Name:</b> ${student.studentName}</p>
    <p><b>Roll No:</b> ${student.rollNumber}</p>
    <p><b>Date of Birth:</b> ${student.dateOfBirth}</p>
    <p><b>Course:</b> ${student.course}</p>
    <p><b>Contact:</b> ${student.contactNumber}</p>
</div>

</body>
</html>
