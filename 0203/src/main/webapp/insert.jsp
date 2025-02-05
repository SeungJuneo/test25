<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h3>판매등록</h3>
		<form method="post" action="action.jsp" name="frm">
			<table border=1>
			<tr>
				<td>판매번호</td>
				<td><input type="text" name="pcode"></td>
			</tr>
			<tr>
				<td>상품코드</td>
				<td><input type="text" name="saleno"></td>
			</tr>
			<tr>
				<td>판매날짜</td>
				<td><input type="date" name="saledate"></td>
			</tr>
			<tr>
				<td>매장코드</td>
				<td><input type="text" name="scode"></td>
			</tr>
			<tr>
				<td>판매수량</td>
				<td><input type="text" name="amount"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="등 록" onclick="return insertCheck()">
					<input type="reset" value="다시쓰기" onclick="return insertCheck()">
				</td>
			</tr>
		</table>
		</form>
	</section>
	<footer><jsp:include page="footer.jsp"></jsp:include></footer>
</body>
</html>