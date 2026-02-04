<%-- <%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div style="background-color:aqua; width: 300px;margin: 0 auto;">

		<form:form action="register" method="post" modelAttribute="employee">
			<table>
				<tr>
					<td>Employee id:</td>
					<td><form:input path="id" /></td>
				</tr>

				<tr>
					<td>Employee name:</td>
					<td><form:input path="name" /></td>
				</tr>


				<tr>
					<td>Employee salary:</td>
					<td><form:input path="salary" /></td>
				</tr>

				<tr>
					<td><input type="submit" value="submit"></td>
					<td><input type="reset" value="cancel"></td>
				</tr>

			</table>
		</form:form>
	</div>
</body>
</html> --%>



<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Registration</title>

<style>
/* ===== Global Reset ===== */
* {
	box-sizing: border-box;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
	margin: 0;
	height: 100vh;
	background: linear-gradient(135deg, #667eea, #764ba2, #43cea2, #185a9d);
	background-size: 400% 400%;
	animation: gradientBG 10s ease infinite;
	display: flex;
	align-items: center;
	justify-content: center;
}

@
keyframes gradientBG { 0% {
	background-position: 0% 50%;
}

50
%
{
background-position
:
100%
50%;
}
100
%
{
background-position
:
0%
50%;
}
}

/* ===== Glass Card ===== */
.card {
	width: 380px;
	padding: 30px 35px;
	background: rgba(255, 255, 255, 0.18);
	backdrop-filter: blur(12px);
	border-radius: 18px;
	box-shadow: 0 15px 40px rgba(0, 0, 0, 0.35);
	color: #fff;
}

.card h2 {
	text-align: center;
	margin-bottom: 25px;
	letter-spacing: 1px;
}

/* ===== Table Styling ===== */
table {
	width: 100%;
}

td {
	padding: 8px 0;
	font-size: 14px;
}

/* ===== Input Fields ===== */
input[type="text"], input[type="number"] {
	width: 100%;
	padding: 8px 12px;
	border-radius: 8px;
	border: none;
	outline: none;
	font-size: 14px;
}

/* ===== Buttons ===== */
.btn {
	width: 100%;
	padding: 10px;
	border-radius: 25px;
	border: none;
	font-size: 15px;
	font-weight: bold;
	cursor: pointer;
	color: #fff;
	background: linear-gradient(135deg, #ff512f, #f09819);
	transition: all 0.3s ease;
	margin-top: 10px;
}

.btn:hover {
	transform: translateY(-2px);
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.4);
	background: linear-gradient(135deg, #f09819, #ff512f);
}

.btn-reset {
	background: linear-gradient(135deg, #00c6ff, #0072ff);
}

.btn-reset:hover {
	background: linear-gradient(135deg, #0072ff, #00c6ff);
}
</style>
</head>

<body>

	<div class="card">
		<h2>Employee Registration</h2>

		<form:form action="register" method="post" modelAttribute="employee">
			<table>
				<tr>
					<td>Employee ID</td>
					<td><form:input path="id" /></td>
				</tr>

				<tr>
					<td>Employee Name</td>
					<td><form:input path="name" /></td>
				</tr>

				<tr>
					<td>Salary</td>
					<td><form:input path="salary" /></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Submit"
						class="btn"> <input type="reset" value="Cancel"
						class="btn btn-reset"></td>
				</tr>
			</table>
		</form:form>
	</div>

</body>
</html>


