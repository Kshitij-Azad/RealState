<%@ page import="com.dto.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.dbs.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Your Page Title</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Your additional styles go here */
    </style>
</head>
<body>
    <%@include file="navadmin.jsp" %>
    <br>
    <div class="container">
        <center>
            <h1>User Member</h1>
            <br><br><br><br>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>S.No.</th>
                            <th>User ID</th>
                            <th>Name</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            DBService db = new DBService();
                            ArrayList al = db.userdisplayl();
                            if (al != null) {
                                for (int i = 0; i < al.size(); i++) {
                                    Login i1 = (Login) al.get(i);
                        %>
                        <tr>
                            <td><%= i + 1 %></td>
                            <td><%= i1.getUserid() %></td>
                            <td><%= i1.getName() %></td>
                        </tr>
                        <%
                                }
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </center>
        <br><br>
        <center>
            <h1>Admin Member</h1>
            <br><br><br><br>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>S.No.</th>
                            <th>Admin ID</th>
                            <th>Name</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            DBService db1 = new DBService();
                            ArrayList al1 = db1.admindisplayl();
                            if (al1 != null) {
                                for (int i = 0; i < al1.size(); i++) {
                                    Login i2 = (Login) al1.get(i);
                        %>
                        <tr>
                            <td><%= i + 1 %></td>
                            <td><%= i2.getUserid() %></td>
                            <td><%= i2.getName() %></td>
                        </tr>
                        <%
                                }
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </center>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.8/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <%@include file="footer.jsp" %>
</body>
</html>
