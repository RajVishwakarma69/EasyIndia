<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html >

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking page</title>
<%--
<script type="application/javascript">
<script>

    function validate(form) {
        var gender = form.querySelectorAll('input[name="gender"]:checked');
        if (!gender.length) {
            alert('You must select male or female');
            return false;
        }
    }
</script> --%>
<style type="text/css">
*/*Set's border, padding and margin to 0 for all values*/
{
    padding: 0;
    margin: 0;
    border: 0;
}
body, html {
    color: #373C40;
    font-family: Verdana,Arial, Helvetica, sans-serif;
    height: 10%;
   background: url("images/bg3.jpg") ;
    margin:10px;
}
body {
    font-size: 70%;
    
}
.jumbotron {
       margin-top: -20px;
    /*  background: url("images/fms2.PNG")no-repeat  20px 6px ;*/
    background-color:gray;
      color: #fff;
      padding: 100px 95px;
      font-family: Montserrat, sans-serif;
       width: 90%;
     height:0px;
      
      
  }
p {
    padding: 7px 0 7px 0;
    font-weight: 500;
    font-size: 10pt;
}
a {
    color: #656565;
    text-decoration:none;
}
a:hover{
    color: #abda0f;
    text-decoration: none;
}
h1 {
    font-weight:300;
    color: yellow;
    font-size:25pt;
    text-align: center;
    padding-left:5px;
    margin:15px 5px 28px 8px;
    text-transform: uppercase;
    font-family: Segoe Print, serif;
}
h2 {
    padding:1px;
    color: #ACACAC;
    font-size:9pt;
    font-weight:100;
    text-transform:uppercase;
}
form.bookorder{
    width:1200px;
    margin: 0px auto 0px auto;
    height:950px;
    background-color:#fff;
    background: url("images/44.jpg") ;
    padding:5px;
    -moz-border-radius:20px;
    -webkit-border-radius:20px;
}
form p{
    font-size: 12pt;
    clear:both;
    margin: 0;
    color:gray;
    padding:15px;
}
form.register fieldset.row1
{
    width:1195px;
    padding:5px;
    float:right;
    border-top:1px solid #F5F5F5;
    margin-left:130px;
}
form.register fieldset.row1 label{
    width:180px;
    float: left;
    text-align: right;
    margin-right: 6px;
    margin-top:0px;
}
form.register fieldset.row2
{
    border-top:1px solid #F1F1F1;
   
    height:515px;
    padding:5px;
    float:left;
}
form.register fieldset.row3
{
    border-top:1px solid #F1F1F1;
    padding:5px;
    float:right;
    margin-bottom:15px;
    width:500px;
}
form.register fieldset.row4
{
    border-top:1px solid #F1F1F1;
    
    padding:5px;
    float:left;
    clear:both;
    width:1200px;
}
form.register .infobox{
    float:right;
    margin-top:20px;
    border: 1px solid #F1F1F1;
    padding:5px;
    width:570px;
    height:125px;
    font-size:9px;
   
}
form.register legend
{
    color: #dbda0f;
    padding:2px;
    margin-left: 14px;
    font-weight:bold;
    font-size: 22px;
    font-weight:100;
}
form.register label{
    color:#a6d50f;
    width:98px;
    float: left;
    text-align: right;
    margin-right: 6px;
    margin-top:0px;
}
form.register label.optional{
    float: left;
    text-align: right;
    margin-right: 6px;
    margin-top:2px;
    color: #a6d50f;
}
form.register label.obinfo{
    float:right;
    padding:3px;
    font-style:italic;
}
form.register input{
    width: 140px;
    color:  black;
    float: left;
    margin-right: 1px;
}
form.register input.long{
    width: 247px;
    color: #505050;
}
form.register input.short{
    width: 40px;
    color: #505050;
}
form.register input[type=radio]
{
    float:left;
    width:35px;
}
form.register label.gender{
    margin-top:-1px;
    margin-bottom:2px;
    width:34px;
    float:left;
    text-align:left;
    line-height:19px;
}
input[type="text"], input[type="password"],input[type="email"] ,select[type="dropdown"],input[type=checkbox] {
    width: 80%;
    padding: 8px 0px 8px 34px;
    border: 1px solid black;
    outline: none;
    font-size: 18px;
    color: #fff;
    margin: 3px 0px;
    font-family: 'Roboto', sans-serif;
    
}
#content {
  
  margin-left:auto ;
  margin-right:auto ;
}
form.register input[type=text]
{
    border: 1px solid black;
    height: 18px;
   
}
form.register input[type=password]
{
    border: 1px solid black;
    height: 18px;
   
}
.button
{
    background: #abda0f url(images/bg3.jpg) repeat-x;
    padding: 18px 30px 18px;
    color: #fff;
    padding:7px;
    text-decoration: none;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
    -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
    text-shadow: 0 -1px 1px rgba(0,0,0,0.25);
    cursor: pointer;
    float:center;
    font-size:28px;
    margin-top:80px;
    margin-left:10px;
}
form.register input[type=text].year
{
    border: 1px solid black;
    height: 24px;
    width:50px;
    
}
form.register input[type=file]
{
    border: 1px black;
    height: 44px;
    width:220px;
    color: white;
    
}
form.register input[type=checkbox] {
    width:14px;
    margin-top:4px;
}
form.register select
{
    border: 1px solid black;
    width: 130px;
    float:left;
    margin-bottom:3px;
    color: #505050;
    margin-right:5px;
}
form.register select.date
{
    width: 40px;
}
input:focus, select:focus{
    background-color: #efffe0;
}
p.info{
    font-size:7pt;
    color: gray;
}
p.agreement{
    margin-left:15px;
}
p.agreement label{
    width:390px;
    text-align:left;
    margin-top:3px;
}
</style>
</head>
 <body>
 <%
 			String s=(String)session.getAttribute("franchiseesid");
// System.out.println("frid   --"+s);
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost/db","root","xxx");
             String sql="select distinct modelname from products where franchisorsId IN( select franchisorsId from franchisees where franchiseesId=?)";
             PreparedStatement pst=con.prepareStatement(sql);
             pst.setString(1,s);
             ResultSet rs=pst.executeQuery();
             String sql2="select distinct color from products where franchisorsId IN( select franchisorsId from franchisees where franchiseesId=?)";
             PreparedStatement pst2=con.prepareStatement(sql2);
             pst2.setString(1,s);
             ResultSet rs2=pst2.executeQuery(); 
     %>
 
 <div id="content">
        <form action="bookordersuccess.jsp" autocomplete="off"  class="register">
     <h1>BOOKORDER</h1>
           <a href="index.jsp" ><button style=width:70px;height:50px;margin-left:900px;color:white;background-color:#006A4E>HOME</button></a> 
           <a href="logout.jsp" ><button style=width:70px;height:50px;margin-left:10px;color:white;background-color:#006A4E>LOGOUT</button></a>
             
            <fieldset class="row1">
           		 <p> <h3><label>NO. of Items</label></h3>
             	<select name="itemsno" required="required" type="dropdown" style=width:130px;height:37px>
                        <option value="0" >Select No.</option>
                        <option value="1" >1</option> <option value="1" >2</option> <option value="1" >3</option>
                        <option value="2" >4</option> <option value="1" >5</option> <option value="1" >6</option>
                        <option value="1" >7</option> <option value="1" >8</option> <option value="1" >9</option>
                        <option value="1" >10</option> <option value="1" >11</option> <option value="1" >12</option>
                        <option value="1" >13</option> <option value="1" >14</option> <option value="1" >15</option>
                   </select>
                  </p>
              
               <h3><label>ModeleName *</label> <label>Color</label><label>Type  :</label>  <label>Quantity * </label></h3> 
               
               
                <p>
               <select name="modelname" required="required" type="dropdown" style=width:230px;height:37px>
           <option value=""> Model</option>
            <%
                while(rs.next())
                { 
                	String mname=rs.getString("modelname");
               	  %>
               	
                    <option value="<%=mname %>"> <%=mname %></option>
                             
               	 <%
               	 }
               %>
                 </select>
                   
                  <select name="color" required="required" type="dropdown" style=width:230px;height:37px>
                   <option value=""> Color</option>
                    <%
                while(rs2.next())
                { 
                	String cname=rs2.getString("color");
               	  %>
               	
                    <option value="<%=cname %>"> <%=cname %></option>
                             
               	 <%
               	 }
                    con.close();
               %>
                   </select>
                  
                  <select name="type" required="required" type="dropdown" style=width:180px;height:37px>
                        <option value="0" >Type</option>
                        <option value="2-wheeler" >2-wheeler</option>
                        <option value="4-wheeler" >4-wheeler</option>
                   </select>
                   <input type="text" name="quantity"  required="required"/>
                </p>
                <div><button class="button" type="submit">Order </button></div>
           
            </fieldset>
                
        </form>
        </div>
    </body>
</body>
</html>
