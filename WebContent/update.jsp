<%@ page contentType = "text/html; charset=euc-kr" %>

 <% request.setCharacterEncoding("euc-kr");%>

<%@ page import="member.*" %>

<%int no = (Integer)session.getAttribute("no"); %>
<jsp:useBean id="mem" class="member.Member">
<jsp:setProperty name="mem" property="*" />
</jsp:useBean>
	
<% 	UpdateMemberService updateService = new UpdateMemberService();
	boolean result;
	mem.setNo(no);
	
	result = updateService.UpdateInfo(mem);
	if(result==true) {
    
%>
<script>
alert("����Ǿ����ϴ�.");
location.href='/201345829/success.jsp';
</script>
<% }  else {%>
<script>
alert("����!");
location.href='/201345829/success.jsp';
</script>
<% }%>

