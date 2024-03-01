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
    <a class="navbar-brand" href="userhome.jsp">RealEstate<span class="text-success">Hub</span></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="userhome.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Properties</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">UserInfo</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
          <li class="nav-item">
          <a class="nav-link" href="login.jsp">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Include Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
