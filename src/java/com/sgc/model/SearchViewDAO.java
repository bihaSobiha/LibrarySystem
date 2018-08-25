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
public class SearchViewDAO {
    public static List<AddBook> getBooks(String key, String value) throws SQLException {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();

        String query = "select * from book_details b "
                + "INNER JOIN mainclassification m "
                + "ON b.MainClassification = m.McID "
                + "INNER JOIN subclassification s "
                + "ON b.SubClassification = s.ScID";
        if (key != null && value != null) {
//            query = query + String.format(" where b.%s=\"%s\"", key, value);
            query += String.format(" where book_details.%s=\"%s\"", key, value);
        }

        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery(query);
        List<AddBook> results = new java.util.ArrayList<>();
        while (rs.next()) {
            AddBook addbook = new AddBook();
            addbook.setBookId(rs.getString("BookId"));
            addbook.setTitle(rs.getString("Title"));
            addbook.setAuthor(rs.getString("Author"));
            addbook.setMainClassification(rs.getString("McName"));
            addbook.setSubClassification(rs.getString("ScName"));
            addbook.setYearOfPublishing(rs.getInt("YearOfPublishing"));
            addbook.setLastPrintedYear(rs.getInt("LastPrintedYear"));
            addbook.setISBNno(rs.getString("ISBNno"));
            addbook.setNoOfPages(rs.getInt("NoOfPages"));
            results.add(addbook);
        }
        return results;
    }

}
