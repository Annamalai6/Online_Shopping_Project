<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="../footer.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TOTAL CART VALUE</title>
<style>
h3
{
	color: orange;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">TOTAL CART VALUE </i></div>
<%
String msg=request.getParameter("msg");
if("notPossible".equals(msg))
{	
%>

<%} %>

<table>
<thead>
<%
int total=0;
int sno=0;


try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs1=st.executeQuery("select sum(total) from cart where email='"+email+"'and address is NULL");
	while(rs1.next())
	{
		total=rs1.getInt(1);
	}
	

%>
          <tr>
            <th scope="col" style="background-color: yellow;">Total:<i class="fa fa-inr"></i> <%out.println(total); %> </th>
         <% if (total>0) {%>   <th scope="col"><a href="addressPaymentForOrder.jsp">Proceed to order</a></th><%} %>
          </tr>
        </thead>
        <thead>
         
        </thead>
        <tbody>
          <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
         
          </tr>
        </thead>
        
        
        
      <%
      ResultSet rs=st.executeQuery("select *from product inner join cart on product.id=cart.product_id and cart.email='"+email+"' and cart.address is NULL");
     while(rs.next())
     {
    	 
     
      %>
         
      <tr>
          <%sno=sno+1 ;%>
           <td><%out.println(sno); %></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(4)%></td>
            <td><%=rs.getString(8)%> </td>
         
            </tr>
         <%} %>

<%
  
 
}
catch(Exception e){
	
}
%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>