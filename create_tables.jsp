<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
try
{
	Connection con= ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table users(name varchar(100),email varchar(100)primary key,mobilenumber bigint,securityQuestion varchar(200),answer varchar(200),password varchar(100),address varchar(500),City varchar(100),state varchar(100),country varchar(100))";
    String q2="create table product(id int, name varchar(500),category varchar(200),active varchar(20))";
    String q3="create table cart(email varChar(100),product_id int, quantity int,price int,total int,address varChar(100),city varChar(100),state varChar(100), country varChar(100), mobileNumber bigint,orderDate varChar(100),deliveryDate varChar(100),paymentMethod varChar(100),transactionId varChar(100),status varChar(20))";
    System.out.println(q1);
	System.out.println(q2);
	System.out.println(q3);
	
	
    // st.execute(q1);
    // st.execute(q2);
     st.execute(q3);
     
     System.out.println("Table Created");
      con.close();
       }

catch(Exception e)
{
	System.out.println(e);

	}


%>