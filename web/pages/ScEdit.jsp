<%-- 
    Document   : SubClassification
    Created on : Aug 4, 2018, 10:16:55 AM
    Author     : User
--%>

<%@page import="com.sgc.data.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<%@page import="com.sgc.data.DbConnection"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Sub Classification</title>
        
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
              $("#main_classification").val("${abc.mcId}");
            });
        </script>
    </head>
    <body><%@ include file="Dashboard.jsp"%>
        <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Sub Classification</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Edit Sub Classification
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <form role="form" action="EditScController" method="post">
                                            <div class="form-group">
                                                <label>Sub classification ID</label>
                                                <input class="form-control" name="Scid" value="${abc.scId}"/>
                                            </div>    
                                            <div class="form-group">
                                                <label>Select Main classification ID</label>
                                                <select class="form-control" name="Mcid" id="main_classification">
                                                    <option value="-1"></option>
                                                <%
                                                    try {
                                                        String sql = "select * from mainclassification";
                                                        DbConnection dbconnection = new DbConnection();
                                                        Connection con = dbconnection.getDbConnection();
//                                                            Class.forName("com.mysql.jdbc.Driver");
//                                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms?characterEncoding=UTF-8&useSSL=false","root","manager");
                                                        Statement stm = con.createStatement();
                                                        ResultSet rs = stm.executeQuery(sql);
                                                        while (rs.next()) {
                                                %>
                                                <option value="<%=rs.getString("McID")%>"><%=rs.getString("McName")%></option>
                                                <%
                                                        }
                                                    } catch (Exception ex) {
                                                        Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex.getMessage());

                                                    }
                                                %>
                                                </select>
                                            </div>  
                                            <div class="form-group">
                                                <label>Sub Classification Name</label>
                                                <input name="Scname" class="form-control" value="${abc.scName}">
                                            </div>
                                            <button type="submit" class="btn btn-default">Submit Button</button>
                                            <button type="reset" class="btn btn-default">Reset Button</button>
                                        </form>
                                    </div>
                                    <!-- /.col-lg-6 (nested) -->
                                 
                                    <!-- /.col-lg-6 (nested) -->
                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            
    </body>
</html>

