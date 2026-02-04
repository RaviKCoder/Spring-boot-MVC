<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Admission</title>
</head>

<body style="background: #f4f6f8; font-family: Arial;">

	<h1 style="text-align: center; color: #2c3e50;">Student Admission Form</h1>

	<form action="submit-form" method="post"
		style="width: 420px; margin: auto; padding: 20px; background: white; border-radius: 8px;">

	<label>Student Name:</label>
    <input type="text" name="studentName" required>
    <br><br>

    <label>Roll Number:</label>
    <input type="number" name="rollNumber" required>
    <br><br>

    <label>Date of Birth:</label>
    <input type="date" name="dateOfBirth" required>
    <br><br>

    <label>Course:</label>
    <input type="text" name="course" required>
    <br><br>

    <label>Contact Number:</label>
    <input type="number" name="contactNumber" required>
    <br><br>

    <input type="submit" value="Submit">
    <input type="reset" value="Reset">
		
	</form>

</body>
</html>
