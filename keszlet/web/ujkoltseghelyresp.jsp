<%--
  Created by IntelliJ IDEA.
  User: kalman
  Date: 2017.03.15.
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=iso-8859-2" language="java" %>
<html>
<head>
    <title>�j k�lts�ghely</title>
</head>
<body>
<%
    String name = request.getParameter("koltseghelyNeve");
    out.println(name);
    com.kalmanka.Koltseghelyek.insertKoltseghely(name);
%>
<br/>
<footer>
    <a href="torzsadatokkarb.html">T�rzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="koltseghelyekattekintese.jsp">K�lts�ghelyek �ttekint�se</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujkoltseghely.html">�j k�lts�ghely felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">F�oldal</a>
</footer>

</body>
</html>
