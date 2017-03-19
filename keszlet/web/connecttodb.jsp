<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %><%--
  Created by IntelliJ IDEA.
  User: kalman
  Date: 2017.03.15.
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Connect Test</title>
</head>
<body>

<%

    Connection connection = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
//        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/keszlet", "root", "Zsofia06");
        out.println("Connected");
            connection = DriverManager.getConnection("jdbc:mysql://mariadb59590-kalman.whelastic.net:3306/keszlet", "root", "BLLzbt39460");
//            connection = DriverManager.getConnection("jdbc:mysql://mariadb27071-kalman.jl.serv.net.mx:3306/keszlet?useUnicode=yes&characterEncoding=UTF-8", "root", "muPQPXyN2B");
    } catch (Exception e) {
        e.printStackTrace();
        out.println("Not connected" + e);
    }

%>

</body>
</html>
