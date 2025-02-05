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
		<h3>판매현황</h3>
		<table border=1>
			<tr><td>비번호</td><td>상품코드</td><td>판매날짜</td><td>매장코드</td><td>상품명</td><td>판매수량</td><td>총판매액</td></tr>
			<% Connection conn = null;
				Statement stmt = null;
				try{
					conn = Util.getConnection();
					stmt = conn.createStatement();
					String sql = "select a.saleno, a.pcode, a.saledate, a.scode, b.name, a.amount, "
							+"to_char(a.amount*b.cost,'FM9,999,999') AS total_cost "
							+"from tbl_salelist_01 a INNER join tbl_product_01 b on a.pcode=b.pcode";
					ResultSet rs = stmt.executeQuery(sql);	
					while (rs.next()){
					 %>
						<tr>
							<td><%= rs.getString("saleno") %></td>
							<td><%= rs.getString("pcode") %></td>
							<td><%= rs.getString("saledate") %></td>
							<td><%= rs.getString("scode") %></td>
							<td><%= rs.getString("name") %></td>
							<td><%= rs.getString("amount") %></td>
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