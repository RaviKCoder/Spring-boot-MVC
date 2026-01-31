<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Grade Evaluation System</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #74ebd5, #9face6);
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .card {
        background: #ffffff;
        padding: 30px 40px;
        border-radius: 10px;
        width: 420px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }

    .card h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
    }

    table {
        width: 100%;
    }

    td {
        padding: 8px;
        font-size: 14px;
    }

    input[type="text"] {
        width: 100%;
        padding: 8px;
        border-radius: 5px;
        border: 1px solid #ccc;
        outline: none;
    }

    input[type="text"]:focus {
        border-color: #6c63ff;
    }

    .btn-group {
        text-align: center;
        padding-top: 15px;
    }

    input[type="submit"], input[type="reset"] {
        padding: 10px 18px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
    }

    input[type="submit"] {
        background-color: #6c63ff;
        color: white;
        margin-right: 10px;
    }

    input[type="submit"]:hover {
        background-color: #554fd8;
    }

    input[type="reset"] {
        background-color: #f44336;
        color: white;
    }

    input[type="reset"]:hover {
        background-color: #d32f2f;
    }
</style>
</head>

<body>

<div class="card">
    <h2>Student Grade Evaluation System</h2>

    <form action="grade" method="post">
        <table>
            <tr>
                <td>Student Name</td>
                <td><input type="text" name="studentName" required></td>
            </tr>
            
            <tr>
                <td>Student Marks</td>
                <td><input type="text" name="marks" required></td>
            </tr>
            
            <tr>
                <td colspan="2" class="btn-group">
                    <input type="submit" value="Calculate Grade">
                    <input type="reset" value="Cancel">
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
