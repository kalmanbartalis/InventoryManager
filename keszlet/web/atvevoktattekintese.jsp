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
    <title>�tvev�k �ttekint�se</title>
</head>
<body>
<h1 align="center">�tvev�k �ttekint�se</h1>
<br/>
<hr/>
<br/>

<table align="center" border="1">
    <thead>
    <tr><th>�tvev�k</th></tr>
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
    <a href="torzsadatokkarb.html">T�rzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="atvevoktattekintese.jsp">�tvev�k �ttekint�se</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujatvevo.html">�j �tvev� felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">F�oldal</a>
</footer>
</body>
</html>

