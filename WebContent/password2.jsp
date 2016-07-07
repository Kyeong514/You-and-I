<%@ page contentType = "text/html; charset=euc-kr" %>

<%@ page import="member.*" %>

<%
	String rpw = request.getParameter("rpw");
	String pw = request.getParameter("pw");
	String wid = (String)session.getAttribute("wid");
	String wpw = (String)session.getAttribute("pw");
	String cpw = request.getParameter("cpw");
	int no = (Integer)session.getAttribute("no");
	UpdateMemberService updateService = new UpdateMemberService();
	boolean result;
	

   
    if(pw.equals(rpw) && wpw.equals(cpw) ){
		result = updateService.UpdatePw(pw, no);
		if(result==true) {
        								

%>
<script>
alert("비밀번호가 변경되었습니다. 재로그인 해주세요.");
location.href='/201345829/main.jsp';
</script>

<%
		}
		else {
%>
<script>
alert("변경에 실패했습니다.");
history.go(-1);
</script>
<% } 
} else {%>
<script>
alert("비밀번호가 틀렸습니다.");
history.go(-1);
</script>
<%} %>

