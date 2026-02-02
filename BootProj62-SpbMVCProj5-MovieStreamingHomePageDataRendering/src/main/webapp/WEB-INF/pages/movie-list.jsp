<%@ page language="java" isELIgnored="false"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="com.ravi.model.Movie" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie List</title>
</head>
<body>

<%
List<Movie> movies = (List<Movie>) request.getAttribute("listOfMovie");

if (movies != null) {
    for (Movie movie : movies) {
    	if(movie.getRating()>=8.0){
%>
        <p>
        
		Title: <%= movie.getTitle() %> &nbsp; | &nbsp;
        Genre: <%= movie.getGenre() %> &nbsp; | &nbsp;
        Rating: <%= movie.getRating() %> &nbsp; | &nbsp;
        Language: <%= movie.getLanguage() %>
        
         </p>
        <hr>
		     
<%
    	}
        
    }
}
%>

</body>
</html>
