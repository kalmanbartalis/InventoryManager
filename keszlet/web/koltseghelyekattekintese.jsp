<%@ page import="com.kalmanka.Koltseghelyek" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: kalman
  Date: 2017.03.15.
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=iso-8859-2" language="java" %>
<html>
<head>
    <title>K�lts�ghelyek �ttekint�se</title>
</head>
<body>
<h1 align="center">K�lts�ghelyek �ttekint�se</h1>
<br/>
<hr/>
<br/>

<table align="center" border="1">
    <thead>
    <tr><th>K�lts�ghelyek</th></tr>
    </thead>
    <tbody>
    <%
        List<Koltseghelyek> koltseghelyekList = com.kalmanka.Koltseghelyek.selectKoltseghelyek();
        for (int i = 0; i < koltseghelyekList.size(); i++){
            out.println("<tr><td>" + koltseghelyekList.get(i).getKoltseghelyNeve() + "</td></tr>");
        }
    %>
    </tbody>
</table>
<br/>
<footer>
    <a href="torzsadatokkarb.html">T�rzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="koltseghelyekattekintese.jsp">K�lts�ghelyek �ttekint�se</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujkoltseghely.html">�j k�lts�ghely felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">F�oldal</a>
</footer>
</body>
</html>
