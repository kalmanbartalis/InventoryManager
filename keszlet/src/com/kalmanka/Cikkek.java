package com.kalmanka;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kalman on 2017.03.15..
 */
public class Cikkek {

    private int cikkID;
    private String cikkNeve;
    private Szallitok szallito;
    private double egysegAr;
    private String datum;

    public Cikkek() {
    }

    public int getCikkID() {
        return cikkID;
    }

    public void setCikkID(int cikkID) {
        this.cikkID = cikkID;
    }

    public String getCikkNeve() {
        return cikkNeve;
    }

    public void setCikkNeve(String cikkNeve) {
        this.cikkNeve = cikkNeve;
    }

    public Szallitok getSzallito() {
        return szallito;
    }

    public void setSzallito(Szallitok szallito) {
        this.szallito = new Szallitok();
    }

    public double getEgysegAr() {
        return egysegAr;
    }

    public void setEgysegAr(double egysegAr) {
        this.egysegAr = egysegAr;
    }

    public String getDatum() {
        return datum;
    }

    public void setDatum(String datum) {
        this.datum = datum;
    }

    public static void insertCikk(String cikkNeve, String szallitoNeve, double egysegAr) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = DBConnection.getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO cikkek (cikkNeve, szallitoNeve, egysegAr)" + "VALUES (?, ?, ?)");
            preparedStatement.setString(1, cikkNeve);
            preparedStatement.setString(2, szallitoNeve);
            preparedStatement.setDouble(3, egysegAr);
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

    public static List<Cikkek> selectCikkek() {
        List<Cikkek> cikkList = new ArrayList<Cikkek>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet;

        try {
            connection = DBConnection.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM  cikkek");

            while (resultSet.next()){
                Cikkek cikkek = new Cikkek();
                cikkek.setCikkID(resultSet.getInt("cikkID"));
                cikkek.setCikkNeve(resultSet.getString("cikkNeve"));
                Szallitok szallito = new Szallitok(resultSet.getString("szallitoNeve"));
                cikkek.setSzallito(szallito);
                cikkek.setEgysegAr(resultSet.getDouble("egysegAr"));
                cikkek.setDatum(resultSet.getString("datum"));
                cikkList.add(cikkek);
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

        return cikkList;
    }



    public static Cikkek selectCikkID(int cikkID) {

        Cikkek cikkek = new Cikkek();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet;

        try {
            connection = DBConnection.getConnection();
            preparedStatement = connection.prepareStatement("SELECT * FROM cikkek WHERE cikkID = ?");
            preparedStatement.setInt(1, cikkID);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                cikkek.setCikkID(resultSet.getInt("cikkID"));
                cikkek.setCikkNeve(resultSet.getString("cikkNeve"));
                Szallitok szallito = new Szallitok(resultSet.getString("szallitoNeve"));
                cikkek.setSzallito(szallito);
                cikkek.setEgysegAr(resultSet.getDouble("egysegAr"));
                cikkek.setDatum(resultSet.getString("datum"));
            }

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

        return cikkek;
    }

}

