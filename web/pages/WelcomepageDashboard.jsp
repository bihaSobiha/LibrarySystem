
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    <head>
        <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                    <meta name="description" content="">
                        <meta name="author" content="">

                            <title>Dashboard</title>
                            <!-- Bootstrap Core CSS -->
                            <link href="./css/bootstrap.min.css" rel="stylesheet" type="text/css">

                                <!-- MetisMenu CSS -->
                                <link href="./css/metisMenu.min.css" rel="stylesheet" type="text/css">

                                    <!-- Timeline CSS -->
                                    <link href="./css/timeline.css" rel="stylesheet" type="text/css">

                                        <!-- Custom CSS -->
                                        <link href="./css/startmin.css" rel="stylesheet" type="text/css">

                                            <!-- Morris Charts CSS -->
                                            <link href="./css/morris.css" rel="stylesheet" type="text/css">

                                                <!-- Custom Fonts -->
                                                <link href="./css/font-awesome.min.css" rel="stylesheet" type="text/css">
                                                    <!-- jQuery -->
                                                    <script src="../js/jquery.min.js"></script>

                                                    <!-- Bootstrap Core JavaScript -->
                                                    <script src="../js/bootstrap.min.js"></script>

                                                    <!-- Metis Menu Plugin JavaScript -->
                                                    <script src="../js/metisMenu.min.js"></script>

                                                    <!-- Morris Charts JavaScript -->
                                                    <script src="../js/raphael.min.js"></script>
                                                    <script src="../js/morris.min.js"></script>
                                                    <script src="../js/morris-data.js"></script>

                                                    <!-- Custom Theme JavaScript -->
                                                    <script src="../js/startmin.js"></script>

                                                    </head>
                                                    <form action="" method="">
                                                        <div id="wrapper">
                                                            <!-- Navigation -->
                                                            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                                                                

                                                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                                                    <span class="sr-only">Toggle navigation</span>
                                                                    <span class="icon-bar"></span>
                                                                    <span class="icon-bar"></span>
                                                                    <span class="icon-bar"></span>
                                                                </button>

                                                                <ul class="nav navbar-nav navbar-left navbar-top-links">
                                                                    <li><a href="#"><i class="fa fa-home fa-fw"></i> Home</a></li>
                                                                </ul>
                                                                <div class="navbar-header">
                                                                    <a class="navbar-brand" href="#" >Library Managment System</a>
                                                                </div>
                                                                <div class="navbar-default sidebar" role="navigation">
                                                                    <div class="sidebar-nav navbar-collapse">
                                                                        <ul class="nav" id="side-menu">
                                                                            <li>
                                                                                <a href="#"><i class="fa fa-files-o fa-fw"></i>Books<span class="fa arrow"></span></a>
                                                                                <ul class="nav nav-second-level">
                                                                                    <li><a href="BookController">Add Book</a></li>
                                                                                    <li><a href="SearchViewController">Search & View Book</a></li>
                                                                                </ul>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#"><i class="fa fa-files-o fa-fw"></i>Classifications<span class="fa arrow"></span></a>
                                                                                <ul class="nav nav-second-level">
                                                                                    <li>
                                                                                        <a href="#"><i class="fa fa-files-o fa-fw"></i>Main Classifications<span class="fa arrow"></span></a>
                                                                                        <ul class="nav nav-third-level">
                                                                                            <li><a href="MainClassificationController">Add</a></li>
                                                                                            <li><a href="McSearchViewController">Search & View</a></li>
                                                                                        </ul>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#"><i class="fa fa-files-o fa-fw"></i>Sub Classifications<span class="fa arrow"></span></a>
                                                                                        <ul class="nav nav-third-level">
                                                                                            <li><a href="SubClassificationController">Add</a></li>
                                                                                            <li><a href="ScSearchViewController">Search & View</a></li>
                                                                                        </ul>
                                                                                    </li>
                                                                                </ul>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </nav>
                                                        </div>
                                                    </form>
                                                    </html>






