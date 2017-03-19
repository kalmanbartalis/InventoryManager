package com.kalmanka;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kalman on 2017.03.15..
 */
public class Raktarosok {

    private String raktarosNeve;

    public Raktarosok() {
    }

    public String getRaktarosNeve() {
        return raktarosNeve;
    }

    public void setRaktarosNeve(String raktarosNeve) {
        this.raktarosNeve = raktarosNeve;
    }

    public static void insertRaktarosok(String raktarosNeve) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = DBConnection.getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO raktarosok (raktarosNeve)" + "VALUES (?)");
            preparedStatement.setString(1, raktarosNeve);
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

    public static List<Raktarosok> selectRaktarosok() {
        List<Raktarosok> raktarosokList = new ArrayList<Raktarosok>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DBConnection.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM  raktarosok");

            while (resultSet.next()){
                Raktarosok raktarosok = new Raktarosok();
                raktarosok.setRaktarosNeve(resultSet.getString("raktarosNeve"));
                raktarosokList.add(raktarosok);
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

        return raktarosokList;
    }

}
