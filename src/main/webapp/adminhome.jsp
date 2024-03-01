<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="navadmin.jsp" %>
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
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.8/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<%@ include file="footer.jsp" %>
</body>
</html>