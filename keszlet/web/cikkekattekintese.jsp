<%@ page import="java.util.List" %>
<%@ page import="com.kalmanka.Cikkek" %>
<%--
  Created by IntelliJ IDEA.
  User: kalman
  Date: 2017.03.15.
  Time: 4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=iso-8859-2" language="java" %>
<html>
<head>
    <title>Cikkek áttekintése</title>
</head>
<body>
<h1 align="center">Cikkek áttekintése</h1>
<br/>
<hr/>
<br/>

<table align="center" border="1">
    <thead>
    <tr><th>Cikk ID</th><th>Megnevezés</th><th>Egységár</th><th>Beszerzés dátuma</th></tr>
    </thead>
    <tbody>
    <%
        List<Cikkek> cikkList = com.kalmanka.Cikkek.selectCikkek();
        for (int i = 0; i < cikkList.size(); i++){
            out.println("<tr><td>" + cikkList.get(i).getCikkID() + "</td><td>" + cikkList.get(i).getCikkNeve() + "</td><td>" + cikkList.get(i).getEgysegAr() + "</td><td>" + cikkList.get(i).getDatum() + "</td></tr>");
        }
    %>
    </tbody>
</table>
<br/>
<footer>
    <a href="torzsadatokkarb.html">Törzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="cikkekattekintese.jsp">Cikkek áttekintése</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujcikk.jsp">Új cikk felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">Fõoldal</a>
</footer>
</body>
</html>
