<%@page import="com.dto.data"%>
<html>
<head>
<title>Project Management System</title>

<link href="./images/logo.png"  rel="icon" />

<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-3.6.4.js"></script>
<script src="js/bootstrap.min.js"></script>

<style>
#header
{
 text-align:center;
 background-color:orange;
 padding:15px 0 15px 0;
}
#nav
{
 background-color:brown;     
 text-align:center;
 padding:15px 0 15px 0;
}
#nav1
{
 font-weight:bold;
 text-align:center;
 font-size:20px;     
 padding:25px 0 25px 0;
}
#nav a
{
color:white;
 font-weight:bold;
 text-align:center;
 font-size:20px;     
}

#footer
{
 background-color:orange;     
 text-align:center;
 padding:20px 0 20px 0;
}
</style>

</head>
<body>
<%@include file="navadmin.jsp" %>
<div id ="nav1" class="container-fluid" >
<form action="ModifyServlet">


<br>
<%
String sms = (String)request.getAttribute("sms");
if(sms!=null)
{
	out.print(sms);
}
%>

<br>
<br>
<a href="adminhome.jsp">Back To Home Page</a><br><br>
</form>
</div>
<%@include file="footer.jsp" %>    
</body>
</html>

