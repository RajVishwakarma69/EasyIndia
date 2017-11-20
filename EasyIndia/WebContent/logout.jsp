 
  <%
session.setAttribute("username", null);
session.setAttribute("passwd", null);
session.setAttribute("user", null);
session.setAttribute("franchiseesID", null);
session.setAttribute("franchisorsID", null);
session.setAttribute("passwd", null);
session.invalidate();


response.sendRedirect("login.jsp");
%>
