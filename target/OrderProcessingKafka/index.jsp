<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Driven Order Processing Using Kafka</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
background:#eef5ff;
font-family:'Segoe UI',sans-serif;
}

.navbar{
background:#0b3d91;
box-shadow:0 4px 15px rgba(0,0,0,.2);
}

.navbar-brand{
font-size:28px;
font-weight:bold;
color:white!important;
}

.nav-link{
color:white!important;
font-size:17px;
margin-right:15px;
transition:.3s;
}

.nav-link:hover{
color:#ffd700!important;
}

.hero{
background:linear-gradient(135deg,#0b3d91,#2d7ff9);
padding:70px;
border-radius:0 0 40px 40px;
color:white;
text-align:center;
box-shadow:0 5px 20px rgba(0,0,0,.25);
}

.hero h1{
font-size:45px;
font-weight:bold;
}

.hero p{
font-size:20px;
}

.card{
border:none;
border-radius:20px;
box-shadow:0 8px 18px rgba(0,0,0,.15);
transition:.4s;
}

.card:hover{
transform:translateY(-10px);
box-shadow:0 15px 25px rgba(0,0,0,.25);
}

.icon{
font-size:45px;
margin-bottom:15px;
}

.btn{
border-radius:30px;
font-weight:bold;
}

.footer{
margin-top:50px;
background:#0b3d91;
color:white;
padding:18px;
text-align:center;
}

</style>

</head>

<body>

<nav class="navbar navbar-expand-lg">
<div class="container">

<a class="navbar-brand" href="#">
<i class="fa-solid fa-box"></i>
Order Processing Kafka
</a>

<button class="navbar-toggler bg-light" type="button"
data-bs-toggle="collapse"
data-bs-target="#menu">
<span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="menu">

<ul class="navbar-nav ms-auto">

<li class="nav-item">
<a class="nav-link" href="index.jsp">
<i class="fa fa-home"></i> Home
</a>
</li>

<li class="nav-item">
<a class="nav-link" href="add-order.jsp">
<i class="fa fa-plus-circle"></i> Add Order
</a>
</li>

<li class="nav-item">
<a class="nav-link" href="ViewOrderServlet">
<i class="fa fa-list"></i> View Orders
</a>
</li>

<li class="nav-item">
<a class="nav-link" href="DashboardServlet">
<i class="fa fa-chart-line"></i> Dashboard
</a>
</li>


<li class="nav-item">
<a class="nav-link" href="deleteOrder.jsp">
<i class="fa-solid fa-trash"></i> Delete
</a>
</li>

</ul>

</div>

</div>
</nav>

<div class="hero">

<h1>Event-Driven Order Processing Using Kafka</h1>

<p>
Apache Kafka | Java | JSP | Servlet | MySQL
</p>

</div>

<div class="container mt-5">

<!-- Row 1 -->

<div class="row g-4 justify-content-center">

<div class="col-md-4">

<div class="card text-center p-4">

<div class="icon text-primary">
<i class="fa-solid fa-cart-plus"></i>
</div>

<h4>Add Order</h4>

<p>Create a new customer order.</p>

<a href="add-order.jsp" class="btn btn-primary">
Open
</a>

</div>

</div>

<div class="col-md-4">

<div class="card text-center p-4">

<div class="icon text-success">
<i class="fa-solid fa-table"></i>
</div>

<h4>View Orders</h4>

<p>Display all stored orders.</p>

<a href="ViewOrderServlet" class="btn btn-success">
Open
</a>

</div>

</div>

<div class="col-md-4">

<div class="card text-center p-4">

<div class="icon text-dark">
<i class="fa-solid fa-chart-line"></i>
</div>

<h4>Dashboard</h4>

<p>View Project Dashboard.</p>

<a href="dashboard.jsp" class="btn btn-dark">
Open
</a>

</div>

</div>

</div>

<!-- Row 2 -->

<div class="row g-4 justify-content-center mt-2">


</div>

<div class="col-md-4">

<div class="card text-center p-4">

<div class="icon text-danger">
<i class="fa-solid fa-trash"></i>
</div>

<h4>Delete Order</h4>

<p>Delete Existing Order.</p>

<a href="deleteOrder.jsp" class="btn btn-danger">
Open
</a>

</div>

</div>

</div>

</div>

</div>

<div class="footer">

<h5>Event Driven Order Processing Using Kafka</h5>

<p>Java | JSP | Servlet | Apache Kafka | MySQL</p>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>