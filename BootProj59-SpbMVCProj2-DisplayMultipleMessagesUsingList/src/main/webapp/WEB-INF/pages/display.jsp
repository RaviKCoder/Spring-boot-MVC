<%@ page language="java" isELIgnored="false"
    contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Multiple Message</title>
</head>
<body>

<h3 style="color: red; text-align: center;">List Without Iteration :</h3>
		<b>${messages}</b>

<hr>

<h3 style="color: red; text-align: center;">List With Iteration :</h3>

<%
ArrayList<String> str =(ArrayList<String>) request.getAttribute("messages");

for (String str1 : str) {
%>
    <%= str1 %><br>
<%
}
%>

<%-- ${messages[0] }<br>
${messages[1] }<br>
${messages[2] }<br> --%>
 
</body>
</html>
