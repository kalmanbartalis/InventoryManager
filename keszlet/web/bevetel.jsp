<%@ page import="com.kalmanka.Cikkek" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: kalman
  Date: 2017.03.19.
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=iso-8859-2" language="java" %>
<html>
<head>
    <title>Cikkek bevételezése</title>
</head>
<body>
<h1 align="center">Cikkek bevételezése</h1>
<br/>
<hr/>
<br/>

<table align="center" border="1">

    <form action="bevetel.jsp">
        Cikk keresése: <input type="text" name="cikkNeve"/><br/><br/>
        <input type="submit" value="Mentés"/><br/><br/>
        <%
            List<Cikkek> cikkList = com.kalmanka.Cikkek.selectCikkek();
            List<Cikkek> cikkList2 = new ArrayList<Cikkek>();
            for (int i = 0; i < cikkList.size(); i++){
                CharSequence charSequence = request.getParameter("cikkNeve");
                if (charSequence != null  && cikkList.get(i).getCikkNeve().contains(charSequence)) {
                    cikkList2.add(cikkList.get(i));
                }
            }
        %>
    </form>
    <table align="center" border="1">
        <thead>
        <tr><th>Cikk ID</th><th>Megnevezés</th><th>Egységár</th><th>Beszerzés dátuma</th></tr>
        </thead>
        <tbody>
        <%
            if (cikkList2.size() != 0) {
                for (int i = 0; i < cikkList2.size(); i++) {
                    out.println("<tr><td>" + cikkList2.get(i).getCikkID() + "</td><td>" + cikkList2.get(i).getCikkNeve() + "</td><td>" + cikkList2.get(i).getEgysegAr() + "</td><td>" + cikkList2.get(i).getDatum() + "</td></tr>");
                }
            }else {
                for (int i = 0; i < cikkList.size(); i++) {
                    out.println("<tr><td>" + cikkList.get(i).getCikkID() + "</td><td>" + cikkList.get(i).getCikkNeve() + "</td><td>" + cikkList.get(i).getEgysegAr() + "</td><td>" + cikkList.get(i).getDatum() + "</td></tr>");
                }
            }
        %>
        </tbody>
    </table>
    <br/>
    <hr/>
    <br/>
    <h2>Bevételezendõ tételek összeállítása</h2><br/><br/>
    Cikk kiválasztása ID szám alapján:
    <form action="bevetelresp.jsp">
        <select name="cikkID">
            <option value="-1">Válassz cikket</option>
            <%
                if (cikkList2.size() != 0) {
                    for (int i = 0; i < cikkList2.size(); i++) {
                        out.println("<option value=\"" + cikkList2.get(i).getCikkID() + "\">" + cikkList2.get(i).getCikkID() + " " + cikkList2.get(i).getCikkNeve() + "</option>");
                    }
                }else {
                    for (int i = 0; i < cikkList.size(); i++) {
                        out.println("<option value=\"" + cikkList.get(i).getCikkID() + "\">" + cikkList.get(i).getCikkID() + " " + cikkList.get(i).getCikkNeve() + "</option>");
                    }
                }
            %>
        </select><br/><br/>
        Darabszám: <input type="text" name="mennyiseg"/><br/><br/>
        <input type="submit" value="Mentés"/><br/><br/>
    </form>
    </tbody>
</table>
<br/>
<footer>
    <a href="torzsadatokkarb.html">Törzsadatok</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="bevetelresp.jsp">Bevételezésre váró tételek áttekintése</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="index.html">Fõoldal</a>
</footer>
</body>
</html>


