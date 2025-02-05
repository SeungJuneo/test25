<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="DBPKG.Util" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header><jsp:include page="header.jsp"></jsp:include></header>
	<nav><jsp:include page="nav.jsp"></jsp:include></nav>
	<section>
	<h3>매장별 판매액</h3>
		<table border=1>
			<tr><td>매장코드</td><td>매장명</td><td>매장별 판매액</td></tr>
			
			<%	Connection conn = null;
				Statement stmt = null;
				
				try{
					conn = Util.getConnection();
					stmt = conn.createStatement();
					String sql = "SELECT a.scode, "
						       +"c.sname, "
						       +"TO_CHAR(SUM(a.amount * b.cost), 'FM9,999,999') AS total_cost "
						+"FROM tbl_salelist_01 a "
						+"INNER JOIN tbl_product_01 b ON a.pcode = b.pcode "
						+"INNER JOIN tbl_shop_01 c ON a.scode = c.scode "
						+"GROUP BY a.scode, c.sname "
						+"order by 1";
					ResultSet rs = stmt.executeQuery(sql);
					while (rs.next()){
					%>	
						<tr>
							<td><%= rs.getString("scode") %></td>
							<td><%= rs.getString("sname") %></td>
							<td><%= rs.getString("total_cost") %></td>
						</tr>
					<% 	
					}
					
				}catch (Exception e){
					e.printStackTrace();
				}
			%>
						
		</table>
	</section>
	<footer><jsp:include page="footer.jsp"></jsp:include></footer>
</body>
</html>