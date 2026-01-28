<%@ page language="java"  isELIgnored="false"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.util.*"%>
    <%@ page import="com.ravi.model.Course" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- <h1 style="color: black;text-align: center;">${course1}</h1>
<h1 style="color: black;text-align: center;">${course2}</h1> --%>


<%
List<Course> courses=(List<Course>)request.getAttribute("courses");

for (Course course : courses) {
%>
    <%= course %><br>
<%
}
%>


</body>
</html>