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

public class BookDAO {
   public void saveBook(AddBook addbook) throws ClassNotFoundException,SQLException {
        DbConnection dbconnection = new DbConnection();
        Connection con = dbconnection.getDbConnection();
        
        Statement statement = con.createStatement(); 
 //       statement.executeUpdate ("insert into book_detail values ('"+book.getBookId()+"','"+book.getBookTitle()+"','"+book.getAuthor()+"')");
//        String sql = "insert into book_detail(`bookId`, `booktitle`, `author`) values ('"+addbook.getBookId()+"','"+addbook.getBookTitle()+"','"+addbook.getAuthor()+"')";
        String sql = "insert into book_details (`BookId`, `Title`, `Author`, `MainClassification`, `SubClassification`, `YearOfPublishing`, `LastPrintedYear`, `ISBNno`, `NoOfPages`) values('"+addbook.getBookId()+"','"+addbook.getTitle()+"','"+addbook.getAuthor()+"','"+addbook.getMainClassification()+"','"+addbook.getSubClassification()+"','"+addbook.getYearOfPublishing()+"','"+addbook.getLastPrintedYear()+"','"+addbook.getISBNno()+"','"+addbook.getNoOfPages()+"')";

        statement.execute(sql);
    }
   public static List<AddBook> getBook() throws SQLException{
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();
        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery("select * from book_details");
        List<AddBook> results = new java.util.ArrayList<>();
        while(rs.next()) {
                AddBook addbook = new AddBook();
                addbook.setBookId(rs.getString("BookId"));
                addbook.setTitle(rs.getString("Title"));
                addbook.setAuthor(rs.getString("Author"));
                addbook.setMainClassification(rs.getString("MainClassification"));
                addbook.setSubClassification(rs.getString("SubClassification"));
                addbook.setYearOfPublishing(rs.getInt("YearOfPublishing"));
                addbook.setLastPrintedYear(rs.getInt("LastPrintedYear"));
                addbook.setISBNno(rs.getString("ISBNno"));
                addbook.setNoOfPages(rs.getInt("NoOfPages"));
                results.add(addbook);
        }
        return results;
    }
}
