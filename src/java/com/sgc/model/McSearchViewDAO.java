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
public class McSearchViewDAO {

    public static List<MainClassificationDetails> getMcDetails(String key, String value) throws SQLException {
        DbConnection dbConnection = new DbConnection();
        Connection con = dbConnection.getDbConnection();
        Statement statement = con.createStatement();
//        ResultSet rs = statement.executeQuery("select * from mainclassification");
        String query = "select * from mainclassification";

        if (key != null && value != null) {
//            query = query + String.format(" where b.%s=\"%s\"", key, value);
            query += String.format(" where mainclassification.%s=\"%s\"", key, value);
        }
        ResultSet rs = statement.executeQuery(query);
        List<MainClassificationDetails> results = new ArrayList<>();
        while (rs.next()) {
            MainClassificationDetails Mc = new MainClassificationDetails();
            Mc.setMcId(rs.getString("McID"));
            Mc.setMcName(rs.getString("McName"));

            results.add(Mc);
            //System.out.println(rs.getString("M_Classi"));
        }
        return results;

    }
}
