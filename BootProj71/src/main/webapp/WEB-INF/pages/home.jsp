<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1 style="color: red;text-align: center;">Welcome to Home Page</h1>
	<br>
	<h1 style="text-align: center;"><a href="login">Login</a></h1>

</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #4e73df, #1cc88a);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background: white;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        text-align: center;
        width: 400px;
    }

    h1 {
        color: #333;
        margin-bottom: 20px;
    }

    .btn {
        display: inline-block;
        padding: 12px 25px;
        background-color: #4e73df;
        color: white;
        text-decoration: none;
        border-radius: 6px;
        font-size: 16px;
        transition: 0.3s;
    }

    .btn:hover {
        background-color: #2e59d9;
        transform: scale(1.05);
    }

    p {
        color: #666;
        margin-bottom: 25px;
    }
</style>

</head>
<body>

<div class="container">
    <h1>Student Management System</h1>
    <p>Welcome to Spring Boot MVC Project with Interceptors</p>
    <a href="login" class="btn">Login</a>
</div>

</body>
</html>
