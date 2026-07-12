<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Order</title>

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
margin-top:50px;
border:none;
border-radius:20px;
box-shadow:0 10px 20px rgba(0,0,0,.15);
}

.card-header{
background:#0b3d91;
color:white;
text-align:center;
font-size:25px;
font-weight:bold;
border-radius:20px 20px 0 0!important;
}

.form-control{
border-radius:12px;
height:45px;
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

<a class="navbar-brand" href="index.jsp">
<i class="fa-solid fa-box"></i>
Order Processing Kafka
</a>

<div class="navbar-nav ms-auto">

<a class="nav-link" href="index.jsp">
<i class="fa fa-home"></i> Home
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

<div class="card-header">

<i class="fa-solid fa-cart-plus"></i>
Add New Order

</div>

<div class="card-body p-4">

<form action="AddOrderServlet" method="post">
<div class="mb-3">

<label class="form-label">
Order ID
</label>

<input type="number"
name="orderId"
class="form-control"
placeholder="Enter Order ID"
required>

</div>

<div class="mb-3">

<label class="form-label">
Customer Name
</label>

<input type="text"
name="customerName"
class="form-control"
placeholder="Enter Customer Name"
required>

</div>

<div class="mb-3">

<label class="form-label">
Product Name
</label>

<input type="text"
name="productName"
class="form-control"
placeholder="Enter Product Name"
required>

</div>

<div class="mb-3">

<label class="form-label">
Quantity
</label>

<input type="number"
name="quantity"
class="form-control"
placeholder="Enter Quantity"
required>

</div>

<div class="mb-4">

<label class="form-label">
Price
</label>

<input type="number"
step="0.01"
name="price"
class="form-control"
placeholder="Enter Price"
required>

</div>

<div class="text-center">

<button type="submit"
class="btn btn-primary px-5">

<i class="fa-solid fa-floppy-disk"></i>
Save Order

</button>

&nbsp;

<a href="ViewOrderServlet"
class="btn btn-success px-5">

<i class="fa-solid fa-table"></i>
View Orders

</a>

</div>

</form>

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