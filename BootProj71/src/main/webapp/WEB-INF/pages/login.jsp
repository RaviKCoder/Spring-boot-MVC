<!-- <html>
<body>
    <h2>Login Page</h2>
    <form action="doLogin" method="post">
        Username: <input type="text" name="username"/><br/>
        Password: <input type="password" name="password"/><br/>
        <input type="submit" value="Login"/> <input type="reset" value="cancel"/>
    </form>
</body>
</html> -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

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

    .login-container {
        background: white;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        width: 350px;
        text-align: center;
    }

    h2 {
        margin-bottom: 25px;
        color: #333;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
    }

    .btn {
        width: 100%;
        padding: 10px;
        margin-top: 15px;
        background-color: #4e73df;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 15px;
        cursor: pointer;
        transition: 0.3s;
    }

    .btn:hover {
        background-color: #2e59d9;
        transform: scale(1.03);
    }

    .reset-btn {
        background-color: #e74a3b;
        margin-top: 8px;
    }

    .reset-btn:hover {
        background-color: #c0392b;
    }

    .home-link {
        display: block;
        margin-top: 15px;
        text-decoration: none;
        color: #4e73df;
        font-size: 14px;
    }

    .home-link:hover {
        text-decoration: underline;
    }
</style>

</head>
<body>

<div class="login-container">
    <h2>User Login</h2>

    <form action="doLogin" method="post">
        <input type="text" name="username" placeholder="Enter Username" required/>
        <input type="password" name="password" placeholder="Enter Password" required/>

        <button type="submit" class="btn">Login</button>
        <button type="reset" class="btn reset-btn">Cancel</button>
    </form>

    <a href="./" class="home-link">← Back to Home</a>
</div>

</body>
</html>
