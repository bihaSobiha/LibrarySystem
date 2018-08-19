/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sgc.model;

import com.sgc.data.DbConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Jeyarani
 */
public class MainClassificationDAO {

//    public void addmainclassification(MainClassificationDetails mainClassification) throws ClassNotFoundException, SQLException {
//        DbConnection dbconnection = new DbConnection();
//        Connection con = DbConnection.getDbConnection();
//        Statement statement = con.createStatement();
//        String sql = ("insert into mainclassification(`McID`, `McName`) values ('" + mainClassification.getMcId() + "','" + mainClassification.getMcName() + "')");
//        statement.execute(sql);
//    }

    public static List<MainClassificationDetails> getMainClassific() throws SQLException {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();
        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery("select * from mainclassification");
        List<MainClassificationDetails> results = new ArrayList<>();
        while (rs.next()) {
            MainClassificationDetails mainCla = new MainClassificationDetails();
            mainCla.setMcId(rs.getString("McID"));
            mainCla.setMcName(rs.getString("McName"));
            results.add(mainCla);
        }
        return results;
    }
    public void addmainclassification(MainClassificationDetails mainClassification) throws ClassNotFoundException, SQLException {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();
        Statement statement = con.createStatement();
        String sql = ("insert into mainclassification(`McID`, `McName`) values ('" + mainClassification.getMcId() + "','" + mainClassification.getMcName() + "')");
        statement.execute(sql);
    }
   
}
