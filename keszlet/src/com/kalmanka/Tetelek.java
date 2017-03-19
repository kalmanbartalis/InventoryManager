package com.kalmanka;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kalman on 2017.03.15..
 */
public class Tetelek {

    private Cikkek cikk;
    private boolean isBev;
    private Koltseghelyek koltseghely;
    private int mennyiseg;
    private Raktarosok raktaros;
    private Atvevok atvevo;
    private String datum;
    public static List<Tetelek> tetelekList = new ArrayList<Tetelek>();

    public Tetelek() {
    }



    public Cikkek getCikk() {
        return cikk;
    }

    public void setCikk(Cikkek cikk) {
        this.cikk = cikk;
    }

    public boolean isBev() {
        return isBev;
    }

    public void setBev(boolean bev) {
        isBev = bev;
    }

    public Koltseghelyek getKoltseghely() {
        return koltseghely;
    }

    public void setKoltseghely(Koltseghelyek koltseghely) {
        this.koltseghely = koltseghely;
    }

    public Raktarosok getRaktaros() {
        return raktaros;
    }

    public void setRaktaros(Raktarosok raktaros) {
        this.raktaros = raktaros;
    }

    public Atvevok getAtvevo() {
        return atvevo;
    }

    public void setAtvevo(Atvevok atvevo) {
        this.atvevo = atvevo;
    }

    public String getDatum() {
        return datum;
    }

    public void setDatum(String datum) {
        this.datum = datum;
    }

    public int getMennyiseg() {
        return mennyiseg;
    }

    public void setMennyiseg(int mennyiseg) {
        this.mennyiseg = mennyiseg;
    }

    public static void bevetelezesOsszeallitasa(int cikkID, int mennyiseg){
        Tetelek tetelek = new Tetelek();
        Cikkek cikkek = new Cikkek();
            tetelek.setCikk(cikkek.selectCikkID(cikkID));
            tetelek.setMennyiseg(mennyiseg);
        tetelekList.add(tetelek);
    }

    public static void insertTetel(List<Tetelek> tetelekList, Raktarosok raktarosok, Atvevok atvevok) {

        for (int i = 0; i < tetelekList.size(); i++) {

            Connection connection = null;
            PreparedStatement preparedStatement = null;

            try {
                connection = DBConnection.getConnection();
                preparedStatement = connection.prepareStatement("INSERT INTO tetelek (bizonylatID, cikkID, mennyiseg, koltseghely)" + "VALUES (?, ?, ?, ?)");
                preparedStatement.setString(1, createBizID());
                preparedStatement.setInt(2, tetelekList.get(i).getCikk().getCikkID());
                preparedStatement.setInt(3, tetelekList.get(i).getMennyiseg());
                preparedStatement.setString(4, "Bevétel");
                preparedStatement.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (preparedStatement != null) {
                    try {
                        preparedStatement.close();
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
        }
    }

    public static String createBizID(){
        String bizID = "";
        int maxID = 0;
        int temp = 0;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DBConnection.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM  bevetelibizonylatok");

            while (resultSet.next()){
                temp = resultSet.getInt("bizonylatID");
                List<Integer> idList = new ArrayList<Integer>();
                idList.add(temp);
                if (temp > maxID){
                    maxID = temp;
                }
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
        bizID = "BE" + maxID + "/2017";
        return bizID;
    }

}
