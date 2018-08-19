<%-- 
    Document   : AddBookDetails
    Created on : Aug 4, 2018, 10:02:46 AM
    Author     : Jeyarani
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script type="text/javascript">
            function editSubClassification(form) {
                form.action = "editSubClassification";
                form.submit();
            }
            
            $(document).ready(function(){
              $("#main_classification").val("${abc.mainClassification}");
              $("#sub_classification").val("${abc.subClassification}");
              $("#yearOfPublish").val("${abc.yearOfPublishing}");
              $("#LastprintedYear").val("${abc.lastPrintedYear}");
              
            });

        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Book</title>


    </head>
    <body>
        <div id="page-wrapper"><%@ include file="Dashboard.jsp"%>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Edit Details</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Edit Book
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" action="EditController" method="post">
                                        <div class="form-group">
                                            <label>BookID</label>
                                            <input name="bookID" class="form-control" value="${abc.bookId}">
                                        </div>  
                                        <div class="form-group">
                                            <label>Title</label>
                                            <input name="title" class="form-control" value="${abc.title}">
                                        </div>
                                        <div class="form-group">
                                            <label>Author</label>
                                            <input name="auth" class="form-control" value="${abc.author}">
                                        </div>                                            
                                        <div class="form-group">
                                            <label>Select Main classification </label>
                                            <select class="form-control" name="mainClassificationId" id="main_classification" onChange="editSubClassification(this.form);">
                                                    <c:forEach var="item" items="${mainClassifications}">
                                                    <option value="${item.mcId}" <c:if test="${item.mcId eq mainClassificationId}" >Selected="true"</c:if>>${item.mcName}</option>
                                                    </c:forEach>
                                            </select>
                                        </div>                                            
                                        <div class="form-group">
                                            <label>Select Sub classification </label>
                                            <select class="form-control" name="sID" id="sub_classification">
                                                <c:forEach var="item" items="${subClassifications}">
                                                    <option value="${item.scId}"> ${item.scName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>                                             
                                        <div class="form-group">
                                            <label>Year of publishing </label>
                                            <select id="yearOfPublish" name="YofPublish" class="form-control">
                                                <option value="-1"></option>
                                                <%
                                                    for (int i = 1500; i < 4000; i++) {%>
                                                <option value="<%=i%>"><%=i%></option>
                                                <%}
                                                %>
                                            </select>
                                        </div> 
                                        <div class="form-group">
                                            <label>Last printed Year</label>
                                            <select class="form-control" name="lastPrintYr" id="LastprintedYear">
                                                <option value="-1"></option>
                                                <%
                                                    for (int i = 1500; i < 4000; i++) {%>
                                                <option value="<%=i%>"><%=i%></option>
                                                <%}
                                                %>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>ISBN No</label>
                                            <input name="ISBNno" class="form-control" value="${abc.ISBNno}">
                                        </div>                                            
                                        <div class="form-group">
                                            <label>No Of Pages</label>
                                            <input name="NoOfPages" class="form-control" value="${abc.noOfPages}">
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