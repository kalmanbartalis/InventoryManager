<%--
  Created by IntelliJ IDEA.
  User: kalman
  Date: 2017.03.19.
  Time: 3:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=iso-8859-2" language="java" %>
<html>
<head>
    <title>Új Raktáros</title>
</head>
<body>
<%
    String name = request.getParameter("raktarosNeve");
    out.println(name);
    com.kalmanka.Raktarosok.insertRaktarosok(name);
%>
<br/>
<footer>
    <a href="torzsadatokkarb.html">Törzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="raktarosokattekintese.jsp">Raktárosok áttekintése</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujraktaros.html">Új raktáros felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">Fõoldal</a>
</footer>

</body>
</html>