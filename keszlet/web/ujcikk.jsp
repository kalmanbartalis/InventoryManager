<%@ page import="java.util.List" %>
<%@ page import="com.kalmanka.Szallitok" %>
<%--
  Created by IntelliJ IDEA.
  User: kalman
  Date: 2017.03.19.
  Time: 4:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=iso-8859-2" language="java" %>
<html>
<head>
    <title>�j cikk</title>
</head>
<body>
<form action="ujcikkresp.jsp">
    Cikk neve: <input type="text" name="cikkNeve"/><br/><br/>
    <%
        List<Szallitok> szallitokList = com.kalmanka.Szallitok.selectSzallitok();
    %>
    Sz�ll�t� neve:
    <select name="szallitoNeve">
        <option value="-1">V�lassz Sz�ll�t�t</option>
    <%for (int i = 0; i < szallitokList.size(); i++){
        out.println("<option value=\"" + szallitokList.get(i).getSzallitoNeve() + "\">" + szallitokList.get(i).getSzallitoNeve() + "</option>");
        }%>
    </select><br/><br/>
    Egys�g�r: <input type="text" name="egysegAr"/><br/><br/>
    <input type="submit" value="Ment�s"/><br/><br/>
</form>
</body>
</html>
