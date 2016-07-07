<%@ page contentType = "text/html; charset=euc-kr" %>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import="member.*" %>

<%	request.setCharacterEncoding("euc-kr"); %>
	
<jsp:useBean id="mem" class="member.Member">
<jsp:setProperty name="mem" property="*" />
</jsp:useBean>
<%
	InsertMemberService insertService = new InsertMemberService();
	int result = insertService.InsertMember(mem);
%>
<%
if(result > 0) { %>
<script>
alert("회원가입이 완료 되었습니다.");
location.href='/201345829/main.jsp';
</script>

<%
}
else {
%>
<script>
alert("패스워드가 동일하지 않습니다.");
history.go(-1);
</script>
<%
}
%>




