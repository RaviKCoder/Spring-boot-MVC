<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home | Grade Evaluation System</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .home-card {
        background: #ffffff;
        padding: 40px;
        border-radius: 10px;
        text-align: center;
        width: 420px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }

    .home-card h1 {
        color: #333;
        margin-bottom: 20px;
    }

    .home-card p {
        color: #666;
        font-size: 14px;
        margin-bottom: 30px;
    }

    .home-card a {
        display: inline-block;
        text-decoration: none;
        padding: 12px 22px;
        background-color: #667eea;
        color: white;
        border-radius: 5px;
        font-size: 15px;
        transition: 0.3s;
    }

    .home-card a:hover {
        background-color: #5a67d8;
    }
</style>
</head>

<body>

<div class="home-card">
    <h1>Welcome to Grade Evaluation System</h1>
    <p>calculates Grade based on student marks.</p>
    <a href="view">calculates Grade</a>
</div>

</body>
</html>
