<%--
  Created by IntelliJ IDEA.
  User: kalman
  Date: 2017.03.15.
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=iso-8859-2" language="java" %>
<html>
<head>
    <title>Új költséghely</title>
</head>
<body>
<%
    String name = request.getParameter("koltseghelyNeve");
    out.println(name);
    com.kalmanka.Koltseghelyek.insertKoltseghely(name);
%>
<br/>
<footer>
    <a href="torzsadatokkarb.html">Törzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="koltseghelyekattekintese.jsp">Költséghelyek áttekintése</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujkoltseghely.html">Új költséghely felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">Fõoldal</a>
</footer>

</body>
</html>
