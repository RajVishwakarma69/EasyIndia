<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
    <!DOCTYPE script PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html5/loose.dtd">
    <html lang="en">
  <html>
 <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  
 <%

 	
Connection con=null;
Statement st=null;;
ResultSet rs=null;
String sql=null;
String user = request.getParameter("user");

String username = request.getParameter("username");

String passwd = request.getParameter("passwd");


try
{
	if(user.equalsIgnoreCase("FRANCHISORS"))
		sql="select franchisorsID,username,passwd,companyname,firstname  from franchisors where username='"+username+"' and passwd='"+passwd+"' ";
	else if(user.equalsIgnoreCase("FRANCHISEES"))
		sql="select franchiseesID,username,passwd,companyname,firstname from franchisees where username='"+username+"' and passwd='"+passwd+"' ";
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost/db","root","xxx");
    st = con.createStatement();
    
    rs = st.executeQuery(sql);
    if(rs.next()) {
    	if(username.equals(rs.getString(2)) && passwd.equals(rs.getString(3)))
    	{
        session.setAttribute("username", username);
        session.setAttribute("user", user);
        session.setAttribute("passwd", passwd);
        session.setAttribute("companyname",rs.getString(4));
        session.setAttribute("firstname",rs.getString(5));
        session.setAttribute("franchisorsid", rs.getString(1));
        session.setAttribute("franchiseesid", rs.getString(1));
        //  out.println("welcome " + username);
        //out.println("<a href='logout.jsp'>Log out</a>");
       //response.sendRedirect("loginprocess.jsp");
       // break;
       //out.println(rs.getString(1)+" "+rs.getString(2));
 %>
 <style type="text/css">
  body {
         font: 400 15px Lato, sans-serif;
      line-height: 1.8;
      color: #818181;
  }
   .navbar {
      margin-bottom: 0;
      background-color:transparent ;
      z-index: 9999;
      border: 0;
      font-size: 20px !important;
      line-height: 2 !important;
      letter-spacing: 3px;
      border-radius: 0;
      font-family: arial, serif;
  }
 .navbar li a, .navbar .navbar-brand {
      color: white !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
      color: #f4511e !important;
      background-color: green !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }  
  .jumbotron {
      
      background: url("images/FlowerBackground.png") ;
      color: #fff;
      padding: 100px 95px;
      font-family: Montserrat, sans-serif;
       width: 100%;
     height: 150px;
      
      
  }
 </style>
 <title style=text-transform:capitalize><%out.println(rs.getString(5)+"..."+rs.getString(4));%></title>
 </head>
<body>
<div  class="jumbotron text-center">
<div class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
    
     <span style=font-size:22px;text-transform:uppercase;margin-top:-25px > <%out.println(rs.getString(4));%></span><br>
    
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
     
     <span class="glyphicon glyphicon-user" style=font-size:44px;text-transform:capitalize> 
    <%out.println(rs.getString(5));%>
     </span><br>
    </div><br>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
       <li><a href="product.jsp">
      		<span class="glyphicon glyphicon-list-alt" ></span>Product</a></li>
      		
      		 <li><a href="order.jsp">
      		<span class="glyphicon glyphicon-log-in"></span>Order</a></li>
      		<%if(user.equalsIgnoreCase("FRANCHISORS"))
      			{%>
      <li><a href="franchiseelist.jsp">
            <span class="glyphicon glyphicon-user"></span>Franchisee</a></li>
            <%} %>
     <li><a href="logout.jsp" >
   <span class="glyphicon glyphicon-log-out"></span>logout</a></li>
      </ul>
    </div>
  </div>
</div>
</div>
<div class="row">
<div class="w3-content" style="max-width:1200px">
  
  <div class="w3-row-padding w3-section">
    <div class="col-sm-5 col-xs-12">
      <img class="demo w3-opacity w3-hover-opacity-on" src="images/race.jpg" style=width:115%;height:400px;margin-left:23px >
    </div>
    <div class="col-sm-4 col-xs-12">
      <img class="demo w3-opacity w3-hover-opacity-off" src="images/race2.jpg" style="width:115%;height:400px;margin-right:-100px;float:right" >
    </div>
    <div class="col-sm-3 col-xs-12">
      <img class="demo w3-opacity w3-hover-opacity-off" src="images/race3.jpg" style="width:115%;height:400px;margin-right:-130px;float:right" >
    </div>
    
    
  </div>
</div>
</div>

</body>
    <%
    	}
    }else {
    	%>
    	<script>
    	alert("Invalid password !!! \n Please Enter Valid Password");
    	window.location = 'login.jsp';
    	</script>
    	<% 
//out.print("alert('Password expired, please update your password..');");
      //out.println("Invalid password <a href='login.jsp'>try again</a>");
//response.sendRedirect("login.jsp");
    }
con.close();

}catch(Exception e)
{
	%>
	<script>
	alert("Error Please Try Again");
    </script>
    
    <%
    response.sendRedirect("login.jsp");
	
}

%>
 
 

 
</html>

