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
    <title>�j Cikk</title>
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
        out.println("Sajnos valami hiba t�rt�nt, lehet, hogy nem sz�mot adt�l meg.<br/><br/><a href =\"ujcikk.jsp\">�jra megpr�b�lom.</a>");
    }
    com.kalmanka.Cikkek.insertCikk(name, szallitoNeve, egysegAr);
    out.println(name + " " + szallitoNeve + " " + egysegAr);
%>
<br/>
<footer>
    <a href="torzsadatokkarb.html">T�rzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="cikkekattekintese.jsp">Cikkek �ttekint�se</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="ujcikk.jsp">�j cikk felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">F�oldal</a>
</footer>

</body>
</html>