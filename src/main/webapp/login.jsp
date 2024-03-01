<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <style>
        body {
            
            background: linear-gradient(to right, #2eca6a,#2eca6a,#2eca6a);
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            width: 100%;
            max-width: 650px;
            background-color:white;
            color: #2eca6a;
            font-weight:bold;
            padding: 5% 10%;
            border-radius: 10px;
            box-shadow: -3px -3px 7px black, 3px 9px 5px green;
        }

        @media (max-width: 576px) {
            .container {
                width: 80%;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <form action="loginServlet">
            <h1 class="text-center">Login</h1>
            <div class="mb-3">
                <label for="userEmail" class="form-label">User Email</label>
                <input type="email" class="form-control" id="userEmail" name="l1" required="required">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label" >Password</label>
                <input type="password" class="form-control" id="password" name="l2" required="required">
                
            </div>
            <div class="mb-3">
                <label for="role" class="form-label" >Role : <br></label>
                User
                <input type="radio" id="role" name="l3"  value="User" checked="checked">
                Admin
                <input type="radio" id="role" name="l3"  value="Admin">
                
            </div>
            <div class="mb-3">
                <%
                String sms =(String) request.getAttribute("sms");
                if(sms!=null) {
                    out.print("<div class='alert alert-danger'>" + sms + "</div>");
                }
                %>
            </div>
            <div class="text-center mb-3">
                <a style="text-decoration:none;" href="forget.jsp">Forget Password</a><br>
                <a style="text-decoration:none;" href="create.jsp">Create new account</a>
                
                
                
            </div>
            <div class="text-center">
                <input type="submit" name="l3" value="Login" class="btn btn-primary">
            </div>
        </form>
    </div>
</body>

</html>
