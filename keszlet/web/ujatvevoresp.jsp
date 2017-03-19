<%--
  Created by IntelliJ IDEA.
  User: kalman
  Date: 2017.03.19.
  Time: 3:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=iso-8859-2" language="java" %>
<html>
<head>
    <title>Új Átvevõ</title>
</head>
<body>
<%
    String name = request.getParameter("atvevoNeve");
    out.println(name);
    com.kalmanka.Atvevok.insertAtvevok(name);
%>
<br/>
<footer>
    <a href="torzsadatokkarb.html">Törzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="atvevoktattekintese.jsp">Átvevõk áttekintése</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujatvevo.html">Új átvevõ felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">Fõoldal</a>
</footer>

</body>
</html>
