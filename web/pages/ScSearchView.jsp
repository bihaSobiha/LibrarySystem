<%-- 
    Document   : ScSearchView
    Created on : 10/08/2018, 1:33:19 PM
    Author     : Jeyarani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>


        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        
        <script type="text/javascript">
        function confirmDelete()
        {
            if(!confirm("Are you sure?"))
            {
                return false;
            }
        }
        
        </script>

        <title>Books</title>

    </head>

    <body> <%@ include file="Dashboard.jsp"%>
        <form action="ScSearchViewController" method="POST">
            <div id="wrapper">
                <!-- Navigation -->
                <div id="page-wrapper">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Search & Update</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <div><label>Select Search Option</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <select name="skey">
                            <option value="ScID">ScId</option>
                            <option value="McID">McId</option>
                            <option value="ScName">ScName</option>
                        </select>
                        <input type="text" name="svalue">
                        <input type="SUBMIT" name="Search" value="Search"></div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    DataTables 
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="dataTable_wrapper">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th>ScID</th>
                                                    <th>McID</th>
                                                    <th>ScName</th>
                                                    <th>Edit</th>
                                                    <th>Delete</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr class="odd gradeX">
                                                    <c:forEach items="${scdetails}" var="item">
                                                    <tr class="odd gradeX">
                                                        <td>${item.scId}</td>
                                                        <td>${item.mcId}</td>
                                                        <td>${item.scName}</td>
                                                        <td><a href="EditScController?scId=${item.scId}"><i class="fa fa-fw" aria-hidden="true" title="Copy to use edit"></i></a></td>
                                                        <td><a href="DelScController?scId=${item.scId}"class="delete" title="Delete" data-toggle="tooltip" onclick="return confirmDelete();"><i class="fa fa-fw" aria-hidden="true" title="Copy to use trash"></i></a></td>
                                                    </tr>
                                                </c:forEach>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- /.table-responsive -->
                                </div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                </div>
            </div>
        </form>
        <!-- DataTables JavaScript -->
        <script src="../js/dataTables/jquery.dataTables.min.js"></script>
        <script src="../js/dataTables/dataTables.bootstrap.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../js/startmin.js"></script>

        <!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
            $(document).ready(function () {
                $('#dataTables-example').DataTable({
                    responsive: true
                });
            });
        </script>

    </body>
</html>

