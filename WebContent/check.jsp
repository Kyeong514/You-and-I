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
alert("ȸ�������� �Ϸ� �Ǿ����ϴ�.");
location.href='/201345829/main.jsp';
</script>

<%
}
else {
%>
<script>
alert("�н����尡 �������� �ʽ��ϴ�.");
history.go(-1);
</script>
<%
}
%>




