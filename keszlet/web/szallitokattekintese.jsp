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
    <title>Sz�ll�t�k �ttekint�se</title>
</head>
<body>
<h1 align="center">Sz�ll�t�k �ttekint�se</h1>
<br/>
<hr/>
<br/>

<table align="center" border="1">
    <thead>
    <tr><th>Sz�ll�t�k</th></tr>
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
    <a href="torzsadatokkarb.html">T�rzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="szallitokattekintese.jsp">Sz�ll�t�k �ttekint�se</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujszallito.html">�j sz�ll�t� felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">F�oldal</a>
</footer>
</body>
</html>
