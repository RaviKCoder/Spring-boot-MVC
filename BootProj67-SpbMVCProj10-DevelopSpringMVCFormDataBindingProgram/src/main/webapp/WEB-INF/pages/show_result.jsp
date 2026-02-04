<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="com.ravi.model.Employee" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div style="background: orange; margin: 0 auto;">
	<b>Employee id: ${employee.getId()}</b><br>
	<b>Employee name: ${employee.getName()}</b><br>
	<b>Employee salary: ${employee.getSalary()}</b><br>
</div>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ravi.model.Employee" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>

<style>
    * {
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        margin: 0;
        height: 100vh;
        background: linear-gradient(
            135deg,
            #1d2671,
            #c33764,
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
        width: 420px;
        padding: 35px;
        background: rgba(255, 255, 255, 0.18);
        backdrop-filter: blur(14px);
        border-radius: 20px;
        box-shadow: 0 20px 45px rgba(0,0,0,0.35);
        color: #fff;
    }

    .card h2 {
        text-align: center;
        margin-bottom: 25px;
        letter-spacing: 1px;
    }

    .success {
        text-align: center;
        background: linear-gradient(135deg, #00b09b, #96c93d);
        padding: 10px;
        border-radius: 30px;
        font-weight: bold;
        margin-bottom: 25px;
    }

    .row {
        display: flex;
        justify-content: space-between;
        padding: 12px 15px;
        margin-bottom: 12px;
        background: rgba(255,255,255,0.15);
        border-radius: 10px;
        font-size: 15px;
    }

    .label {
        opacity: 0.9;
    }

    .value {
        font-weight: bold;
    }

    .btn {
        display: block;
        text-align: center;
        margin-top: 25px;
        padding: 12px;
        border-radius: 25px;
        text-decoration: none;
        color: #fff;
        font-weight: bold;
        background: linear-gradient(135deg, #ff512f, #f09819);
        transition: all 0.3s ease;
    }

    .btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 10px 20px rgba(0,0,0,0.4);
        background: linear-gradient(135deg, #f09819, #ff512f);
    }

</style>
</head>

<body>

    <div class="card">
        <h2>Employee Details</h2>

        <div class="success">
            ✔ Employee Registered Successfully
        </div>

        <div class="row">
            <span class="label">Employee ID</span>
            <span class="value">${employee.id}</span>
        </div>

        <div class="row">
            <span class="label">Employee Name</span>
            <span class="value">${employee.name}</span>
        </div>

        <div class="row">
            <span class="label">Employee Salary</span>
            <span class="value">${employee.salary}</span>
        </div>

        <a href="register" class="btn">Register Another Employee</a>
    </div>

</body>
</html>
