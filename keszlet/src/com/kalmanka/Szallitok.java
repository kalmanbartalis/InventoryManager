package com.kalmanka;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kalman on 2017.03.15..
 */
public class Szallitok {

    private String szallitoNeve;

    public Szallitok() {
    }

    public Szallitok(String szallitoNeve) {
        this.szallitoNeve = szallitoNeve;
    }

    public String getSzallitoNeve() {
        return szallitoNeve;
    }

    public void setSzallitoNeve(String szallitoNeve) {
        this.szallitoNeve = szallitoNeve;
    }

    public static void insertSzallito(String szallitoNeve) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        System.out.println("insertSzallito called");

        try {
            connection = DBConnection.getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO szallitok (szallitoNeve)" + "VALUES (?)");
            preparedStatement.setString(1, szallitoNeve);
            preparedStatement.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if (preparedStatement != null){
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            if (connection != null){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static List<Szallitok> selectSzallitok() {
        List<Szallitok> szallitokList = new ArrayList<Szallitok>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DBConnection.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM  szallitok");

            while (resultSet.next()){
                Szallitok szallitok = new Szallitok();
                szallitok.setSzallitoNeve(resultSet.getString("szallitoNeve"));
                szallitokList.add(szallitok);
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if (statement != null){
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            if (connection != null){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return szallitokList;
    }

}
