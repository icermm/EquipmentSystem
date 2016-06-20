<%@ page language="java" import="java.sql.*,equipment.DbUtil,entity.Borrow" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    	int BID=Integer.parseInt(request.getParameter("BID"));
    	Borrow b=new Borrow();
    	int bquantity=b.selectbquantity(BID);
    	int EID=b.selectEIDbyBID(BID);
    	b.changestate(BID);
    	b.returnback(EID, bquantity);
    	response.sendRedirect("borrowlist.jsp");
    
    %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>