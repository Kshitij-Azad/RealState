<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Real Estate Navbar</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #f8f9fa;
    }

    .navbar {
      background-color: #343a40;
      padding: 1rem 0;
    }

    .navbar-brand {
      color: #ffffff;
      font-size: 1.5rem;
      font-weight: bold;
    }

    .navbar-nav {
      margin-top: 10px;
    }

    .nav-item {
      margin-right: 10px;
    }

    .nav-link {
      color: #ffffff !important;
    }

    .nav-link:hover {
      color: #28a745 !important;
    }

    @media (max-width: 767px) {
      .navbar-toggler {
        background-color: #28a745;
      }
    }
  </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container">
    <a class="navbar-brand" href="adminhome.jsp">RealEstate<span class="text-success">Hub</span></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="adminhome.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
           Services
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="AllProperty.jsp">ALL Property</a></li>
            
            
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="booking.jsp">Booking</a>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
            Admin
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="addadmin.jsp">New Admin</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="deleteadmin.jsp">Delete Admin</a></li>
            
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
            Property
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="AddProperty.jsp">Add Property</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="SearchServlet">Modify Property</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="delete">Delete Property</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="all.jsp">Users</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

</body>
</html>
