<%@ page import="com.kalmanka.Raktarosok" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: kalman
  Date: 2017.03.19.
  Time: 3:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=iso-8859-2" language="java" %>
<html>
<head>
    <title>Rakt�rosok �ttekint�se</title>
</head>
<body>
<h1 align="center">Rakt�rosok �ttekint�se</h1>
<br/>
<hr/>
<br/>

<table align="center" border="1">
    <thead>
    <tr><th>Rakt�rosok</th></tr>
    </thead>
    <tbody>
    <%
        List<Raktarosok> raktarosokList = com.kalmanka.Raktarosok.selectRaktarosok();
        for (int i = 0; i < raktarosokList.size(); i++){
            out.println("<tr><td>" + raktarosokList.get(i).getRaktarosNeve() + "</td></tr>");
        }
    %>
    </tbody>
</table>
<br/>
<footer>
    <a href="torzsadatokkarb.html">T�rzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="raktarosokattekintese.jsp">Rakt�rosok �ttekint�se</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujraktaros.html">�j rakt�ros felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">F�oldal</a>
</footer>
</body>
</html>
