<!DOCTYPE html>
<%@page import="com.dto.data"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Property</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #2eca6a;
            margin: 0;
            padding: 0;
        }

        form {
            max-width: 1000px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h3, h5 {
            text-align: center;
            font-size: 30px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input,
        select,
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        h2 {
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>
<%@include file="navadmin.jsp" %>
<br><br>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h5 style="color: green"></h5>
            <form action="GetPropertyServlet">
                <div class="form-group">
                    <label for="propertySelect">Select Property To Modify:</label>
                    <select class="form-control" id="propertySelect" name="s1" style="width: 60%;margin-left: 20%;">
                        <%
                            ArrayList<data> al = (ArrayList) request.getAttribute("searchallproperty");
                            if (al != null) {
                                int i;
                                for (i = 0; i < al.size(); i++) {
                                    data s = al.get(i);
                        %>
                        <option value="<%= s.getId()%>"><%= s.getId() %></option>
                        <%
                                }
                            }
                        %>
                    </select>
                </div>

                <div class="form-group">
                    <input type="submit" class="btn btn-success" value="Search Property" style="width: 20%; margin-left: 40%;">
                </div>

                <div class="form-group">
                    <a href="adminhome.jsp">Back To Home Page</a>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.8/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<%@include file="footer.jsp" %>
</body>
</html>
