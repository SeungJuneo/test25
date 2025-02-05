/**
 * 
 */
function insertCheck(){
	if (document.frm.pcode.value==""){
		alert("판매번호가 입력되지 않았습니다.");
		frm.pcode.focus();
		return false;
	}
	if (document.frm.saledate.value==""){
		alert("상품코드가 입력되지 않았습니다.");
		frm.pcode.focus();
		return false;
	}
	if (document.frm.scode.value==""){
		alert("판매날짜가 입력되지 않았습니다.");
		frm.pcode.focus();
		return false;
	}
	if (document.frm.amount.value==""){
		alert("매장코드가 입력되지 않았습니다.");
		frm.pcode.focus();
		return false;
	}
	alert("판매등록이 완료되었습니다.");
	return false;
}
function resetClick(){
	alert("정보를 지우고 처음부터 다시 입력합니다.");
	pcode.value="";
	saledate.value="";
	scode.value="";
	amount.value="";
}