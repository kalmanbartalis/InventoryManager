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
    <title>�j Rakt�ros</title>
</head>
<body>
<%
    String name = request.getParameter("raktarosNeve");
    out.println(name);
    com.kalmanka.Raktarosok.insertRaktarosok(name);
%>
<br/>
<footer>
    <a href="torzsadatokkarb.html">T�rzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="raktarosokattekintese.jsp">Rakt�rosok �ttekint�se</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujraktaros.html">�j rakt�ros felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">F�oldal</a>
</footer>

</body>
</html>