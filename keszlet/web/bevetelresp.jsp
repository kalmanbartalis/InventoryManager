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
    <title>Bev�telezend� t�telek</title>
</head>
<body>
<h1 align="center">Bev�telezend� t�telek</h1>
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
        System.out.println("Sajnos valami hiba t�rt�nt, lehet, hogy nem sz�mot adt�l meg.<br/><br/><a href =\"bevetel.jsp\">�jra megpr�b�lom.</a>");
    }
    com.kalmanka.Tetelek.bevetelezesOsszeallitasa(cikkId, mennyiseg);
%>
Az al�bbi cikkek v�rnak bev�telez�sre:<br/><br/>
<table align="center" border="1">
    <thead>
    <tr><th>Cikk ID</th><th>Megnevez�s</th><th>Egys�g�r</th><th>Mennyis�g</th></tr>
    </thead>
    <tbody>
    <%
        // itt �t kell m�g gondolni, hogy lehessen m�dos�tani, illetve kit�r�lni �s ne lehessen null�s �rt�k �s duplik�ci�
        for (int i = 0; i < Tetelek.tetelekList.size(); i++){
            out.println("<tr><td>" + Tetelek.tetelekList.get(i).getCikk().getCikkID() + "</td><td>" + Tetelek.tetelekList.get(i).getCikk().getCikkNeve() + "</td><td>" + Tetelek.tetelekList.get(i).getCikk().getEgysegAr() + "</td><td>" + Tetelek.tetelekList.get(i).getMennyiseg() + "</td></tr>");
        }
    %>
    </tbody>
</table>
<br/><br/>
<div align="center">
    <form action="bevetelrogz.jsp">
        <input type="submit" value="Bizonylat gener�l�sa �s adatok r�gz�t�se">
    </form>
</div>

<br/>
<footer>
    <a href="torzsadatokkarb.html">T�rzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="bevetel.jsp">Tov�bbi t�telek felvitele</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html">F�oldal</a>
</footer>

</body>
</html>