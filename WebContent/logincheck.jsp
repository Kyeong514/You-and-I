<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import="member.*" %>


<%	
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>

<% CheckMemberService checkService = new CheckMemberService();
       Member mem = new Member();
       mem=checkService.checkMember(id,pw);
	   if( mem !=null ) {
			session.setAttribute("no",mem.getNo());
			session.setAttribute("wid",mem.getWid());
			session.setAttribute("mid",mem.getMid());
			session.setAttribute("pw",mem.getPw());
			session.setAttribute("wname",mem.getWname());
			session.setAttribute("mname",mem.getMname());
			session.setAttribute("date", mem.getDate());
			session.setAttribute("joindate",mem.getJoindate());
			session.setAttribute("birth",mem.getBirth());
			session.setAttribute("wphone",mem.getWphone());
			session.setAttribute("mphone",mem.getMphone());
			response.sendRedirect("/201345829/success.jsp");				
	   }	
       else {
%>
<script>
alert("입력하신 정보가 올바르지 않습니다");
history.go(-1);
</script>
<%	 }   %>

