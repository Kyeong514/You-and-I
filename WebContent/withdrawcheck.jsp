<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import="member.*" %>
<%@ page import = "java.sql.*" %>
<%
	request.setCharacterEncoding("euc-kr");
	String wid = request.getParameter("wid");
	String mid = request.getParameter("mid");
	String pw = request.getParameter("pw");
%>

 <% request.setCharacterEncoding("euc-kr");%>

<%	String wid_session = (String)session.getAttribute("wid");
	String mid_session = (String)session.getAttribute("mid");
	String pw_session = (String)session.getAttribute("pw");
	if(mid.equals(mid_session) && wid.equals(wid_session) && pw.equals(pw_session)){
		response.sendRedirect("withdraw.jsp");
	}

        else {
%>
<script>
alert("������ �ùٸ��� �ʽ��ϴ�");
history.go(-1);
</script>
<% } %>


