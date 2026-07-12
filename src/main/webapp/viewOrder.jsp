<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.kafka.model.Order"%>
<html>
<head>
<meta charset="UTF-8">
<title>View Orders</title>
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
}
.nav-link:hover{
color:#ffd700!important;
}
.card{
margin-top:40px;
border:none;
border-radius:20px;
box-shadow:0 8px 20px rgba(0,0,0,.15);
}
.card-header{
background:#0b3d91;
color:white;
font-size:24px;
font-weight:bold;
text-align:center;
padding:15px;
}
.table thead{
background:#0b3d91;
color:white;
}
.table tbody tr:hover{
background:#f5f9ff;
transition:.3s;
}
.btn{
border-radius:30px;
font-weight:bold;
}
.footer{
margin-top:40px;
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
<a class="nav-link" href="DashboardServlet">
<i class="fa fa-chart-line"></i> Dashboard
</a>
</div>
</div>
</nav>
<div class="container">
<div class="card">
<div class="card-header">
<i class="fa-solid fa-table"></i>
View All Orders
</div>
<div class="card-body">
<table class="table table-bordered table-hover text-center align-middle">
<thead>
<tr>
<th>Order ID</th>
<th>Customer Name</th>
<th>Product Name</th>
<th>Quantity</th>
<th>Price</th>
</tr>
</thead>
<tbody>
<%
List<Order> list=(List<Order>)request.getAttribute("orderList");
if(list!=null && !list.isEmpty()){
for(Order o:list){%>
<tr>
<td><%=o.getOrderId()%></td>
<td><%=o.getCustomerName()%></td>
<td><%=o.getProductName()%></td>
<td><%=o.getQuantity()%></td>
<td>₹ <%=o.getPrice()%></td>
<td>
</td>
</tr>
<%
}
}else{
%>
<tr>
<td colspan="6" class="text-center text-danger fw-bold">
No Orders Found
</td>
</tr>
<%
}
%>
</tbody>
</table>
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