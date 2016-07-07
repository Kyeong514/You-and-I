<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.sql.*" %>
<%@ page import="member.*" %>

<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>CSS Tutorial | Layout</title>
    <style>
      #jb-container {
        width: 940px;
        margin: 0px auto;
        padding: 20px;
        border: 1px solid #bcbcbc;
      }
      #jb-header {
        padding: 20px;
        margin-bottom: 20px;
        border: 1px solid #bcbcbc;
      }
      #jb-content {
        width: 580px;
        padding: 20px;
        margin-bottom: 20px;
        float: left;
        border: 1px solid #bcbcbc;
      }
      #jb-sidebar {
        width: 260px;
        padding: 20px;
        margin-bottom: 20px;
        float: right;
        border: 1px solid #bcbcbc;
      }
      #jb-footer {
        clear: both;
        padding: 20px;
        border: 1px solid #bcbcbc;
      }
    </style>
  </head>
  <body>
    <div id="jb-container">
      <div id="jb-header">
      <div align = "center">
        <h1>���ʶ� ����</h1>
      </div></div>
      <div id="jb-content">
	<div align="center">
        <h2>ȸ��Ż��</h2>
        <p>	

	<%	DeleteMemberService deleteService = new DeleteMemberService();
		request.setCharacterEncoding("euc-kr");
		int no = (Integer)session.getAttribute("no");

		boolean result;
		result = deleteService.DeleteMember(no);
	

		%><% if (result == true) { %>

		ȸ��Ż���Ͽ����ϴ�.


		<% }else { %>

		ȸ��Ż������Ͽ����ϴ�.
		
		<% } %>

</div>
</div>
      <div id="jb-sidebar">
      <div align="center">
        <% if (result == true) { %>

		<form action="/201345829/main.jsp" method="post">
		<button type="submit" style="width:150px; height:30px;">Ȩ����</button>
		</form>
		</div>

		<% }else { %>

		<form action="/201345829/success.jsp" method="post">
		<button type="submit" style="width:150px; height:30px;">���ư���</button>
		</form>
		<% } %>

      </div>
       <div id="jb-footer">
	<div align="center">
      <p>������ : �̰漱/ ��ȭ��ȣ : 010-1234-5678/ email = kyeong_514@naver.com</p>
      </div>
    </div> </div>
  </body>
</html>