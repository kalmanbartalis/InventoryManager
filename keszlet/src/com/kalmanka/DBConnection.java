package com.kalmanka;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by kalman on 2017.03.15..
 */
public class DBConnection {

    public DBConnection() {
    }

    public static Connection getConnection() {
        Connection connection = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
//            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/keszlet", "root", "Zsofia06");
//            ?useUnicode=yes&characterEncoding=UTF-8
            connection = DriverManager.getConnection("jdbc:mysql://mariadb59590-kalman.whelastic.net:3306/keszlet?useUnicode=yes&characterEncoding=UTF-8", "root", "BLLzbt39460");
//            connection = DriverManager.getConnection("jdbc:mysql://mariadb27071-kalman.jl.serv.net.mx:3306/keszlet?useUnicode=yes&characterEncoding=UTF-8", "root", "muPQPXyN2B");
        } catch (Exception e) {
            e.printStackTrace();
        }

        return connection;
    }

}
