/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.73
 * Generated at: 2017-09-13 17:55:00 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class frreg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>Registration page</title>\r\n");
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
      out.write("    height: 100%;\r\n");
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
      out.write("h4 {\r\n");
      out.write("    padding:1px;\r\n");
      out.write("    color: #ACACAC;\r\n");
      out.write("    font-size:9pt;\r\n");
      out.write("    font-weight:100;\r\n");
      out.write("    text-transform:uppercase;\r\n");
      out.write("}\r\n");
      out.write("form.register{\r\n");
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
      out.write("    float:left;\r\n");
      out.write("    border-top:1px solid #F5F5F5;\r\n");
      out.write("    margin-top:-15px;\r\n");
      out.write("}\r\n");
      out.write("form.register fieldset.row1 label{\r\n");
      out.write("    width:180px;\r\n");
      out.write("    float: left;\r\n");
      out.write("    text-align: right;\r\n");
      out.write("    margin-right: 6px;\r\n");
      out.write("    margin-top:2px;\r\n");
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
      out.write("    margin-top:2px;\r\n");
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
      out.write("    width:45px;\r\n");
      out.write("    height:25px;\r\n");
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
      out.write("    margin-top:20px;\r\n");
      out.write("    margin-left:720px;\r\n");
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
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write(" <body>\r\n");
      out.write("  <a href=\"index.jsp\" ><button style=width:70px;height:50px;margin-left:1000px;color:white;background-color:#006A4E>HOME</button></a> \r\n");
      out.write("           <a href=\"login.jsp\" ><button style=width:70px;height:50px;margin-left:10px;color:white;background-color:#006A4E>LOGIN</button></a>\r\n");
      out.write("             \r\n");
      out.write("        <form action=\"frregsuccess.jsp\" autocomplete=\"off\"  class=\"register\">\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("     <h1>Franchisor Registration Form</h1>\r\n");
      out.write("             \r\n");
      out.write("            <fieldset class=\"row1\">\r\n");
      out.write("                <legend>Account Details\r\n");
      out.write("                </legend>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label>UserName *\r\n");
      out.write("                    </label>\r\n");
      out.write("                    \r\n");
      out.write("                    <input type=\"text\" name=\"username\"  pattern=[a-zA-Z]{1,15} title=\"Username should contain alphabets only. e.g. john\" class=\"long\" required=\"required\" />\r\n");
      out.write("                    <label>Email *\r\n");
      out.write("                    </label>\r\n");
      out.write("                    <input type=\"email\" name=\"email\" class=\"long\" required=\"required\"  />\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label>Password*\r\n");
      out.write("                    </label>\r\n");
      out.write("                    <input type=\"password\" name=\"passwd\" autocomplete=\"off\" pattern=(?=^.{8,}$)((?=.*\\d)|(?=.*\\W+))(?![.\\n])(?=.*[A-Z])(?=.*[a-z]).*$ title=\"Password (UpperCase, LowerCase, Number/SpecialChar and min 8 Chars)\" class=\"long\" required=\"required\"/>\r\n");
      out.write("                 <label>AadhaarNo. *\r\n");
      out.write("                    </label>\r\n");
      out.write("                    <input type=\"text\" name=\"adhar\"  pattern=[0-9]{12} maxlength=\"12\" class=\"long\" required=\"required\"/>\r\n");
      out.write("                    <label class=\"obinfo\">* obligatory fields\r\n");
      out.write("                    </label>\r\n");
      out.write("                 </p>\r\n");
      out.write("                 <p>\r\n");
      out.write("                  <label> Retype-Password*\r\n");
      out.write("                    </label>\r\n");
      out.write("                    <input type=\"password\" name=\"passwd2\" autocomplete=\"off\" pattern=(?=^.{8,}$)((?=.*\\d)|(?=.*\\W+))(?![.\\n])(?=.*[A-Z])(?=.*[a-z]).*$ title=\"Password (UpperCase, LowerCase, Number/SpecialChar and min 8 Chars)\" class=\"long\" required=\"required\"/>\r\n");
      out.write("               \r\n");
      out.write("                   \r\n");
      out.write("                </p>\r\n");
      out.write("            </fieldset>\r\n");
      out.write("            <fieldset class=\"row2\">\r\n");
      out.write("                <legend>Personal Details\r\n");
      out.write("                </legend>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label>FirstName *\r\n");
      out.write("                    </label>\r\n");
      out.write("                    <input type=\"text\" name=\"fname\"  class=\"long\" required=\"required\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label class=\"optional\">MiddleName \r\n");
      out.write("                    </label>\r\n");
      out.write("                    <input type=\"text\" name=\"mname\" value=\"\" class=\"long\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label class=\"optional\">LastName \r\n");
      out.write("                    </label>\r\n");
      out.write("                    <input type=\"text\" name=\"lname\" value=\"\" class=\"long\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label>Phone *\r\n");
      out.write("                    </label>\r\n");
      out.write("                    <input type=\"text\" name=\"mobile\" pattern=[0-9]{10} maxlength=\"10\" class=\"long\" required=\"required\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label>State *\r\n");
      out.write("                    </label>\r\n");
      out.write("                    <input type=\"text\" name=\"state\"  pattern=[a-zA-Z]{1,25} class=\"long\" required=\"required\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                \r\n");
      out.write("                <p>\r\n");
      out.write("                    <label>City *\r\n");
      out.write("                    </label>\r\n");
      out.write("                    <input type=\"text\" name=\"city\" pattern=[a-zA-Z]{1,25} class=\"long\" required=\"required\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label>Pincode *\r\n");
      out.write("                    </label>\r\n");
      out.write("                    <input type=\"text\" name=\"pin\" pattern=[0-9]{6} maxlength=\"6\" class=\"long\" required=\"required\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label class=\"optional\">Website\r\n");
      out.write("                    </label>\r\n");
      out.write("                    <input class=\"long\" name=\"url\" value=\"\" type=\"text\" value=\"http://\"/>\r\n");
      out.write("\r\n");
      out.write("                </p>\r\n");
      out.write("            </fieldset>\r\n");
      out.write("            <fieldset class=\"row3\">\r\n");
      out.write("                <legend>Further Information\r\n");
      out.write("                </legend>\r\n");
      out.write("                 <p>\r\n");
      out.write("                 <p>\r\n");
      out.write("                     <input type=\"radio\" name=\"gender\"  value=\"m\" checked><label>Male</label> \r\n");
      out.write("                     <input type=\"radio\" name=\"gender\" value=\"f\"> <label>Female</label>\r\n");
      out.write("                </p>\r\n");
      out.write("                 \r\n");
      out.write("                   <p>\r\n");
      out.write("                    <label>Birthdate *\r\n");
      out.write("                    </label>\r\n");
      out.write("                    <select  type=\"dropdown\" name=\"d\">\r\n");
      out.write("                       <option value=\"0\">Date\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"01\">01\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"02\">02\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"03\">03\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"04\">04\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"05\">05\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"06\">06\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"07\">07\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"08\">08\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"09\">09\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"10\">10\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"11\">11\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"12\">12\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"13\">13\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"14\">14\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"15\">15\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"16\">16\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"17\">17\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"18\">18\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"19\">19\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"20\">20\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"21\">21\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"22\">22\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"23\">23\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"24\">24\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"25\">25\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"26\">26\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"27\">27\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"28\">28\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"29\">29\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"30\">30\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"31\">31\r\n");
      out.write("                        </option>\r\n");
      out.write("                    </select>\r\n");
      out.write("                    <select type=\"dropdown\" name=\"m\">\r\n");
      out.write("                    <option value=\"0\">Month\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"01\">January\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"02\">February\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"03\">March\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"04\">April\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"05\">May\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"06\">June\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"07\">July\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"08\">August\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"09\">September\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"10\">October\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"11\">November\r\n");
      out.write("                        </option>\r\n");
      out.write("                        <option value=\"12\">December\r\n");
      out.write("                        </option>\r\n");
      out.write("                    </select>\r\n");
      out.write("                    <input class=\"year\" value=\"Year\" name=\"y\"   type=\"text\" maxlength=\"4\"  required onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Year';}\"/>eg.1989\r\n");
      out.write("                    \r\n");
      out.write("              </p>\r\n");
      out.write("                <p>\r\n");
      out.write("                    <label>Company\r\n");
      out.write("                           Name *\r\n");
      out.write("                    </label>\r\n");
      out.write("                    <input type=\"text\" name=\"companyname\" value=\"\" class=\"long\"/>\r\n");
      out.write("                </p>\r\n");
      out.write("              ");
      out.write(" \r\n");
      out.write("                \r\n");
      out.write("                <div class=\"infobox\"><h4>Helpful Information</h4>\r\n");
      out.write("                    <p>Here comes some explaining text, sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </fieldset>\r\n");
      out.write("            \r\n");
      out.write("            <fieldset class=\"row4\">\r\n");
      out.write("              \r\n");
      out.write("                <div><button class=\"button\" type=\"submit\">Register &raquo;</button></div>\r\n");
      out.write("                \r\n");
      out.write("            </fieldset>\r\n");
      out.write("            \r\n");
      out.write("        </form>\r\n");
      out.write("    </body>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
