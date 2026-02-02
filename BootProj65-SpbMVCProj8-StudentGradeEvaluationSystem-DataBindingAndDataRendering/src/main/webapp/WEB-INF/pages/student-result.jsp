<%@ page language="java" isELIgnored="false"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Grade Result</title>
</head>

<body style="
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #43cea2, #185a9d);
    height: 100vh;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
">

<div style="
    background: white;
    padding: 35px;
    border-radius: 10px;
    width: 400px;
    text-align: center;
    box-shadow: 0 10px 25px rgba(0,0,0,0.25);
">

    <h2 style="
        color: #333;
        margin-bottom: 20px;
    ">
        Student Grade
    </h2>
    
     <p style="
        font-size: 22px;
        font-weight: bold;
        color: #185a9d;
        margin-bottom: 25px;
    ">
        Name: ${name}
    </p>

    <p style="
        font-size: 22px;
        font-weight: bold;
        color: #185a9d;
        margin-bottom: 25px;
    ">
    	Grade: ₹ ${grade}
    </p>

    <a href="view" style="
        display: inline-block;
        text-decoration: none;
        padding: 10px 20px;
        background-color: #43cea2;
        color: white;
        border-radius: 5px;
        font-size: 14px;
    ">
        Calculate Again
    </a>

</div>

</body>
</html>





