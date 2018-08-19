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
public class EditDAO {
    public static AddBook EditBooks(String bookid) throws SQLException {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();

        String query = "select * from book_details";
        if (bookid != null) {
//            query = query + String.format(" where b.%s=\"%s\"", key, value);
            query += String.format(" where bookId=\"%s\"", bookid);
            Statement statement = con.createStatement();
        }
        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery(query);
        List<AddBook> results = new java.util.ArrayList<>();
        while (rs.next()) {
            AddBook addbook = new AddBook();
            addbook.setBookId(rs.getString("BookId"));
            addbook.setTitle(rs.getString("Title"));
            addbook.setAuthor(rs.getString("Author"));
            addbook.setMainClassification(rs.getString("mainClassification"));
            addbook.setSubClassification(rs.getString("subClassification"));
            addbook.setYearOfPublishing(rs.getInt("YearOfPublishing"));
            addbook.setLastPrintedYear(rs.getInt("LastPrintedYear"));
            addbook.setISBNno(rs.getString("ISBNno"));
            addbook.setNoOfPages(rs.getInt("NoOfPages"));
            results.add(addbook);
        }
        return results.get(0);
        }
    
    public static void UpdateBooks(AddBook book) throws SQLException {
        try
        {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();

        Statement stmt =con.createStatement();
        String query = "update book_details set"
            + " Title='"+book.getTitle()+"' ,"
            + "Author='"+book.getAuthor()+"' ,"
            + "mainClassification='"+book.getMainClassification()+"' ,"
            + "subClassification='"+book.getSubClassification()+"' ,"
            + "YearOfPublishing='"+book.getYearOfPublishing()+"' ,"
            + "LastPrintedYear='"+book.getLastPrintedYear()+"' ,"
            + "ISBNno='"+book.getISBNno()+"' ,"
            + "NoOfPages="+book.getNoOfPages()+" "
            + "WHERE BookId='" + book.getBookId() + "' ";
        stmt.executeUpdate(query);
        } 
        catch (SQLException ex) {
            Logger.getLogger(EditDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }    
        
}


