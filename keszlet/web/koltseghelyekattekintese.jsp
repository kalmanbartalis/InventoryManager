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
    <title>Költséghelyek áttekintése</title>
</head>
<body>
<h1 align="center">Költséghelyek áttekintése</h1>
<br/>
<hr/>
<br/>

<table align="center" border="1">
    <thead>
    <tr><th>Költséghelyek</th></tr>
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
    <a href="torzsadatokkarb.html">Törzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="koltseghelyekattekintese.jsp">Költséghelyek áttekintése</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujkoltseghely.html">Új költséghely felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">Fõoldal</a>
</footer>
</body>
</html>
