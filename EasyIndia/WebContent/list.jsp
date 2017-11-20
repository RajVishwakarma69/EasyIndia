<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%
String companyname = request.getParameter("companyname");
Class.forName("oracle.jdbc.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin://@localhost:1521:xe","scott","tiger");
PreparedStatement pst = con.prepareStatement("select fname from franchisors where companyname=?"); 
pst.setString(1,companyname);
ResultSet rs= pst.executeQuery();
while(rs.next())
{
	%>
	<button>
	<%=rs.getString(1)%>
	</button>
	<%
}
con.close();
%>
