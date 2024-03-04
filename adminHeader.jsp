<%@page errorPage="error.jsp" %>

<!DOCTYPE html>
<html>
<head>
     <style>    h2 {text-align: center;}  </style> 
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
    <% String email=session.getAttribute("email").toString(); %>
  
            <h2>Online Shopping Admin Portal</h2> 
   
            <a href="addNewProduct.jsp">Add New Product <i class="fa fa-plus"></i>></a>
            <a href="allProductEditProduct.jsp">All Products <i class="fa fa-shopping-cart"></i></a>
     
            <a href="cancelOrders.jsp">Cancelled Orders <i class="fa fa-close"></i></a>
           <a href="deliveredOrders.jsp">Delivered Orders <span style='font-size:20px;'>&#10004;</span></a>
            <a href="../logout.jsp">Logout <i class="fa fa-sign-out"></i></a>
          </div>
           <br>
           <!--table-->
