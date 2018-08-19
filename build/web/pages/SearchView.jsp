<%-- 
    Document   : McSearchView
    Created on : 10/08/2018, 12:15:05 PM
    Author     : Jeyarani
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <form action="SearchViewController" method="post">
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
                            <option value="BookId">Book_Id</option>
                            <option value="Title">Title</option>
                            <option value="Author">Author</option>
                        </select>
                        <input type="text" name="svalue">
                        <input type="submit" name="Search" value="Search"></div>
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
                                                    <th>Book ID</th>
                                                    <th>Book Title</th>
                                                    <th>Author</th>
                                                    <th>Main Classification</th>
                                                    <th>Sub Classification</th>
                                                    <th>Year of Publishing</th>
                                                    <th>Last Printed Year</th>
                                                    <th>ISBN Number</th>
                                                    <th>Number of Pages</th>
                                                    <th>Edit</th>
                                                    <th>Delete</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${abc}" var="item">
                                                    <tr class="odd gradeX">
                                                        <td>${item.bookId}</td>
                                                        <td>${item.title}</td>
                                                        <td>${item.author}</td>
                                                        <td>${item.mainClassification}</td>
                                                        <td>${item.subClassification}</td>
                                                        <td>${item.yearOfPublishing}</td>
                                                        <td>${item.lastPrintedYear}</td>
                                                        <td>${item.ISBNno}</td>
                                                        <td>${item.noOfPages}</td>
                                                        <td><a href="EditController?bookId=${item.bookId}"><i class="fa fa-fw" aria-hidden="true" title="Copy to use edit"></i></a></td>
                                                        <td><a href="DeleteController?bookId=${item.bookId}"class="delete" title="Delete" data-toggle="tooltip" onclick="return confirmDelete();"><i class="fa fa-fw" aria-hidden="true" title="Copy to use trash"></i></a></td>
                                                    </tr>
                                                </c:forEach>

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