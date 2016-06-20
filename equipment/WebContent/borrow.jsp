<%@ page language="java" import="java.util.Date,java.sql.*,equipment.DbUtil,entity.Borrow" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%
    request.setCharacterEncoding("UTF-8");
    String action=request.getParameter("action");   
    if(action!=null && action.trim().equals("borrow")){
    	String ename=request.getParameter("ename");
    	String tel=request.getParameter("tel");
    	String name=request.getParameter("name");
    	String college=request.getParameter("college");
 
    	int quantity=Integer.valueOf(request.getParameter("quantity"));
    	Borrow b=new Borrow();
    	
		int EID=b.selectEID(ename);
    	b.update(EID, quantity);
    	
    	b.setEID(EID);
    	b.setEquipName(ename);
    	b.setBquantity(quantity);
    	b.setCollege(college);
    	b.setName(name);
    	b.setTel(tel);
    	b.setBdate(new Date());
    	
    	b.save(b);
    	response.sendRedirect("borrowlist.jsp");
    	return;
    	 
    	
    }
   
    %>
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
        background:url(img/002.jpg)  left top no-repeat;
      }
      </style>
    <div class="container-fluid">
    <form action="borrow.jsp" method="post">
	<input type="hidden" name="action" value="borrow" />
	<div class="row-fluid">
		<div class="span12">
		<div class="page-header">
            <h4>借用登记单
            
           </h4>
         </div>
			<form>
			<div class="form-group col-md-4 col-md-offset-4">
			        <lable>器材名称</lable>
					   <input class="form-control" type="text" name="ename"/>
					<lable>借用数量</lable>
					   <input class="form-control" type="text" name="quantity"/>
					<lable>借用人</lable>
					   <input class="form-control" type="text" name="name"/>
					<lable>学院</lable>
					 <input class="form-control" type="text" name="college" />
					<lable>联系方式</lable>
					   <input class="form-control" type="text" name="tel" />					
			</div>
			<div class="col-md-4 col-md-offset-4">
					
					<input class="btn btn-block btn-primary" type="submit" value="提交"/>
			</div>
			</form>
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