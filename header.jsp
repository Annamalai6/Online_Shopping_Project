<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
    <%String email=session.getAttribute("email").toString(); %>
    
            <center><h2> Online Shopping </h2></center>
            <h2><a href="">WELCOME USER <br><%out.println(email); %>  <br><br><i class='fas fa-user-alt'></i></a></h2>
            <a href="home.jsp"><br><br>Home<i class="fa fa-home"> </i></a>
            <a href="myCart.jsp"><br><br> Cart Value<i class="fa fa-shopping-cart"></i></a>
            <a href="myOrders.jsp"><br><br> Orders  <i class="fa fa-shopping-bag"></i></a>  
            <a href="logout.jsp"><br><br>Logout <i class="fa fa-sign-out"></i></a>
            <div class="search-container">
             <form action="searchHome.jsp" method="post">
             <input type="text" placeholder="Search" name="search">
             <button type="submit"> <i class="fa fa-search"></i></button>
               </form>
               
             
            </div>
          </div>
           <br>
           <!--table-->
