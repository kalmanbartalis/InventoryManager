<%@ page import="com.kalmanka.Atvevok" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: kalman
  Date: 2017.03.19.
  Time: 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=iso-8859-2" language="java" %>
<html>
<head>
    <title>Átvevõk áttekintése</title>
</head>
<body>
<h1 align="center">Átvevõk áttekintése</h1>
<br/>
<hr/>
<br/>

<table align="center" border="1">
    <thead>
    <tr><th>Átvevõk</th></tr>
    </thead>
    <tbody>
    <%
        List<Atvevok> atvevokList = com.kalmanka.Atvevok.selectAtvevok();
        for (int i = 0; i < atvevokList.size(); i++){
            out.println("<tr><td>" + atvevokList.get(i).getAtvevoNeve() + "</td></tr>");
        }
    %>
    </tbody>
</table>
<br/>
<footer>
    <a href="torzsadatokkarb.html">Törzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="atvevoktattekintese.jsp">Átvevõk áttekintése</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujatvevo.html">Új átvevõ felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">Fõoldal</a>
</footer>
</body>
</html>

