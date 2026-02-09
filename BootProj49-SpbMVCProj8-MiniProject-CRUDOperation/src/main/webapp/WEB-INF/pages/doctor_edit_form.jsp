<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1 style="color: red; text-align: center;">New Doctor
		Registration Page</h1>


	<form:form action="" modelAttribute="docVO">
		<table align="center" border="0" bgcolor="cyan">
		
			<tr>
				<td>Doctor id:</td>
				<td><form:input type="text" path="id"  readonly="true"/></td>
			</tr>
			<tr>
		
			<tr>
				<td>Doctor name:</td>
				<td><form:input type="text" path="name" /></td>
			</tr>
			<tr>
				<td>Doctor addrs:</td>
				<td><form:input type="text" path="addrs" /></td>
			</tr>
			<tr>
				<td>Doctor specialization:</td>
				<td><form:input type="text" path="specialization" /></td>
			</tr>
			<tr>
				<td>Doctor fee:</td>
				<td><form:input type="text" path="fee" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Edit Doctor"></td>
				<td><input type="reset" value="cancel"></td>
			</tr>
		</table>

	</form:form>


</body>
</html>