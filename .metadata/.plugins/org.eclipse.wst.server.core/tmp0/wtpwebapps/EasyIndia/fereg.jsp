<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration page</title>
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
    height: 100%;
   background: url("images/bg3.jpg") ;
    margin:10px;
}
body {
    font-size: 70%;
    
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
h4 {
    padding:1px;
    color: #ACACAC;
    font-size:9pt;
    font-weight:100;
    text-transform:uppercase;
}
form.register{
    width:1200px;
    margin: 20px auto 0px auto;
    height:1100px;
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
    float:left;
    border-top:1px solid #F5F5F5;
    margin-bottom:15px;
}
form.register fieldset.row1 label{
    width:180px;
    float: left;
    text-align: right;
    margin-right: 6px;
    margin-top:2px;
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
    margin-top:2px;
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
    margin-top:-50px;
    margin-left:720px;
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
 <body>    
    <a href="index.jsp" ><button style=width:70px;height:50px;margin-left:1000px;color:white;background-color:#006A4E>HOME</button></a> 
           <a href="login.jsp" ><button style=width:70px;height:50px;margin-left:10px;color:white;background-color:#006A4E>LOGIN</button></a>
           
        <form action="feregsuccess.jsp" autocomplete="off"  class="register" enctype="multipart/form-data">
           <h1>Franchisee Registration Form</h1>
           <fieldset class="row1">
                <legend>Account Details
                </legend>
                <p>
                    <label>UserName *
                    </label>
                    
                    <input type="text" name="username"  pattern=[a-zA-Z]{1,15} title="Username should contain alphabets only. e.g. john" class="long" required="required" />
                    <label>Email *
                    </label>
                    <input type="email" name="email" class="long" required="required"  />
                </p>
                <p>
                    <label>Password*
                    </label>
                    <input type="password" name="passwd" autocomplete="off" pattern=(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$ title="Password (UpperCase, LowerCase, Number/SpecialChar and min 8 Chars)" class="long" required="required"/>
                   <label>AadhaarNo. *
                    </label>
                    <input type="text" name="adhar"  pattern=[0-9]{12} maxlength="12" class="long" required="required"/>
                    <label class="obinfo">* obligatory fields
                    </label>
                   </p>
                  <p>
                  <label>Retype-Password*
                    </label>
                    <input type="password" name="passwd2" autocomplete="off" pattern=(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$ title="Password (UpperCase, LowerCase, Number/SpecialChar and min 8 Chars)" class="long" required="required"/>
                 
                    
                </p>
            </fieldset>
            <fieldset class="row2">
                <legend>Personal Details
                </legend>
                <p>
                    <label>FirstName *
                    </label>
                    <input type="text" name="fname"  class="long" required="required"/>
                </p>
                <p>
                    <label class="optional">MiddleName 
                    </label>
                    <input type="text" name="mname" value="" class="long"/>
                </p>
                <p>
                    <label class="optional">LastName 
                    </label>
                    <input type="text" name="lname" value="" class="long"/>
                </p>
                <p>
                    <label>Phone *
                    </label>
                    <input type="text" name="mobile" pattern=[0-9]{10} maxlength="10" class="long" required="required"/>
                </p>
                <p>
                  <label>State *
                    </label>
                    <input type="text" name="state"  pattern=[a-zA-Z]{1,25} class="long" required="required"/>
                </p>
                
                <p>
                    <label>City *
                    </label>
                    <input type="text" name="city" pattern=[a-zA-Z]{1,25} class="long" required="required"/>
                </p>
                <p>
                    <label>Pincode *
                    </label>
                    <input type="text" name="pin" pattern=[0-9]{6} maxlength="6" class="long" required="required"/>
                </p>
                
            </fieldset>            
            <fieldset class="row3">
                <legend>Further Information
                </legend>
                <p>
                     <input type="radio" name="gender" value="m" checked> Male<br>
                     <input type="radio" name="gender" value="f"> Female
                </p> 
                  <p>
                    <label>Birthdate *
                    </label>
                    <select  type="dropdown" name="d">
                       <option value="0">Date
                        </option>
                        <option value="01">01
                        </option>
                        <option value="02">02
                        </option>
                        <option value="03">03
                        </option>
                        <option value="04">04
                        </option>
                        <option value="05">05
                        </option>
                        <option value="06">06
                        </option>
                        <option value="07">07
                        </option>
                        <option value="08">08
                        </option>
                        <option value="09">09
                        </option>
                        <option value="10">10
                        </option>
                        <option value="11">11
                        </option>
                        <option value="12">12
                        </option>
                        <option value="13">13
                        </option>
                        <option value="14">14
                        </option>
                        <option value="15">15
                        </option>
                        <option value="16">16
                        </option>
                        <option value="17">17
                        </option>
                        <option value="18">18
                        </option>
                        <option value="19">19
                        </option>
                        <option value="20">20
                        </option>
                        <option value="21">21
                        </option>
                        <option value="22">22
                        </option>
                        <option value="23">23
                        </option>
                        <option value="24">24
                        </option>
                        <option value="25">25
                        </option>
                        <option value="26">26
                        </option>
                        <option value="27">27
                        </option>
                        <option value="28">28
                        </option>
                        <option value="29">29
                        </option>
                        <option value="30">30
                        </option>
                        <option value="31">31
                        </option>
                    </select>
                    <select type="dropdown" name="m">
                    <option value="0">Month
                        </option>
                        <option value="01">January
                        </option>
                        <option value="02">February
                        </option>
                        <option value="03">March
                        </option>
                        <option value="04">April
                        </option>
                        <option value="05">May
                        </option>
                        <option value="06">June
                        </option>
                        <option value="07">July
                        </option>
                        <option value="08">August
                        </option>
                        <option value="09">September
                        </option>
                        <option value="10">October
                        </option>
                        <option value="11">November
                        </option>
                        <option value="12">December
                        </option>
                    </select>
                    <input class="year" value="Year" name="y"   type="text" maxlength="4"  required onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Year';}"/>eg.1989
                    
              </p>
                 <p><%
                 Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost/db","root","xxx");
                String sql="select companyname from franchisors";
               Statement st=con.createStatement();
              ResultSet rs=st.executeQuery(sql);
               %> <label>Company *  
           	             Name    :
           </label>
           <select name="companyname" style=text-transform:uppercase;width:65%;padding:8px;border:1pxsolidblack;font-size:18px;font-family:Roboto,sans-serif>
             
   
   
           <%
                while(rs.next())
                { 
                	String cname=rs.getString("companyname");
               	  %>
               	
                    <option value="<%=cname %>"> <%=cname %></option>
                             
               	 <%
               	 }
           con.close();
                 %>
                </select>
                </p>   
              <%--  <p>
                    <label>Photo *
                    </label>
                    <input type="file" name="image"/>
                </p>--%>  
                
                <div class="infobox"><h4>Helpful Information</h4>
                    <p>Here comes some explaining text, sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                </div>
            </fieldset>
            <fieldset class="row4">
                <legend>Terms and Mailing
                </legend>
                <p class="agreement">
                    <input type="checkbox" value=""/>
                    <label>*  I accept the <a href="#">Terms and Conditions</a></label>
                </p>
                <p class="agreement">
                    <input type="checkbox" value=""/>
                    <label>I want to receive personalized offers by your site</label>
                </p>
                
                <div><button type="submit" class="button">Register &raquo;</button></div>
                
            </fieldset>
            
        </form>
    </body>
</body>
</html>