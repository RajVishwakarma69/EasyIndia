<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

 	
Connection con=null;
PreparedStatement prepStmt = null;
ResultSet rs=null;
String sql=null;
String name = request.getParameter("name");

String email = request.getParameter("email");

String comments = request.getParameter("comments");


try
{
	
     
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost/db","root","xxx");
	 prepStmt = con.prepareStatement("insert into comments values(?,?,?)");
	 prepStmt.setString(1, name);
     prepStmt.setString(2, email);
     prepStmt.setString(3, comments);
     int flag = prepStmt.executeUpdate();
     if (flag > 0) {
          %>
         <script>
         alert("Comment sends successfully !!!");
         window.location = 'index.jsp';
         </script>
         <%
         
        // response.sendRedirect("login.jsp");
        // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
     }else 
     {
     	
         response.sendRedirect("index.jsp");
     }
     prepStmt.close(); 
     con.close();
 } catch(Exception e)
 {
%>
		<script>
		alert("invalid input");
		  window.location = 'index.jsp';
		</script>
		
		<%
		
		}
 %>
 
</body>
</html>