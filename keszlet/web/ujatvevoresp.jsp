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
    <title>�j �tvev�</title>
</head>
<body>
<%
    String name = request.getParameter("atvevoNeve");
    out.println(name);
    com.kalmanka.Atvevok.insertAtvevok(name);
%>
<br/>
<footer>
    <a href="torzsadatokkarb.html">T�rzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="atvevoktattekintese.jsp">�tvev�k �ttekint�se</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujatvevo.html">�j �tvev� felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">F�oldal</a>
</footer>

</body>
</html>
