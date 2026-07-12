<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

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

.hero{
background:linear-gradient(135deg,#0b3d91,#2d7ff9);
color:white;
padding:40px;
text-align:center;
border-radius:0 0 35px 35px;
margin-bottom:35px;
}

.card{
border:none;
border-radius:20px;
box-shadow:0 8px 18px rgba(0,0,0,.15);
transition:.4s;
}

.card:hover{
transform:translateY(-8px);
}

.icon{
font-size:45px;
margin-bottom:15px;
}

.workflow{
background:white;
border-radius:20px;
padding:30px;
box-shadow:0 8px 18px rgba(0,0,0,.15);
}

.tech{
background:white;
border-radius:20px;
padding:25px;
box-shadow:0 8px 18px rgba(0,0,0,.15);
}

.badge{
font-size:15px;
padding:10px 15px;
margin:5px;
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

<a class="nav-link" href="add-order.jsp">
<i class="fa fa-plus-circle"></i> Add Order
</a>

<a class="nav-link" href="ViewOrderServlet">
<i class="fa fa-list"></i> View Orders
</a>

</div>

</div>

</nav>

<div class="hero">

<h1><i class="fa-solid fa-chart-line"></i> Dashboard</h1>

<p>Event Driven Order Processing Using Apache Kafka</p>

</div>

<div class="container">

<div class="row g-4">

<div class="col-md-3">
<div class="card text-center p-4">
<div class="icon text-primary">
<i class="fa-solid fa-cart-shopping"></i>
</div>
<h4>Total Orders</h4>
<h2>${totalOrders}</h2>
</div>
</div>

<div class="col-md-3">
<div class="card text-center p-4">
<div class="icon text-success">
<i class="fa-solid fa-paper-plane"></i>
</div>
<h4>Kafka Producer</h4>
<h5 class="text-success">Active</h5>
</div>
</div>

<div class="col-md-3">
<div class="card text-center p-4">
<div class="icon text-warning">
<i class="fa-solid fa-gears"></i>
</div>
<h4>Kafka Consumer</h4>
<h5 class="text-warning">Running</h5>
</div>
</div>

<div class="col-md-3">
<div class="card text-center p-4">
<div class="icon text-danger">
<i class="fa-solid fa-database"></i>
</div>
<h4>MySQL</h4>
<h5 class="text-danger">Connected</h5>
</div>
</div>

</div>

<br>

<div class="workflow">

<h3 class="text-center text-primary">
<i class="fa-solid fa-diagram-project"></i>
Project Workflow
</h3>

<hr>

<h5 class="text-center">

📝 Add Order

<br><br>

⬇️

<br><br>

📤 Kafka Producer

<br><br>

⬇️

<br><br>

📨 Kafka Topic

<br><br>

⬇️

<br><br>

⚙️ Kafka Consumer

<br><br>

⬇️

<br><br>

💾 MySQL Database

</h5>

</div>

<br>

<div class="tech">

<h3 class="text-center text-primary">

<i class="fa-solid fa-code"></i>

Technologies Used

</h3>

<hr>

<div class="text-center">

<span class="badge bg-primary">Java</span>

<span class="badge bg-success">JSP</span>

<span class="badge bg-warning text-dark">Servlet</span>

<span class="badge bg-danger">Apache Kafka</span>

<span class="badge bg-info text-dark">MySQL</span>

<span class="badge bg-dark">Bootstrap</span>

<span class="badge bg-secondary">HTML</span>

<span class="badge bg-primary">CSS</span>

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