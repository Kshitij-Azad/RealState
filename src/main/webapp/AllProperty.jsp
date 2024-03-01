<%@ page import="com.dto.data" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.dbs.DBService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Show Properties</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyZ8QRO1mg7fFZ5tTk/GW+8W92RRxI"
          crossorigin="anonymous">
    <style>
        #one {
            width: 100%; /* Adjust as needed */
            max-width: 800px; /* Adjust as needed */
            margin: 2% auto;
            background-color: black;
        }

		#two {
    			flex: 0 0 auto;
  				  width: 25%;
				}
    </style>
</head>
<body>

<%@ include file="navadmin.jsp" %>

<div class="container">
    <center>
        <h1>ALL Property</h1>
    </center>

    <div class="row">
        <%
            DBService db = new DBService();
            ArrayList<data> propertyList = db.Propertydisplayl();

            if (propertyList != null) {
                for (data property : propertyList) {
        %>
        <div class="col-md-6" id="two">
            <div class="card mb-4 box-shadow">
            <center>Property Id :<%= property.getId() %></center>
                <img class="card-img-top" src="<%= property.getImg() %>" alt="Property Image">
                <div class="card-body">
                    <h2 class="card-title">
                        <a href="property-single.html"><%= property.getName() %></a>
                    </h2>
                    <div class="price-box d-flex">
                        <span class="price-a" style="color: black;"><b>RS </b><%= property.getPrice() %></span>
                    </div>
                    
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                        <h4 class="card-info-title">Area</h4>
                        <span><%= property.getArea() %><sup><%= property.getMeasurement() %></sup></span>
                    </li>
                    <li class="list-group-item">
                        <h4 class="card-info-title">Status</h4>
                        <span><%= property.getStatus()%></span>
                    </li>
                    <li class="list-group-item">
                        <h4 class="card-info-title">Pin</h4>
                        <span><%= property.getPin()%></span>
                    </li>
                    <li class="list-group-item">
                        <h4 class="card-info-title">City</h4>
                        <span><%= property.getCity() %></span>
                    </li>
                </ul>
            </div>
        </div>
        <%
                }
            }
        %>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-aXr58hBViPpTtOwYVz7MybbUu8IdT2/stz5l5I3RGCv5tF4yoY72v9ztg3r4Q"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyZ8QRO1mg7fFZ5tTk/GW+8W92RRxI"
        crossorigin="anonymous"></script>
        
        
        <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
        <%@ include file="footer.jsp" %>
</body>
</html>
