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
public class ScSearchViewDAO {

    public static List<SubClassificationDetails> getScDetails(String key, String value) throws SQLException {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();
        Statement statement = con.createStatement();
//        ResultSet rs = statement.executeQuery("select * from mainclassification");
        String query = "SELECT * FROM subclassification as s inner join mainclassification as m on s.McID=m.McID;";

        if (key != null && value != null) {
//            query = query + String.format(" where b.%s=\"%s\"", key, value);
            query += String.format(" where subclassification.%s=\"%s\"", key, value);
        }
        ResultSet rs = statement.executeQuery(query);
        List<SubClassificationDetails> results = new ArrayList<>();
        while (rs.next()) {
            SubClassificationDetails Sc = new SubClassificationDetails();
            Sc.setScId(rs.getString("ScID"));
            Sc.setMcId(rs.getString("McName"));
            Sc.setScName(rs.getString("ScName"));

            results.add(Sc);
            //System.out.println(rs.getString("M_Classi"));
        }
        return results;

    }
}
