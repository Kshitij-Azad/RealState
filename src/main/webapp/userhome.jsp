<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="navuser.jsp" %>
<br>
<center>
<%
	String user =(String) session.getAttribute("username");
	String role =(String) session.getAttribute("r");
	if(user!=null)
	{
		out.println("<font color=blue size=4>"+"Welcome "+ role +","+ user +"</font>");
	}
%>
</center>
<br>
<%@ include file="home.jsp" %>
<br>
<%@ include file="footer.jsp" %>


</body>
</html>