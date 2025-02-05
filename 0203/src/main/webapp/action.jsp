<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="DBPKG.Util" %>
<%	request.setCharacterEncoding("UTF-8");
	
	String saleno = request.getParameter("1");
	String pcode = request.getParameter("2");
	String saledate = request.getParameter("3");
	String scode = request.getParameter("4");
	String amount = request.getParameter("5");
	
	Connection conn = null;
	Statement stmt = null;
	try{
		conn = Util.getConnection();
		stmt = conn.createStatement();
		String sql = "";
		stmt.executeUpdate(sql);
		
	}catch (Exception e){
		e.printStackTrace();
	}
	response.sendRedirect("insert.jsp");
%>