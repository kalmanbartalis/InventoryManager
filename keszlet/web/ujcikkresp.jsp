<%@ page import="com.kalmanka.Szallitok" %>
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
    <title>Új Cikk</title>
</head>
<body>
<%
    String name = "";
    String szallitoNeve = "";
    double egysegAr = 0;
    try {
        name = request.getParameter("cikkNeve");
        szallitoNeve = request.getParameter("szallitoNeve");
        egysegAr = Double.parseDouble(request.getParameter("egysegAr"));
    }catch (Exception e){
        out.println("Sajnos valami hiba történt, lehet, hogy nem számot adtál meg.<br/><br/><a href =\"ujcikk.jsp\">Újra megpróbálom.</a>");
    }
    com.kalmanka.Cikkek.insertCikk(name, szallitoNeve, egysegAr);
    out.println(name + " " + szallitoNeve + " " + egysegAr);
%>
<br/>
<footer>
    <a href="torzsadatokkarb.html">Törzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="cikkekattekintese.jsp">Cikkek áttekintése</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujcikk.jsp">Új cikk felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">Fõoldal</a>
</footer>

</body>
</html>