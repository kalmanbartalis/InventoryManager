package com.kalmanka;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kalman on 2017.03.15..
 */
public class Koltseghelyek {

    private String koltseghelyNeve;

    public Koltseghelyek() {
    }

    public String getKoltseghelyNeve() {
        return koltseghelyNeve;
    }

    public void setKoltseghelyNeve(String koltseghelyNeve) {
        this.koltseghelyNeve = koltseghelyNeve;
    }

    public static void insertKoltseghely(String koltseghelyNeve) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = DBConnection.getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO koltseghelyek (koltseghelyNeve)" + "VALUES (?)");
            preparedStatement.setString(1, koltseghelyNeve);
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

    public static List<Koltseghelyek> selectKoltseghelyek() {
        List<Koltseghelyek> koltseghelyekList = new ArrayList<Koltseghelyek>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DBConnection.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM  koltseghelyek");

            while (resultSet.next()) {
                Koltseghelyek koltseghelyek = new Koltseghelyek();
                koltseghelyek.setKoltseghelyNeve(resultSet.getString("koltseghelyNeve"));
                koltseghelyekList.add(koltseghelyek);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return koltseghelyekList;
    }
}
