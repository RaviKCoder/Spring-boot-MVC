<%@ page language="java"  isELIgnored="false"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.util.*" %>
     <%@ page import="com.ravi.model.BankAccount" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background: pink;">
	
	<%
		List<BankAccount> accounts=(List<BankAccount>)request.getAttribute("listOfBankAccount");
		for(BankAccount account:accounts){
	%>		
	
	<center style="color: cyan;text-align: center; background: gray;">
	
			Account No: <%= account.getAccountNumber() %> <br>
			Name: <%=account.getHolderName() %> <br>
			Type: <%=account.getAccountType() %> <br>
			Branch: <%=account.getBranch() %> <br>
			Balance: <%=account.getBalance() %>
	</center>
		
	<%	
		}
	 %>	
</body>
</html>