<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

	<form action="searchblist.jsp" method="post">

		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<div class="page-header">
						<h4>
							赔偿清单 
						</h4>
					</div>
					<div class="input-group">
						<input type="text" name="sname" value="请输入借用人姓名"
							class="form-control" placeholder="Search" id="search-query-3">
						<span class="input-group-btn">
							<button type="submit" name="search" class="btn">
								<span class="fui-search"></span>
							</button>
						</span>
					</div>
<br>
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<th>器材名称</th>
								<th>赔偿数量</th>
								<th>借用人</th>
								<th>学院</th>
								<th>联系方式</th>
								<th>状态</th>
							</tr>
						</thead>
						<tbody>
							<tr class="info">
								<td>篮球</td>
								<td>5</td>
								<td>王五</td>
								<td>计算机学院</td>
								<td>15062215543</td>

								<td>已赔偿</td>
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
	</form>
</body>
</html>