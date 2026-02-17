
<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1 style="color: red; text-align: center;">Report page ::${pageData.getNumber()+1}</h1>

	<c:choose>
		<c:when test="${!empty pageData.getContent()}">
			<table border="1" align="center" bgcolor="cyan">
				<tr bgcolor="yellow">
					<th>Id</th>
					<th>Name</th>
					<th>Addrs</th>
					<th>Specialization</th>
					<th>Fee</th>
					<th>Net Fee</th>
					<th>Operation</th>
				</tr>

				<c:forEach var="vo" items="${pageData.getContent()}">
					<tr>
						<td>${vo.id}</td>
						<td>${vo.name}</td>
						<td>${vo.addrs}</td>
						<td>${vo.specialization}</td>
						<td>${vo.fee}</td>
						<td>${vo.netFee}</td>
						<td><a href="edit?no=${vo.id}"><img src="images/edit.png"
								width="30" height="30" /></a> &nbsp;&nbsp; <a
							href="delete?no=${vo.id}"
							onclick="return confirm('Are you sure?')"><img
								src="images/delete.png" width="30" height="30" /></a></td>
					</tr>
				</c:forEach>
			</table>

			<p style="text-align: center;">

				<c:if test="${!pageData.isFirst()}">
					<a href="page_report?page=0">First</a>&nbsp;&nbsp;
				</c:if>
				
				<c:if test="${pageData.hasNext()}">
					<a href="page_report?page=${pageData.getPageable().getPageNumber()+1}">Next</a>&nbsp;&nbsp;
				</c:if>
				
				<c:forEach var="i" begin="1" end="${pageData.getTotalPages()}" step="1">
					[<a href="page_report?page=${i-1}">${i}</a>]&nbsp;&nbsp;
				</c:forEach>
				
				<c:if test="${pageData.hasPrevious()}">
					<a href="page_report?page=${pageData.getPageable().getPageNumber()-1}">Previous</a>&nbsp;&nbsp;
				</c:if>
				
				<c:if test="${!pageData.isLast()}">
					<a href="page_report?page=${pageData.getTotalPages()-1}">Last</a>&nbsp;&nbsp;
				</c:if>

			</p>

		</c:when>
		<c:otherwise>
			<h1 style="color: red; text-align: center;">No Records Found</h1>
		</c:otherwise>

	</c:choose>




	<br>
	<h1 style="text-align: center; text-color: red">${resultMsg}</h1>

	<br>
	<br>

	<a href="add"><h1 style="text-align: center;">
			Add Doctor<img src="images/add.png" width="100" height="100" />
		</h1></a>

	<a href="./"><h1 style="text-align: center;">
			home<img src="images/home.png" width="100" height="100" />
		</h1></a>

</body>
</html>