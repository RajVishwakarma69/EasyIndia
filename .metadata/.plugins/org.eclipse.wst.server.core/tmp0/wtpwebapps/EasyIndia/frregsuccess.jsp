<%-- 
    Document   : regSuccess
    Created on : Mar 23, 2017, 3:31:16 AM
    Author     : AJAY KUMAR PRAJAPATI
--%>

<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>

        <%       
        DateFormat df = new SimpleDateFormat("yyMM");
        Date dateobj = new Date();
        
        String frid =df.format(dateobj).toString()+request.getParameter("adhar");
        String fname= request.getParameter("fname");
        String mname= request.getParameter("mname");
        String lname = request.getParameter("lname");
        String email= request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String companyname= request.getParameter("companyname");
        String username= request.getParameter("username");
        String passwd= request.getParameter("passwd");
        String passwd2= request.getParameter("passwd2");
        
        
        String state= request.getParameter("state");
        String city= request.getParameter("city");
        String pincode = request.getParameter("pin");
	 String adhar = request.getParameter("adhar");
	  String url = request.getParameter("url");
        DateFormat df1 = new SimpleDateFormat("yyyy-MM-dd");
        String joindate = df1.format(dateobj).toString();
        String d= (request.getParameter("d"));
        String m= (request.getParameter("m"));
        String y= (request.getParameter("y"));
       String sqlDate= d+"-"+m+"-"+y;
       java.util.Date date = new SimpleDateFormat("MM-dd-yyyy").parse(sqlDate);
        java.sql.Date dob= new java.sql.Date(date.getTime());
        String gender= request.getParameter("gender");
	String image= request.getParameter("image");
        
        if(passwd.equals(passwd2))
        {
            
        Connection con = null;
        PreparedStatement prepStmt = null;
        Statement st=null;
       
         try
            {
        	//String sql="select franchisorsID from franchisors where companyname='"+companyname+"' ";
        	Class.forName("com.mysql.jdbc.Driver");
        	con = DriverManager.getConnection("jdbc:mysql://localhost/db","root","xxx");
         //  st=con.createStatement();
             
           /*  ResultSet rs=st.executeQuery(sql);
             while(rs.next())
             { 
            	 frid=rs.getString(1);
            	           	
             }*/
             prepStmt = con.prepareStatement("insert into franchisors values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    
                    prepStmt.setString(1, frid);
                    prepStmt.setString(2, fname);
                     prepStmt.setString(3, mname);
                    prepStmt.setString(4, lname);
                   prepStmt.setString(5, email);
		    prepStmt.setString(6, mobile);
                    prepStmt.setString(7,companyname);
		    prepStmt.setString(8, username);
                     prepStmt.setString(9, passwd);
                    prepStmt.setString(10, state);
                     prepStmt.setString(11, city);
                    prepStmt.setString(12,pincode);
		     prepStmt.setString(13,adhar);
                     prepStmt.setString(14,url);
                    
                    prepStmt.setString(15,joindate);
                    prepStmt.setDate(16,dob);
                    prepStmt.setString(17,gender);
                    
                   prepStmt.setString(18,image);
                    int flag = prepStmt.executeUpdate();
                    if (flag > 0) {
                        //session.setAttribute("userid", user);
                        %>
                        <script>
                        alert("Registration Succaeeful !!!");
                        window.location = 'login.jsp';
                        </script>
                        <%
                        
                       // response.sendRedirect("login.jsp");
                       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
                    } else 
                    {
                    	
                        response.sendRedirect("frreg.jsp");
                    }
                    prepStmt.close(); 
                    con.close();
                }  catch(Exception e)
                {
           	%>
            		<script>
            		alert("invalid input");
            		
    				</script>
    				<a href=fereg.jsp> try again</a>
            		<%
            		
            		}
        }else
        {
        	%>
        	 <script type="text/javascript">
        	alert("password not matched !!!");
        	window.location='frreg.jsp';
        	</script>
        	    	<%
        }
              %>

           		

           		