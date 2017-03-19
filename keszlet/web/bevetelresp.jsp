<%@ page import="com.kalmanka.Tetelek" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.kalmanka.Cikkek" %><%--
  Created by IntelliJ IDEA.
  User: kalman
  Date: 2017.03.19.
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=iso-8859-2" language="java" %>
<html>
<head>
    <title>Bevételezendõ tételek</title>
</head>
<body>
<h1 align="center">Bevételezendõ tételek</h1>
<br/>
<hr/>
<br/>
<%
    int cikkId = 0;
    int mennyiseg = 0;
    try {
        cikkId = Integer.parseInt(request.getParameter("cikkID"));
        mennyiseg = Integer.parseInt(request.getParameter("mennyiseg"));
    } catch (Exception e) {
        System.out.println("Sajnos valami hiba történt, lehet, hogy nem számot adtál meg.<br/><br/><a href =\"bevetel.jsp\">Újra megpróbálom.</a>");
    }
    com.kalmanka.Tetelek.bevetelezesOsszeallitasa(cikkId, mennyiseg);
%>
Az alábbi cikkek várnak bevételezésre:<br/><br/>
<table align="center" border="1">
    <thead>
    <tr><th>Cikk ID</th><th>Megnevezés</th><th>Egységár</th><th>Mennyiség</th></tr>
    </thead>
    <tbody>
    <%
        // itt át kell még gondolni, hogy lehessen módosítani, illetve kitörölni és ne lehessen nullás érték és duplikáció
        for (int i = 0; i < Tetelek.tetelekList.size(); i++){
            out.println("<tr><td>" + Tetelek.tetelekList.get(i).getCikk().getCikkID() + "</td><td>" + Tetelek.tetelekList.get(i).getCikk().getCikkNeve() + "</td><td>" + Tetelek.tetelekList.get(i).getCikk().getEgysegAr() + "</td><td>" + Tetelek.tetelekList.get(i).getMennyiseg() + "</td></tr>");
        }
    %>
    </tbody>
</table>
<br/><br/>
<div align="center">
    <form action="bevetelrogz.jsp">
        <input type="submit" value="Bizonylat generálása és adatok rögzítése">
    </form>
</div>

<br/>
<footer>
    <a href="torzsadatokkarb.html">Törzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="bevetel.jsp">További tételek felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">Fõoldal</a>
</footer>

</body>
</html>