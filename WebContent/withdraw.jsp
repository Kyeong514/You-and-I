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
        <h1>♥너랑 나♥</h1>
      </div></div>
      <div id="jb-content">
	<div align="center">
        <h2>회원탈퇴</h2>
        <p>	

	<%	DeleteMemberService deleteService = new DeleteMemberService();
		request.setCharacterEncoding("euc-kr");
		int no = (Integer)session.getAttribute("no");

		boolean result;
		result = deleteService.DeleteMember(no);
	

		%><% if (result == true) { %>

		회원탈퇴하였습니다.


		<% }else { %>

		회원탈퇴실패하였습니다.
		
		<% } %>

</div>
</div>
      <div id="jb-sidebar">
      <div align="center">
        <% if (result == true) { %>

		<form action="/201345829/main.jsp" method="post">
		<button type="submit" style="width:150px; height:30px;">홈으로</button>
		</form>
		</div>

		<% }else { %>

		<form action="/201345829/success.jsp" method="post">
		<button type="submit" style="width:150px; height:30px;">돌아가기</button>
		</form>
		<% } %>

      </div>
       <div id="jb-footer">
	<div align="center">
      <p>관리자 : 이경선/ 전화번호 : 010-1234-5678/ email = kyeong_514@naver.com</p>
      </div>
    </div> </div>
  </body>
</html>