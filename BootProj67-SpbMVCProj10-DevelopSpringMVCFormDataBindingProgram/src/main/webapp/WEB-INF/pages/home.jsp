<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div style="text-align: center;">
		<h1 >Welcome to home page</h1>
		<a href="register">Register Employee</a>
		
	</div>
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
        height: 100vh;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(
            135deg,
            #667eea,
            #764ba2,
            #43cea2,
            #185a9d
        );
        background-size: 400% 400%;
        animation: gradientBG 10s ease infinite;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    @keyframes gradientBG {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    .card {
        background: rgba(255, 255, 255, 0.15);
        backdrop-filter: blur(10px);
        padding: 40px 60px;
        border-radius: 15px;
        text-align: center;
        box-shadow: 0 15px 35px rgba(0,0,0,0.3);
        color: white;
    }

    .card h1 {
        font-size: 32px;
        margin-bottom: 20px;
        letter-spacing: 1px;
    }

    .card p {
        font-size: 16px;
        opacity: 0.9;
        margin-bottom: 30px;
    }

    .btn {
        text-decoration: none;
        padding: 12px 30px;
        font-size: 16px;
        font-weight: bold;
        border-radius: 30px;
        background: linear-gradient(135deg, #ff512f, #f09819);
        color: white;
        transition: all 0.3s ease;
        box-shadow: 0 8px 20px rgba(0,0,0,0.3);
        display: inline-block;
    }

    .btn:hover {
        transform: translateY(-3px);
        box-shadow: 0 12px 25px rgba(0,0,0,0.4);
        background: linear-gradient(135deg, #f09819, #ff512f);
    }
</style>

</head>
<body>

    <div class="card">
        <h1>Welcome to Home Page</h1>
        <p>Spring MVC Employee Management System</p>
        <a href="register" class="btn">Register Employee</a>
    </div>

</body>
</html>
