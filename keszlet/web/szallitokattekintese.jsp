<%@ page import="com.kalmanka.Szallitok" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: kalman
  Date: 2017.03.15.
  Time: 8:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=iso-8859-2" language="java" %>
<html>
<head>
    <title>Szállítók áttekintése</title>
</head>
<body>
<h1 align="center">Szállítók áttekintése</h1>
<br/>
<hr/>
<br/>

<table align="center" border="1">
    <thead>
    <tr><th>Szállítók</th></tr>
    </thead>
    <tbody>
    <%
        List<Szallitok> szallitokList = com.kalmanka.Szallitok.selectSzallitok();
        for (int i = 0; i < szallitokList.size(); i++){
            out.println("<tr><td>" + szallitokList.get(i).getSzallitoNeve() + "</td></tr>");
        }
    %>
    </tbody>
</table>
<br/>
<footer>
    <a href="torzsadatokkarb.html">Törzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="szallitokattekintese.jsp">Szállítók áttekintése</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujszallito.html">Új szállító felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">Fõoldal</a>
</footer>
</body>
</html>
