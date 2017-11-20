<%@page import="java.util.ArrayList"%>
<%@page import="oracle.net.ns.SessionAtts"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.Vector" language="java" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>PetMart</title>
     <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="bootstrap-3.3.7-dist/css/style.css" rel="stylesheet" type="text/css" />
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
     <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      height:110px;
    }
    input[type=text] {
    width: 130px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 100%;
}
</style>
</head>
 
<body>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#">
      <img alt="logo" src="bootstrap-3.3.7-dist/images/2.jpg" height="90px" align="right">
      </a>
    </div>
   <!--  <div class="collapse navbar-collapse" id="myNavbar"> -->
      <ul class="nav navbar-nav">
       <li class="active"><a href="home.html">Home</a></li>
						<li><a href="petmart.html">PetMart</a></li>
						<li><a href="petguide.html">PetGuide</a></li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="about.html">About</a></li>
						<li><a href="contact.html">Contact</a></li> </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="loggin.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
 
</nav>
<form>
 <p align="right"> <input type="text" name="search" placeholder="Search.." ></p>
</form>
<%
String id = request.getParameter("srd");
String driverName = "oracle.jdbc.OracleDriver";
String connectionUrl = "jdbc:oracle:thin:@localhost:1521:xe";
String dbName = "LAVEEN";
String password = "system";
String x=null;
int i=0;
ArrayList a=new ArrayList();

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection con = null;
Statement stmt = null;
ResultSet rs = null;
try{ 
con = DriverManager.getConnection(connectionUrl,dbName,password);
stmt=con.createStatement();
String sql ="SELECT p.petid,im,breed,description,price FROM pet p, petimage pp where p.petid=pp.petid" ;
rs = stmt.executeQuery(sql);
while(rs.next()){
x=rs.getString("petid");
//a.add(x);
%>
<div class="container-fluid" style="border:1px solid pink;padding:20px; border: 1px solid black; background-color:padding-top: 50px; padding-right: 30px; padding-bottom: 50px; padding-left: 80px;">  
<img alt="nothing" src="proim/<%=rs.getString("im") %>" style="width:'30px', height:30px" >
<p>Breed:<%=rs.getString("BREED") %><p><br>
<p>Description:<%=rs.getString("DESCRIPTION") %></p><br>
<p>Price:<%=rs.getString("PRICE") %></p><br>
 <p>ID:<%out.println(i++); %></p><br>
 <% 
   session.setAttribute( "theName", a );
%>
<a href="aboutPet.jsp" >View More</a>
<!--  <button class="btn btn-success">Buy Now</button>
<button class="btn btn-danger" >Cart</button>
-->
 <button class="btn btn-success" id="' + x + '" onClick="reply_click(this)">Buy Now</button>
<button class="btn btn-success" id="' + x + '" onClick="reply_click(this)">Cart</button>
<script type="text/javascript">
function reply_click(obj)
{
var id = obj.id;
alert(id);
//window.location="http://localhost:9898/petShop/aboutPet.jsp?param="+id;
}
</script>
</div>  
<div >

</div>


<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
