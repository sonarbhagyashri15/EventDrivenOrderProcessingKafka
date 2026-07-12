<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Added Successfully</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

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
color:white!important;
font-size:28px;
font-weight:bold;
}

.nav-link{
color:white!important;
font-size:17px;
margin-right:15px;
}

.nav-link:hover{
color:#ffd700!important;
}

.card{
margin-top:70px;
border:none;
border-radius:20px;
box-shadow:0 10px 25px rgba(0,0,0,.2);
}

.card-body{
padding:50px;
text-align:center;
}

.success-icon{
font-size:80px;
color:#28a745;
margin-bottom:20px;
}

h2{
font-weight:bold;
color:#0b3d91;
}

p{
font-size:18px;
color:#555;
}

.btn{
border-radius:30px;
font-weight:bold;
padding:10px 30px;
}

.footer{
margin-top:60px;
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

<a class="navbar-brand" href="index.jsp">
<i class="fa-solid fa-box"></i>
Order Processing Kafka
</a>

<div class="navbar-nav ms-auto">

<a class="nav-link" href="index.jsp">
<i class="fa fa-home"></i> Home
</a>

<a class="nav-link" href="add-order.jsp">
<i class="fa fa-plus-circle"></i> Add Order
</a>

<a class="nav-link" href="ViewOrderServlet">
<i class="fa fa-list"></i> View Orders
</a>

<a class="nav-link" href="dashboard.jsp">
<i class="fa fa-chart-line"></i> Dashboard
</a>

</div>

</div>

</nav>

<div class="container">

<div class="row justify-content-center">

<div class="col-md-7">

<div class="card">

<div class="card-body">

<div class="success-icon">
<i class="fa-solid fa-circle-check"></i>
</div>

<h2>Order Added Successfully!</h2>

<p>
Your order has been saved successfully into the database.
</p>

<br>

<a href="add-order.jsp" class="btn btn-primary">
<i class="fa-solid fa-plus"></i>
Add Another Order
</a>

<a href="ViewOrderServlet" class="btn btn-success">
<i class="fa-solid fa-table"></i>
View Orders
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