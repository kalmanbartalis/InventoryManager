package com.kalmanka;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kalman on 2017.03.15..
 */
public class Atvevok {

    private String atvevoNeve;

    public Atvevok() {
    }

    public String getAtvevoNeve() {
        return atvevoNeve;
    }

    public void setAtvevoNeve(String atvevoNeve) {
        this.atvevoNeve = atvevoNeve;
    }

    public static void insertAtvevok(String atvevoNeve) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = DBConnection.getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO atvevok (atvevoNeve)" + "VALUES (?)");
            preparedStatement.setString(1, atvevoNeve);
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

    public static List<Atvevok> selectAtvevok() {
        List<Atvevok> atvevokList = new ArrayList<Atvevok>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DBConnection.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM  atvevok");

            while (resultSet.next()){
                Atvevok atvevok = new Atvevok();
                atvevok.setAtvevoNeve(resultSet.getString("atvevoNeve"));
                atvevokList.add(atvevok);
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

        return atvevokList;
    }

}
