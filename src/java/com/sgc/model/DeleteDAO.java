/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sgc.model;

import com.sgc.data.DbConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Sobiha
 */
public class DeleteDAO {
    public static void deleteBook(String bookid) throws SQLException {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();
        PreparedStatement ps=null;
       
       String sql = "DELETE from book_details where BookId= ?";
        ps=con.prepareStatement(sql);
        ps.setString(1, bookid);
        ps.executeUpdate();
    }
    public static void deleteMc(String Mcid) throws SQLException {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();
        PreparedStatement ps=null;
       
       String sql = "DELETE from mainclassification where McID= ?";
        ps=con.prepareStatement(sql);
        ps.setString(1, Mcid);
        ps.executeUpdate();
    }
    public static void deleteSc(String Scid) throws SQLException {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();
        PreparedStatement ps=null;
       
       String sql = "DELETE from subclassification where ScID= ?";
        ps=con.prepareStatement(sql);
        ps.setString(1, Scid);
        ps.executeUpdate();
    }
    
}
