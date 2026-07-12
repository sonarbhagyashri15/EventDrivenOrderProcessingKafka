<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Order</title>
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
}
.navbar-brand,.nav-link{
    color:white!important;
}
.card{
    max-width:500px;
    margin:60px auto;
    border:none;
    border-radius:20px;
    box-shadow:0 8px 20px rgba(0,0,0,.2);
}
.card-header{
    background:#dc3545;
    color:white;
    text-align:center;
    font-size:28px;
    font-weight:bold;
    border-radius:20px 20px 0 0;
}
.btn-danger{
    width:100%;
    font-size:18px;
}
.footer{
    margin-top:40px;
    background:#0b3d91;
    color:white;
    text-align:center;
    padding:15px;
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
Home
</a>
<a class="nav-link" href="add-order.jsp">
Add Order
</a>
<a class="nav-link" href="ViewOrderServlet">
View Orders
</a>
<a class="nav-link" href="DashboardServlet">
Dashboard
</a>
</div>
</div>
</nav>
<div class="card">
<div class="card-header">
<i class="fa-solid fa-trash"></i>
Delete Order
</div>
<div class="card-body">
<form action="DeleteOrderServlet" method="post">
<div class="mb-3">
<label class="form-label">
Order ID
</label>
<input
type="number"
name="orderId"
class="form-control"
placeholder="Enter Order ID"
required>
</div>
<button class="btn btn-danger">
<i class="fa-solid fa-trash"></i>
Delete Order
</button>
</form>
</div>
</div>
<div class="footer">
<h5>Event Driven Order Processing Using Kafka</h5>
<p>Java | JSP | Servlet | Apache Kafka | MySQL</p>
</div>
</body>
</html>