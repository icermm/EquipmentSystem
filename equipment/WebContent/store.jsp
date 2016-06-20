<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*" import="equipment.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
    Connection conn = DbUtil.getConnection();
    int OID=Integer.parseInt(request.getParameter("OID"));
	String equipName="";
	int a=0;
	int b=0;
	int c=0;
    int d=0;
    int f=0;
	try{
		PreparedStatement ptmt = conn.prepareStatement("select equipName,oquantity from [order] where OID="+OID+"");
		ResultSet rr = ptmt.executeQuery();
		while (rr.next()){
			equipName=rr.getString("equipName");
			c = rr.getInt("oquantity");
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();}
	try{
		PreparedStatement ptmt = conn.prepareStatement("select quantity,aquantity from equipment where equipName='"+equipName+"'");
		ResultSet rs = ptmt.executeQuery();
		while (rs.next()){
			a= rs.getInt("quantity");
			b = rs.getInt("aquantity");					
		}
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();}
	d=a+c;
	f=b+c;

	try {
	PreparedStatement ptm = conn.prepareStatement("update equipment set quantity='"+d+"',aquantity='"+f+"' where equipName='"+equipName+"'");
	ptm.executeUpdate();} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();}
	


		try{
			PreparedStatement ptt = conn.prepareStatement("delete from [order] where OID=?");
			ptt.setInt(1,Integer.parseInt(request.getParameter("OID")));
			ptt.executeUpdate();
			ptt.close();conn.close();}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();}
	response.sendRedirect("equiplist.jsp");

%>
</body>
</html>