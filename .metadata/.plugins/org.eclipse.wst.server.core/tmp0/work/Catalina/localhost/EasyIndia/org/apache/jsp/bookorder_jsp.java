/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.73
 * Generated at: 2017-09-13 17:42:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class bookorder_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html >\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Booking page</title>\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("*/*Set's border, padding and margin to 0 for all values*/\r\n");
      out.write("{\r\n");
      out.write("    padding: 0;\r\n");
      out.write("    margin: 0;\r\n");
      out.write("    border: 0;\r\n");
      out.write("}\r\n");
      out.write("body, html {\r\n");
      out.write("    color: #373C40;\r\n");
      out.write("    font-family: Verdana,Arial, Helvetica, sans-serif;\r\n");
      out.write("    height: 10%;\r\n");
      out.write("   background: url(\"images/bg3.jpg\") ;\r\n");
      out.write("    margin:10px;\r\n");
      out.write("}\r\n");
      out.write("body {\r\n");
      out.write("    font-size: 70%;\r\n");
      out.write("    \r\n");
      out.write("}\r\n");
      out.write(".jumbotron {\r\n");
      out.write("       margin-top: -20px;\r\n");
      out.write("    /*  background: url(\"images/fms2.PNG\")no-repeat  20px 6px ;*/\r\n");
      out.write("    background-color:gray;\r\n");
      out.write("      color: #fff;\r\n");
      out.write("      padding: 100px 95px;\r\n");
      out.write("      font-family: Montserrat, sans-serif;\r\n");
      out.write("       width: 90%;\r\n");
      out.write("     height:0px;\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("  }\r\n");
      out.write("p {\r\n");
      out.write("    padding: 7px 0 7px 0;\r\n");
      out.write("    font-weight: 500;\r\n");
      out.write("    font-size: 10pt;\r\n");
      out.write("}\r\n");
      out.write("a {\r\n");
      out.write("    color: #656565;\r\n");
      out.write("    text-decoration:none;\r\n");
      out.write("}\r\n");
      out.write("a:hover{\r\n");
      out.write("    color: #abda0f;\r\n");
      out.write("    text-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("h1 {\r\n");
      out.write("    font-weight:300;\r\n");
      out.write("    color: yellow;\r\n");
      out.write("    font-size:25pt;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    padding-left:5px;\r\n");
      out.write("    margin:15px 5px 28px 8px;\r\n");
      out.write("    text-transform: uppercase;\r\n");
      out.write("    font-family: Segoe Print, serif;\r\n");
      out.write("}\r\n");
      out.write("h2 {\r\n");
      out.write("    padding:1px;\r\n");
      out.write("    color: #ACACAC;\r\n");
      out.write("    font-size:9pt;\r\n");
      out.write("    font-weight:100;\r\n");
      out.write("    text-transform:uppercase;\r\n");
      out.write("}\r\n");
      out.write("form.bookorder{\r\n");
      out.write("    width:1200px;\r\n");
      out.write("    margin: 0px auto 0px auto;\r\n");
      out.write("    height:950px;\r\n");
      out.write("    background-color:#fff;\r\n");
      out.write("    background: url(\"images/44.jpg\") ;\r\n");
      out.write("    padding:5px;\r\n");
      out.write("    -moz-border-radius:20px;\r\n");
      out.write("    -webkit-border-radius:20px;\r\n");
      out.write("}\r\n");
      out.write("form p{\r\n");
      out.write("    font-size: 12pt;\r\n");
      out.write("    clear:both;\r\n");
      out.write("    margin: 0;\r\n");
      out.write("    color:gray;\r\n");
      out.write("    padding:15px;\r\n");
      out.write("}\r\n");
      out.write("form.register fieldset.row1\r\n");
      out.write("{\r\n");
      out.write("    width:1195px;\r\n");
      out.write("    padding:5px;\r\n");
      out.write("    float:right;\r\n");
      out.write("    border-top:1px solid #F5F5F5;\r\n");
      out.write("    margin-left:130px;\r\n");
      out.write("}\r\n");
      out.write("form.register fieldset.row1 label{\r\n");
      out.write("    width:180px;\r\n");
      out.write("    float: left;\r\n");
      out.write("    text-align: right;\r\n");
      out.write("    margin-right: 6px;\r\n");
      out.write("    margin-top:0px;\r\n");
      out.write("}\r\n");
      out.write("form.register fieldset.row2\r\n");
      out.write("{\r\n");
      out.write("    border-top:1px solid #F1F1F1;\r\n");
      out.write("   \r\n");
      out.write("    height:515px;\r\n");
      out.write("    padding:5px;\r\n");
      out.write("    float:left;\r\n");
      out.write("}\r\n");
      out.write("form.register fieldset.row3\r\n");
      out.write("{\r\n");
      out.write("    border-top:1px solid #F1F1F1;\r\n");
      out.write("    padding:5px;\r\n");
      out.write("    float:right;\r\n");
      out.write("    margin-bottom:15px;\r\n");
      out.write("    width:500px;\r\n");
      out.write("}\r\n");
      out.write("form.register fieldset.row4\r\n");
      out.write("{\r\n");
      out.write("    border-top:1px solid #F1F1F1;\r\n");
      out.write("    \r\n");
      out.write("    padding:5px;\r\n");
      out.write("    float:left;\r\n");
      out.write("    clear:both;\r\n");
      out.write("    width:1200px;\r\n");
      out.write("}\r\n");
      out.write("form.register .infobox{\r\n");
      out.write("    float:right;\r\n");
      out.write("    margin-top:20px;\r\n");
      out.write("    border: 1px solid #F1F1F1;\r\n");
      out.write("    padding:5px;\r\n");
      out.write("    width:570px;\r\n");
      out.write("    height:125px;\r\n");
      out.write("    font-size:9px;\r\n");
      out.write("   \r\n");
      out.write("}\r\n");
      out.write("form.register legend\r\n");
      out.write("{\r\n");
      out.write("    color: #dbda0f;\r\n");
      out.write("    padding:2px;\r\n");
      out.write("    margin-left: 14px;\r\n");
      out.write("    font-weight:bold;\r\n");
      out.write("    font-size: 22px;\r\n");
      out.write("    font-weight:100;\r\n");
      out.write("}\r\n");
      out.write("form.register label{\r\n");
      out.write("    color:#a6d50f;\r\n");
      out.write("    width:98px;\r\n");
      out.write("    float: left;\r\n");
      out.write("    text-align: right;\r\n");
      out.write("    margin-right: 6px;\r\n");
      out.write("    margin-top:0px;\r\n");
      out.write("}\r\n");
      out.write("form.register label.optional{\r\n");
      out.write("    float: left;\r\n");
      out.write("    text-align: right;\r\n");
      out.write("    margin-right: 6px;\r\n");
      out.write("    margin-top:2px;\r\n");
      out.write("    color: #a6d50f;\r\n");
      out.write("}\r\n");
      out.write("form.register label.obinfo{\r\n");
      out.write("    float:right;\r\n");
      out.write("    padding:3px;\r\n");
      out.write("    font-style:italic;\r\n");
      out.write("}\r\n");
      out.write("form.register input{\r\n");
      out.write("    width: 140px;\r\n");
      out.write("    color:  black;\r\n");
      out.write("    float: left;\r\n");
      out.write("    margin-right: 1px;\r\n");
      out.write("}\r\n");
      out.write("form.register input.long{\r\n");
      out.write("    width: 247px;\r\n");
      out.write("    color: #505050;\r\n");
      out.write("}\r\n");
      out.write("form.register input.short{\r\n");
      out.write("    width: 40px;\r\n");
      out.write("    color: #505050;\r\n");
      out.write("}\r\n");
      out.write("form.register input[type=radio]\r\n");
      out.write("{\r\n");
      out.write("    float:left;\r\n");
      out.write("    width:35px;\r\n");
      out.write("}\r\n");
      out.write("form.register label.gender{\r\n");
      out.write("    margin-top:-1px;\r\n");
      out.write("    margin-bottom:2px;\r\n");
      out.write("    width:34px;\r\n");
      out.write("    float:left;\r\n");
      out.write("    text-align:left;\r\n");
      out.write("    line-height:19px;\r\n");
      out.write("}\r\n");
      out.write("input[type=\"text\"], input[type=\"password\"],input[type=\"email\"] ,select[type=\"dropdown\"],input[type=checkbox] {\r\n");
      out.write("    width: 80%;\r\n");
      out.write("    padding: 8px 0px 8px 34px;\r\n");
      out.write("    border: 1px solid black;\r\n");
      out.write("    outline: none;\r\n");
      out.write("    font-size: 18px;\r\n");
      out.write("    color: #fff;\r\n");
      out.write("    margin: 3px 0px;\r\n");
      out.write("    font-family: 'Roboto', sans-serif;\r\n");
      out.write("    \r\n");
      out.write("}\r\n");
      out.write("#content {\r\n");
      out.write("  \r\n");
      out.write("  margin-left:auto ;\r\n");
      out.write("  margin-right:auto ;\r\n");
      out.write("}\r\n");
      out.write("form.register input[type=text]\r\n");
      out.write("{\r\n");
      out.write("    border: 1px solid black;\r\n");
      out.write("    height: 18px;\r\n");
      out.write("   \r\n");
      out.write("}\r\n");
      out.write("form.register input[type=password]\r\n");
      out.write("{\r\n");
      out.write("    border: 1px solid black;\r\n");
      out.write("    height: 18px;\r\n");
      out.write("   \r\n");
      out.write("}\r\n");
      out.write(".button\r\n");
      out.write("{\r\n");
      out.write("    background: #abda0f url(images/bg3.jpg) repeat-x;\r\n");
      out.write("    padding: 18px 30px 18px;\r\n");
      out.write("    color: #fff;\r\n");
      out.write("    padding:7px;\r\n");
      out.write("    text-decoration: none;\r\n");
      out.write("    -moz-border-radius: 5px;\r\n");
      out.write("    -webkit-border-radius: 5px;\r\n");
      out.write("    -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n");
      out.write("    -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n");
      out.write("    text-shadow: 0 -1px 1px rgba(0,0,0,0.25);\r\n");
      out.write("    cursor: pointer;\r\n");
      out.write("    float:center;\r\n");
      out.write("    font-size:28px;\r\n");
      out.write("    margin-top:80px;\r\n");
      out.write("    margin-left:10px;\r\n");
      out.write("}\r\n");
      out.write("form.register input[type=text].year\r\n");
      out.write("{\r\n");
      out.write("    border: 1px solid black;\r\n");
      out.write("    height: 24px;\r\n");
      out.write("    width:50px;\r\n");
      out.write("    \r\n");
      out.write("}\r\n");
      out.write("form.register input[type=file]\r\n");
      out.write("{\r\n");
      out.write("    border: 1px black;\r\n");
      out.write("    height: 44px;\r\n");
      out.write("    width:220px;\r\n");
      out.write("    color: white;\r\n");
      out.write("    \r\n");
      out.write("}\r\n");
      out.write("form.register input[type=checkbox] {\r\n");
      out.write("    width:14px;\r\n");
      out.write("    margin-top:4px;\r\n");
      out.write("}\r\n");
      out.write("form.register select\r\n");
      out.write("{\r\n");
      out.write("    border: 1px solid black;\r\n");
      out.write("    width: 130px;\r\n");
      out.write("    float:left;\r\n");
      out.write("    margin-bottom:3px;\r\n");
      out.write("    color: #505050;\r\n");
      out.write("    margin-right:5px;\r\n");
      out.write("}\r\n");
      out.write("form.register select.date\r\n");
      out.write("{\r\n");
      out.write("    width: 40px;\r\n");
      out.write("}\r\n");
      out.write("input:focus, select:focus{\r\n");
      out.write("    background-color: #efffe0;\r\n");
      out.write("}\r\n");
      out.write("p.info{\r\n");
      out.write("    font-size:7pt;\r\n");
      out.write("    color: gray;\r\n");
      out.write("}\r\n");
      out.write("p.agreement{\r\n");
      out.write("    margin-left:15px;\r\n");
      out.write("}\r\n");
      out.write("p.agreement label{\r\n");
      out.write("    width:390px;\r\n");
      out.write("    text-align:left;\r\n");
      out.write("    margin-top:3px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write(" <body>\r\n");
      out.write(" ");

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
     
      out.write("\r\n");
      out.write(" \r\n");
      out.write(" <div id=\"content\">\r\n");
      out.write("        <form action=\"bookordersuccess.jsp\" autocomplete=\"off\"  class=\"register\">\r\n");
      out.write("     <h1>BOOKORDER</h1>\r\n");
      out.write("           <a href=\"index.jsp\" ><button style=width:70px;height:50px;margin-left:900px;color:white;background-color:#006A4E>HOME</button></a> \r\n");
      out.write("           <a href=\"logout.jsp\" ><button style=width:70px;height:50px;margin-left:10px;color:white;background-color:#006A4E>LOGOUT</button></a>\r\n");
      out.write("             \r\n");
      out.write("            <fieldset class=\"row1\">\r\n");
      out.write("           \t\t <p> <h3><label>NO. of Items</label></h3>\r\n");
      out.write("             \t<select name=\"itemsno\" required=\"required\" type=\"dropdown\" style=width:130px;height:37px>\r\n");
      out.write("                        <option value=\"0\" >Select No.</option>\r\n");
      out.write("                        <option value=\"1\" >1</option> <option value=\"1\" >2</option> <option value=\"1\" >3</option>\r\n");
      out.write("                        <option value=\"2\" >4</option> <option value=\"1\" >5</option> <option value=\"1\" >6</option>\r\n");
      out.write("                        <option value=\"1\" >7</option> <option value=\"1\" >8</option> <option value=\"1\" >9</option>\r\n");
      out.write("                        <option value=\"1\" >10</option> <option value=\"1\" >11</option> <option value=\"1\" >12</option>\r\n");
      out.write("                        <option value=\"1\" >13</option> <option value=\"1\" >14</option> <option value=\"1\" >15</option>\r\n");
      out.write("                   </select>\r\n");
      out.write("                  </p>\r\n");
      out.write("              \r\n");
      out.write("               <h3><label>ModeleName *</label> <label>Color</label><label>Type  :</label>  <label>Quantity * </label></h3> \r\n");
      out.write("               \r\n");
      out.write("               \r\n");
      out.write("                <p>\r\n");
      out.write("               <select name=\"modelname\" required=\"required\" type=\"dropdown\" style=width:230px;height:37px>\r\n");
      out.write("           <option value=\"\"> Model</option>\r\n");
      out.write("            ");

                while(rs.next())
                { 
                	String mname=rs.getString("modelname");
               	  
      out.write("\r\n");
      out.write("               \t\r\n");
      out.write("                    <option value=\"");
      out.print(mname );
      out.write('"');
      out.write('>');
      out.write(' ');
      out.print(mname );
      out.write("</option>\r\n");
      out.write("                             \r\n");
      out.write("               \t ");

               	 }
               
      out.write("\r\n");
      out.write("                 </select>\r\n");
      out.write("                   \r\n");
      out.write("                  <select name=\"color\" required=\"required\" type=\"dropdown\" style=width:230px;height:37px>\r\n");
      out.write("                   <option value=\"\"> Color</option>\r\n");
      out.write("                    ");

                while(rs2.next())
                { 
                	String cname=rs2.getString("color");
               	  
      out.write("\r\n");
      out.write("               \t\r\n");
      out.write("                    <option value=\"");
      out.print(cname );
      out.write('"');
      out.write('>');
      out.write(' ');
      out.print(cname );
      out.write("</option>\r\n");
      out.write("                             \r\n");
      out.write("               \t ");

               	 }
                    con.close();
               
      out.write("\r\n");
      out.write("                   </select>\r\n");
      out.write("                  \r\n");
      out.write("                  <select name=\"type\" required=\"required\" type=\"dropdown\" style=width:180px;height:37px>\r\n");
      out.write("                        <option value=\"0\" >Type</option>\r\n");
      out.write("                        <option value=\"2-wheeler\" >2-wheeler</option>\r\n");
      out.write("                        <option value=\"4-wheeler\" >4-wheeler</option>\r\n");
      out.write("                   </select>\r\n");
      out.write("                   <input type=\"text\" name=\"quantity\"  required=\"required\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <div><button class=\"button\" type=\"submit\">Order </button></div>\r\n");
      out.write("           \r\n");
      out.write("            </fieldset>\r\n");
      out.write("                \r\n");
      out.write("        </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
