<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.*"%>
    <%@ page import="entity.*"%>
    <% List<equipment> equips = equipdao.getInstance().getEquip();%>
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
            <h4>器材清单
             <small><a href="equipAdd.jsp" target="_blank">添加器材</a></small>
           </h4>
         </div>
         <table class="table table-bordered table-hover">
          <thead>
           <tr>
            <th>
              器材名称
            </th>
            <th>
              总数量
            </th>
            <th>
              可借数量
            </th>
            <th>
              区域
            </th>
            <th>
              处理
            </th>
          </tr>
        </thead>
        <%
				for (int i = 0; i < equips.size(); i++) {
					equipment c = equips.get(i);

				%>
        <tbody>  
          <tr class="success">
            <td>
             <%=c.getEquipName()%>
            </td>
            <td>
             <%=c.getQuantity()%>
            </td>
            <td>
              <%=c.getAquantity()%>
            </td>
            <td>
              <%=c.getPlace()%>
            </td><td>
            <a  href="equipDelete.jsp?EID=<%=c.getEID() %>" onclick="return confirm('确定要删?')">删除</a>&nbsp&nbsp
			<a target="_blank" href="equipModify.jsp?EID=<%=c.getEID() %>">修改</a>
          </td>
        </tr>
      	<%
				}
				%> 
  </tbody>
</table>
</div>
</div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/vendor/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/flat-ui.min.js"></script>
<script src="js/application.js"></script>
</body>
</html>