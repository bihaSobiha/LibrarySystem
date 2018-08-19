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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sobiha
 */
public class EditMcDAO {
    public static MainClassificationDetails EditMc(String mcid) throws SQLException {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();

        String query = "select * from mainclassification";
        if (mcid != null) {
//            query = query + String.format(" where b.%s=\"%s\"", key, value);
            query += String.format(" where mcId=\"%s\"", mcid);
            Statement statement = con.createStatement();
        }
        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery(query);
        List<MainClassificationDetails> results = new java.util.ArrayList<>();
        while (rs.next()) {
            MainClassificationDetails Mc = new MainClassificationDetails();
            Mc.setMcId (rs.getString("McID"));
            Mc.setMcName(rs.getString("McName"));
            
            results.add(Mc);
        }
        return results.get(0);
        }
     public static void UpdateMc(MainClassificationDetails mc) throws SQLException {
        try
        {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();

        Statement stmt =con.createStatement();
        String query = "update mainclassification set "
            +"McName='"+mc.getMcName()+"'"
            +"WHERE McID='"+mc.getMcId()+"'";
        stmt.executeUpdate(query);
        } 
        catch (SQLException ex) {
            Logger.getLogger(EditDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    } 
    
}
