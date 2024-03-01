<!DOCTYPE html>
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
                <form  action="AddAdminServlet" >
                        <h2>Add Admin</h2><br>
                        <center>
                        <% 
									String sms =(String) request.getAttribute("sms");
									if(sms!=null)
									{
										out.print(sms);
									}
							%>
							</center>
                        <br>
                      
                        <div class="row">
                        	  <div class="col-sm-4">
                                <label for="username">Name:</label>
                                <input type="text" value="" name="t3" id="username" class="form-control" required="">
                            </div>
                            
                        
                            <div class="col-sm-4">
                                <label for="userid">User ID</label>
                                    
                                        <input type="email" value="" name="t1" id="userid" class="form-control">
                                        
                                        
                            </div>
                            <div class="col-sm-4">
                                <label for="username">Password:</label>
                                <input type="password" value="" name="t2" id="username" class="form-control" required="">
                            </div>

                        </div>
                        <div class="row"><div class="col-sm-12">&nbsp;</div></div>
                        <div class="row"><div class="col-sm-12">&nbsp;</div></div>
                        <div class="row"><div class="col-sm-12">&nbsp;</div></div>
                    	
                    	<div class="col-sm-6">
                                <br>
                           
                                <button style="margin-left: 85%; margin-top: -20px; width: 200px; padding: 12px;" class="btn btn-success">Add</button>
                            </div>
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

