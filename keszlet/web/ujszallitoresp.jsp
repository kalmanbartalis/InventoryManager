<%--
  Created by IntelliJ IDEA.
  User: kalman
  Date: 2017.03.19.
  Time: 3:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=iso-8859-2" language="java" %>
<html>
<head>
    <title>Új Szállító</title>
</head>
<body>
<%
    String name = request.getParameter("szallitoNeve");
    out.println(name);
    com.kalmanka.Szallitok.insertSzallito(name);
%>
<br/>
<footer>
    <a href="torzsadatokkarb.html">Törzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="szallitokattekintese.jsp">Szállítók áttekintése</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujszallito.html">Új szállító felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">Fõoldal</a>
</footer>

</body>
</html>
