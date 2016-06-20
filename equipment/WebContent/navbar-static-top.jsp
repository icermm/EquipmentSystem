<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>器材室管理信息系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Loading Bootstrap -->
    <link href="css/vendor/bootstrap.min.css" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="css/flat-ui.css" rel="stylesheet">

    <link rel="shortcut icon" href="img/favicon.ico">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="js/vendor/html5shiv.js"></script>
      <script src="js/vendor/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <style>
      body {
        min-height: 2000px;
       
      }
      ul li a {
        text-align: center;
      }
      .navbar-static-top {
        margin-bottom: 19px;
      }
      .nih{
      	height: 680px;
      }
    </style>

    <!-- Static navbar -->
    <div class="navbar navbar-inverse navbar-static-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
          </button>
          <a class="navbar-brand" href="#">器材室管理信息系统</a>
        </div>
        <div class="navbar-collapse collapse">
          
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="../navbar/">用户</a></li>
            <li ><a href="./">退出</a></li>
            <li ><a href="./">关于我们</a></li>

          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>


    <div class="container-fluid bg001">
    <div class="row">
      <!-- Main component for a primary marketing message or call to action -->
    <div class="col-md-2 sidebar">
    	<ul class="nav nav-sidebar">器材管理 <span class="glyphicon glyphicon-star" ></span>
             <li><a href="equipAdd.jsp"  target="main">添加器材</a></li>
            <li><a href="equiplist.jsp" target="main">器材清单</a></li>          
          </ul>
          <ul class="nav nav-sidebar">器材借用
            <li><a href="borrow.jsp" target="main">借用登记单</a></li>
            <li><a href="borrowlist.jsp" target="main">借用清单</a></li>
            <li><a href="borrowchart.jsp" target="main">借用图表</a></li>
          </ul>
          <ul class="nav nav-sidebar">器材订购
            <li><a href="buy.jsp"  target="main">器材订购单</a></li>
            <li><a href="orderlist.jsp" target="main">订购清单</a></li>
          </ul>
          <ul class="nav nav-sidebar">器材维护
            <li><a href="repair.jsp" target="main">维护登记单</a></li>
            <li><a href="repairlist.jsp" target="main">维护清单</a></li>
          </ul>
          <ul class="nav nav-sidebar">器材赔偿
            <li><a href="borrow.jsp" target="main">赔偿登记单</a></li>
            <li><a href="paylist.jsp" target="main">赔偿清单</a></li>
          </ul>
        </div>



         <div class="col-md-8.5 col-md-offset-2 nih" >
         <iframe name="main" src="equiplist.jsp" width="100%" height="100%">你好!</iframe>
         </div>
</div>
    </div> <!-- /container -->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/vendor/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/flat-ui.min.js"></script>

    <script src="js/application.js"></script>

  </body>
</html>
