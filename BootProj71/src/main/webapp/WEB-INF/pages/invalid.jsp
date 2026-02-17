<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Error page</h1>
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
<title>Access Denied</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #e74a3b, #f6c23e);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .error-container {
        background: white;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        width: 420px;
        text-align: center;
    }

    h1 {
        color: #e74a3b;
        margin-bottom: 15px;
    }

    p {
        color: #555;
        margin-bottom: 25px;
        font-size: 16px;
    }

    .btn {
        display: inline-block;
        padding: 10px 20px;
        text-decoration: none;
        border-radius: 6px;
        font-size: 14px;
        transition: 0.3s;
        color: white;
    }

    .home-btn {
        background-color: #4e73df;
    }

    .home-btn:hover {
        background-color: #2e59d9;
        transform: scale(1.05);
    }

</style>

</head>
<body>

<div class="error-container">
    <h1>Access Denied</h1>
    <p>You are not authorized to access this page.<br>
       Please login first.</p>

    <a href="./" class="btn home-btn">Go to Home</a>
</div>

</body>
</html>
