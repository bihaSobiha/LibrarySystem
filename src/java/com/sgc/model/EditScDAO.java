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
public class EditScDAO {
    public static SubClassificationDetails EditSc(String scid) throws SQLException {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();

        String query = "select * from subclassification";
        if (scid != null) {
//            query = query + String.format(" where b.%s=\"%s\"", key, value);
            query += String.format(" where scId=\"%s\"", scid);
            Statement statement = con.createStatement();
        }
        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery(query);
        List<SubClassificationDetails> results = new java.util.ArrayList<>();
        while (rs.next()) {
            SubClassificationDetails sc = new SubClassificationDetails();
            sc.setScId(rs.getString("ScID"));
            sc.setMcId(rs.getString("McID"));
            sc.setScName(rs.getString("ScName"));
            
            results.add(sc);
        }
        return results.get(0);
        }
    public static void UpdateSc(SubClassificationDetails sc) throws SQLException {
        try
        {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();

        Statement stmt =con.createStatement();
        String query = "update subclassification set"
            + " McID='"+sc.getMcId()+"' ,"
            + "ScName='"+sc.getScName()+"' "
            + "WHERE ScID='" + sc.getScId()+ "' ";
        stmt.executeUpdate(query);
        } 
        catch (SQLException ex) {
            Logger.getLogger(EditDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}
