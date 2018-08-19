<%-- 
    Document   : MainClassification
    Created on : Aug 4, 2018, 10:02:46 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Main Classification</title>
        
	
    </head>
    <body>
        <div id="page-wrapper"><%@ include file="Dashboard.jsp"%>
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Main Classification</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Edit Main Classification
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <form role="form" action="EditMcController" method="POST">
                                            <div class="form-group">
                                                <label>Main Classification Id</label>
                                                <input class="form-control" name="McID" value="${abc.mcId}">
                                            </div>
                                            <div class="form-group">
                                                <label>Title</label>
                                                <input class="form-control" name="MclName" value="${abc.mcName}">
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
