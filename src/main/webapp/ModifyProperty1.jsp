<!DOCTYPE html>
<%@page import="com.dto.data"%>
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
            color:#2eca6a;
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

        input, select, textarea {
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
        h2{
        text-align: center;
        font-weight: bold;
        }
    </style>
</head>
<body>
<%@include file="navadmin.jsp" %>
<br><br>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
               
                <h5 style="color: green">
                
                </h5>
                <form  action="ModifyPropertyServlet" >
                <center>
                        <% 
									String sms =(String) request.getAttribute("sms");
									if(sms!=null)
									{
										out.print(sms);
									}
							%>
				</center>
                    
                    <%
                    		data s = (data)request.getAttribute("property");
                    		if(s!=null)
                    		{
                    %>
                     <br>
                        <div class="row">
                            <div class="col-sm-4">
                                <label for="userid">ID:</label>
                                    
                                        <input type="number" value="<%= s.getId()%>" name="t1" id="userid" class="form-control">
                                        
                                        
                            </div>
                            <div class="col-sm-4">
                                <label for="username">Name:</label>
                                <input type="text" value="<%= s.getName()%>" name="t2" id="username" class="form-control" required="">
                            </div>
                            <div class="col-sm-4">
                                <label>Contact</label>
                                <input type="number" value="<%= s.getContact()%>" name="t3" id="contact" class="form-control" required="">
                            </div>
                            
                        </div>
                        <br><br>
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Property Name</label>
                                <input type="text" name="t4" class="form-control" required="" placeholder="enter property name...." value="<%= s.getPropertname()%>">
                            </div>
                            <div class="col-sm-4">
                                <label>Price</label>
                                <input type="number" name="t5" class="form-control" required="" placeholder="enter property price...."  value="<%= s.getPrice()%>">
                            </div>
                            
                            <div class="col-sm-4">
                                <label for="ptype">Type</label>
                                <select name="t6" id="ptype" class="ptype" required=""  >
                                    <option value="<%= s.getType()%>"><%= s.getType()%></option>
                                    <option value="Apartment">Apartment</option>
                                    <option value="Independent House/Villa">Independent House/Villa</option>
                                    <option value="Independent/Builder Floor">Independent/Builder Floor</option>
                                    <option value="Land">Land</option>
                                    <option value="Farmhouse">Farmhouse</option>
                                </select>
                            </div>
                        </div>
                        <br><br>
                        <div class="row">
                            <div class="col-sm-2">
                                <label for="srproperty">Property Status</label><br>
                                <select name="t7" id="srproperty" class="srproperty" required="">
                                    <option value="<%= s.getStatus()%>"><%= s.getStatus()%></option>
                                    <option value="Sale">Sale</option>
                                    <option value="Rent">Rent</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <label for="psubtype">Sub-type</label><br>
                                <select name="t8" id="psubtypetype" class="psubtype" required="" value="">
                                    <option value="<%= s.getSubtype()%>"><%= s.getSubtype()%></option>
                                    <option value="1RK">1RK</option>
                                    <option value="2RK">2RK</option>
                                    <option value="3RK">3RK</option>
                                    <option value="4RK">4RK</option>
                                    <option value="1BHK">1BHK</option>
                                    <option value="2BHK">2BHK</option>
                                    <option value="3BHK">3BHK</option>
                                    <option value="4BHK">4BHK</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <label for="bedroom">Bedrooms</label><br>
                                <select name="t9" id="bedroom" class="cityname" required="">
                                    <option value="<%= s.getBedroom()%>"><%= s.getBedroom()%></option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <label for="bathroom">Bathrooms</label><br>
                                <select name="t10" id="bathroom" class="cityname" required="">
                                    <option value="<%= s.getBathroom()%>"><%= s.getBathroom()%></option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <label for="cityname">City name</label><br>
                                <select name="t11" id="cityname" class="cityname" required="">
                                    <option value="<%= s.getCity()%>"><%= s.getCity()%></option>
                                    <option value="Indore">Indore</option>
                                    <option value="Dewas">Dewas</option>
                                    <option value="Ujjain">Ujjain</option>
                                    <option value="Dhar">Dhar</option>
                                    <option value="Bhopal">Bhopal</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <label>Pin code</label><br>
                                <input type="number"  value="<%= s.getPin()%>" name="t12" class="form-control" required="" placeholder="enter pincode....">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-12">
                                <br>
                                <textarea name="t13" id="details" value="" class="form-control" required="" placeholder="Details..."><%= s.getDeatils()%></textarea>
                            </div>
                        </div>
                        <br><br>
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Area</label>
                                <input class="form-control" type="number" value="<%= s.getArea()%>" name="t14" id="area" required="" placeholder="property mesurement....">
                            </div>
                            <div class="col-sm-2">
                                <label for="areasq">Mesurement</label>
                                <select name="t15" id="areasq" class="cityname" required="">
                                    <option value="<%= s.getMeasurement()%>"><%= s.getMeasurement()%></option>
                                    <option value="Square Feet">Square Feet</option>
                                    <option value="Square Meter">Square Meter</option>
                                    <option value="Square Yard">Square Yard</option>
                                    <option value="Acre">Acre</option>
                                    <option value="Hectare">Hectare</option>
                                    <option value="Gaj">Gaj</option>
                                    <option value="Kanal">Kanal</option>
                                    <option value="Bigha">Bigha</option>
                                    <option value="Biswa">Biswa</option>
                                    <option value="Killa">Killa</option>
                                    <option value="Lessa">Lessa</option>
                                    <option value="Dhur">Dhur</option>
                                    <option value="Pura">Pura</option>
                                    <option value="Chatak">Chatak</option>
                                    <option value="Marla">Marla</option>
                                    <option value="Katha">Katha</option>
                                    <option value="Ground">Ground</option>
                                    <option value="Cent">Cent</option>
                                    <option value="Murabba">Murabba</option>
                                    <option value="Guntha">Guntha</option>
                                    <option value="Karam">Karam</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <label for="file">Select images</label>
                                <input class="upload-box" type="file"  value="<%=s.getImg() %>" id="file" name="t16">
                            </div>
                            <div class="col-sm-4">
                                <label>Address</label>
                                <input class="form-control"  value="<%=s.getAddress()%>" type="text" name="t17" id="address"">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-6">
                                <label>Location</label>
                                <input class="form-control" type="text" name="t18" id="location" value="<%= s.getLocation()%>" required="" placeholder="property location...">
                            </div>
                            <div class="col-sm-6">
                            <%
							}	
							%>
                                <br><br>
                                <button style="margin-left: 150px; margin-top: -20px; width: 200px; padding: 12px;" class="btn btn-success">Upload</button>
                            </div>
                        </div>
                        <div class="row"><div class="col-sm-12">&nbsp;</div></div>
                        <div class="row"><div class="col-sm-12">&nbsp;</div></div>
                        <div class="row"><div class="col-sm-12">&nbsp;</div></div>
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

