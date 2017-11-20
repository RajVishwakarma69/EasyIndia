<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<style type="text/css">
body p,h1,h2,h3,h4,h5,h6,a{
	font-size: 30px;
      text-transform: uppercase;
      color: red;
      font-weight: 600;
      margin-bottom: 30px;
      font-family: Segoe Print, serif;
}
body {/*--
	background:pink;
	*/
    background: url("images/Bugatti.jpg") no-repeat 62% 34%;
    background-size: cover;
	text-align:center;
}
/*--header--*/
.agileheader h1 {
    font-size: 51px;
    text-transform: uppercase;
    letter-spacing: 5px;
    color: #fff;
    font-weight: 400;
    margin: 20px 0px;
}
.ajay-main h2 {
	color: #fff;
    font-size: 29px;
    letter-spacing: 2px;
    text-transform: uppercase;
    padding-bottom: 15px;
}
.ajay-main {   
    width: 45%;
    margin: 0 auto;
    background:rgba(0, 0, 0, 0.3);
    padding: 42px 35px;
}
/*--//header--*/
/*--main--*/
input[type="text"], input[type="password"],select[type="dropdown"]{
    width: 40%;
    padding: 15px 0px 15px 42px;
    border: 1px solid #fff;
    outline: none;
    font-size: 18px;
    color: #fff;
    margin: 14px 3px;
    font-family: 'Roboto', sans-serif;
}
select[type="dropdown"] {
    background: url("images/person.png") no-repeat 10px 11px;
    background-size: 23px;
   background:rgba(0, 0, 0, 0.3);
    width:40%;
    
}
input[type="text"] {
    background: url("images/person.png") no-repeat 10px 11px;
    background-size: 24px;
}
input[type="password"] {
    background: url("images/pass.png") no-repeat 8px 9px;
    background-size: 28px;
}
.ajay-main span {
//font-weight: 600;
      font-style: ;
      //text-decoration:underline;
    font-size: 16px;
    color: #fff;
    float: left;
    width: 52%;
	margin-top: 8px;
	font-family: 'Roboto', sans-serif;
}
.ajay-main h6 {
    font-size: 16px;
    float: right;
    width: 37%;
	color: #fff;
    letter-spacing: 1px;
	margin-top: 8px;
	text-decoration:underline;
}
.ajay-main a {
    color: #fff;
	transition:0.5s all;
	-webkit-transition:0.5s all;
	-o-transition:0.5s all;
	-moz-transition:0.5s all;
	-ms-transition:0.5s all;
}

input[type="submit"] {
    padding: 12px 38px;
    font-size: 18px;
    text-transform: uppercase;
    letter-spacing: 2px;
    background: #003b64;
    color: white;
    border: none;
    outline: none;
    cursor: pointer;
    font-family: 'Roboto', sans-serif;
    margin: 45px auto 31px;
    transition: 0.5s all;
   
}
input[type="submit"]:hover {
	background:rgba(213, 38, 133, 0.64);
	transition:0.5s all;
	-webkit-transition:0.5s all;
	-o-transition:0.5s all;
	-moz-transition:0.5s all;
	-ms-transition:0.5s all;
}
.ajay-main p a {
    text-transform: uppercase;
    font-size: 18px;
	text-decoration:underline;
    letter-spacing: 1px;
    color: #fff;
    padding: 10px;
}
.ajay-main p {
    font-size: 17px;
    color: #fff;
}
/*--//main--*/

/*--footer--*/
.footer-w3l p {
    margin: 4em 0em;
    color: #fff;
    font-size: 15px;
    font-weight: 300;
    letter-spacing: 2px;
}
.footer-w3l a {
    color:rgba(208, 95, 216, 0.9);
}
.footer-w3l a:hover {
    color:rgba(19, 129, 206, 0.82);;
    text-decoration: underline;
}
/*--//footer--*/

</style>
</head>
<body>
<!--header-->
<div class="agileheader">
	<h1></h1>
</div>
<!--//header-->

<!--main-->
<div class="main-w3l">
<div class="ajay-main">
	<h3 bgcolor="red"><marquee scrollamount="5" width="70" >&lt;&lt;&lt;</marquee>LogIn Page<marquee scrollamount="5" direction="right" width="70">&gt;&gt;&gt;</marquee></h3>

	
		<form action="loginprocess.jsp" method="post">
			<label style=color:white>SELECT USER  :</label>
			<select value="user" name="user" type="dropdown" required="required">
                        
                        <option value="FRANCHISORS" name="FRANCHISORS">FRANCHISORS</option>
                        <option value="FRANCHISEES" name="FRANCHISEES">FRANCHISEES</option>
            </select>
            <br>
           <label style=color:white>USERNAME  : </label>  <input type="text" name="username" required="required"/> <br>
		   <label style=color:white>PASSWORD  : </label><input  type="password" name="passwd" required="required"/> <br>
		   
			<%--<span><input type="checkbox"style=color:red />Remember Me</span>
			 <h6><a href="#">Forgot Password?</a></h6>--%>
				<div class="clear"></div>
				
				<input type="submit" value="login" name="login"><br>
				
				
				
		</form>
	
</div>
</div>
<!--//main-->
<div class="footer-w3l">
		
		<p>Don't Have an Account ?<a href="index.jsp#Register"><strong>Register Now</strong></a></p>
		</div>
<!--footer-->
<div class="footer-w3l">
	<p>&copy; 2017 Smart Login Form. All rights reserved | Design by <a href="https://www.linkedin.com">ajay</a></p>
</div>
<!--//footer-->


</body>
</html>

