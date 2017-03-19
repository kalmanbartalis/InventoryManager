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
    <title>Cikkek �ttekint�se</title>
</head>
<body>
<h1 align="center">Cikkek �ttekint�se</h1>
<br/>
<hr/>
<br/>

<table align="center" border="1">
    <thead>
    <tr><th>Cikk ID</th><th>Megnevez�s</th><th>Egys�g�r</th><th>Beszerz�s d�tuma</th></tr>
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
    <a href="torzsadatokkarb.html">T�rzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="cikkekattekintese.jsp">Cikkek �ttekint�se</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujcikk.jsp">�j cikk felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">F�oldal</a>
</footer>
</body>
</html>
