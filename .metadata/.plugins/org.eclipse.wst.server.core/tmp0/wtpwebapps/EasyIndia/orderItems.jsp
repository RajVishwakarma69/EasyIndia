<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <!DOCTYPE script PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html5/loose.dtd">
    <html lang="en">
    <title>Products</title>
    
  <%
    if ((session.getAttribute("username") == null) || (session.getAttribute("passwd") == "")) 
    {
    	session.invalidate();
    	response.sendRedirect("login.jsp");
    }

   else
   {
Connection con=null;
PreparedStatement st=null,st2=null,pst2=null;
ResultSet rs=null,rs2=null;
String sql=null,sql2=null,sql3=null;
String oid=request.getParameter("name");
	sql="select modelname,color,type,quantity from orderitems where ordersID=?";
	sql2="update orders set status='delivered' where ordersId=?";
	sql3="select status from orders where ordersId=?";
	//out.println(s);
//try
//{
	 String user=(String)session.getAttribute("user");
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost/db","root","xxx");
    st = con.prepareStatement(sql);
    st2= con.prepareStatement(sql3);
    st.setString(1,oid);
    st2.setString(1,oid);
  
    rs = st.executeQuery();
    rs2 = st2.executeQuery();
    %><table align="center" cellpadding="5" cellspacing="5" border="1">
    <tr><th>S/N</th><th>ModelName</th><th>Color</th><th>Type</th><th>Quantity</th></tr><% 
   int count=1;
    while(rs.next()) {
        //session.setAttribute("username", username);
      %>
      <tr>
      <td><%out.println(count++);%></td>
      <td><%out.println(rs.getString(1));%></td>
      <td ><%out.println(rs.getString(2));%></td>
      <td><%out.println(rs.getString(3));%></td>
      <td ><%out.println(rs.getString(4));%></td>
     </tr>
      </table>
      <% }
        //out.println("<a href='logout.jsp'>Log out</a>");
        //response.sendRedirect("success.jsp");
       // break;
       //out.println(rs.getString(1)+" "+rs.getString(2));
     
    
    if(user.equalsIgnoreCase("FRANCHISORS"))
	{ 
	 
	 while(rs2.next()){
		// out.println(rs2.getString(1));
		if((rs2.getString(1)).equalsIgnoreCase("not delivered"))
		{
			out.println(rs2.getString(1));
	%>
	
	<button onclick="placed(this.id)" value="pl" id="p" >Send </button>
	
 <%
		}
	 }
%>

<head>
<script type="text/javascript">
// to get OrderId from the page orders
window.onload = function () {
    var url = document.location.href,
        params = url.split('?')[1].split('&'),
        data = {}, tmp;
    for(var i = 0, l = params.length; i < l; i++) {
         tmp = params[i].split('=');
         data[tmp[0]] = tmp[1];
    }
    document.getElementById('here').innerHTML = data.name;
}

// To placed the order


 function placed(id){
	 var v =document.getElementById(id);
	 //document.getElementById("demo").innerHTML = "Hello World";
	alert("Order Placed !!! ");
	<%
	 pst2 = con.prepareStatement(sql2);
	    pst2.setString(1,oid);
	    int i = pst2.executeUpdate();
	    con.close();
	    %> 
	if(v.value=='pl')
	 {
	 document.getElementById('p').style.visibility= 'hidden';
	
	 }
	
} 
</script>
<%}
    }%>
<style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      height:110px;
    }
   * {font-family: Helvetica Neue, Arial, sans-serif; }

body { background: url("images/bg3.jpg");}

h1, table { text-align: center; }

table {border-collapse: collapse;  width: 95%; margin: 0 auto .5rem;}

th, td { padding: 1rem; font-size: 1.3rem; }

tr {background: hsl(50, 50%, 80%); }

 td { transition: .4s ease-in;text-align: center; } 

tr:first-child {background: hsla(12, 100%, 40%, 0.5); }

tr:nth-child(even) { background: hsla(50, 50%, 80%, 0.7); }

td:empty {background: hsla(50, 25%, 60%, 0.7); }

tr:hover:not(#firstrow), tr:hover td:empty {background: #ff0; pointer-events: visible;}
tr:hover:not(#firstrow) { transform: scale(1.01); font-weight: 700; box-shadow: 0px 3px 1px rgba(0, 0, 0, 0.5);}
  .jumbotron {
      
      background: url("images/FlowerBackground.png") ;
      color: #fff;
      padding: 100px 95px;
      font-family: Montserrat, sans-serif;
       width: 100%;
     height: 150px;
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
      color: pink !important;
      background-color: green !important;
  }
     .navbar-default .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }  
</style>

</head>
</html>
