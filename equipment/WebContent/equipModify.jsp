<%@ page language="java" import="java.util.*,dao.*,entity.equipment"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	equipment c = new equipment();
	int EID = Integer.parseInt(request.getParameter("EID"));
	c = equipdao.getInstance().getEquipByid(EID);

	String action = request.getParameter("action");

	if (action != null && action.trim().equals("add")) {
		String ename = request.getParameter("ename");
		int quantity = Integer.parseInt(request
				.getParameter("quantity"));
		int aquantity = Integer.parseInt(request
				.getParameter("aquantity"));
		String place = request.getParameter("place");
		c.setEquipName(ename);
		c.setQuantity(quantity);
		c.setAquantity(aquantity);
		c.setPlace(place);
		equipdao.getInstance().update(c);
		out.println("更新成功！");
		response.sendRedirect("equiplist.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
		<form method="post" name="formModify" action="equipModify.jsp">
			<input type="hidden" name="action" value="add" /> <input
				type="hidden" name="EID" value="<%=EID%>" />

			<div class="row-fluid">
				<div class="span12">
					<div class="page-header">
						<h4>修改器材</h4>
					</div>
					<div class="form-group col-md-4 col-md-offset-4">
						<lable>器材名称</lable>
						<input class="form-control" type=text name="ename"
							value=<%=c.getEquipName()%> />
						<lable>器材数量</lable>
						<input class="form-control" type=text name="quantity"
							value=<%=c.getQuantity()%> />
						<lable>可用数量</lable>
						<input class="form-control" type=text name="aquantity"
							value=<%=c.getAquantity()%> />
						<lable>所在区域</lable>
						<input class="form-control" type=text name="place"
							value=<%=c.getPlace()%> />
					</div>
					<div class="col-md-4 col-md-offset-4">
						<input class="btn btn-block btn-primary" type="submit" value="提交" />
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>