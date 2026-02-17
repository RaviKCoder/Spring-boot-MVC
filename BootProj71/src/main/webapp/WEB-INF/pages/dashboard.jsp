<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="color: red;text-align: center;">Welcome to dashboard</h1>

    <p style="color: red;text-align: center;">Hello, ${sessionScope.username}</p>
   
   
   <h1 style="text-align: center;"><a href="logout">Logout</a></h1>
   

<br>

<h1 style="text-align: center;"><a href="./">home</a></h1>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

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

    .dashboard-container {
        background: white;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        width: 420px;
        text-align: center;
    }

    h1 {
        color: #333;
        margin-bottom: 10px;
    }

    .welcome-text {
        font-size: 18px;
        color: #555;
        margin-bottom: 30px;
    }

    .username {
        font-weight: bold;
        color: #4e73df;
    }

    .btn {
        display: inline-block;
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        text-decoration: none;
        border-radius: 6px;
        font-size: 15px;
        transition: 0.3s;
        color: white;
    }

    .logout-btn {
        background-color: #e74a3b;
    }

    .logout-btn:hover {
        background-color: #c0392b;
        transform: scale(1.03);
    }

    .home-btn {
        background-color: #858796;
    }

    .home-btn:hover {
        background-color: #60616f;
        transform: scale(1.03);
    }

</style>

</head>
<body>

<div class="dashboard-container">
    <h1>Dashboard</h1>

    <p class="welcome-text">
        Welcome, <span class="username">${sessionScope.username}</span>
    </p>

    <a href="logout" class="btn logout-btn">Logout</a>
    <a href="./" class="btn home-btn">Back to Home</a>

</div>

</body>
</html>
