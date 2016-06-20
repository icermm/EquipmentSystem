<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
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
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="page-header">
					<h4>
						维护清单
					</h4>
				</div>
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th>器材名称</th>
							<th>维护数量</th>
							<th>处理</th>
						</tr>
					</thead>
					<tbody>
						<tr class="info">
							<td>篮球</td>
							<td>33</td>
							<td>维修</td>
						</tr>
						<tr class="info">
							<td>瑜伽垫</td>
							<td>14</td>
							<td>维修</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/vendor/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/flat-ui.min.js"></script>
	<script src="../assets/js/application.js"></script>
</body>
</html>
