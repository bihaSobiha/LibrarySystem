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
 * @author Sobiha
 */
public class SubClassificationDAO 
{
    public static List<SubClassificationDetails> getSubClassific() throws SQLException {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();
        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery("select * from subclassification");
        List<SubClassificationDetails> results = new ArrayList<>();
        while (rs.next()) {
            SubClassificationDetails subCla = new SubClassificationDetails();
            subCla.setScId(rs.getString("ScID"));
            subCla.setMcId(rs.getString("McID"));
            subCla.setScName(rs.getString("ScName"));
            
            results.add(subCla);
        }
        return results;
    }
    public void addsubclassification(SubClassificationDetails subClassification) throws ClassNotFoundException, SQLException {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();
        Statement statement = con.createStatement();
        String sql = ("insert into subclassification values ('" + subClassification.getScId() + "','" + subClassification.getMcId()+ "','" + subClassification.getScName()+ "')");
        statement.execute(sql);
    }
    
    public static List<SubClassificationDetails> getSelectedSubClassific(String mid) throws SQLException{
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();
        Statement statement = con.createStatement();
        ResultSet rst = statement.executeQuery("select * from subclassification where McID='"+mid+"'");
        List<SubClassificationDetails> results = new java.util.ArrayList<>();
        while(rst.next()) {
            SubClassificationDetails subCla = new SubClassificationDetails();
            subCla.setScId(rst.getString("ScID"));
            subCla.setMcId(rst.getString("McID"));
            subCla.setScName(rst.getString("ScName"));
            results.add(subCla);
        }
        return results;
    }
}
