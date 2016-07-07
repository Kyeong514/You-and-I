<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.sql.*" %>

<%
String wname = (String)session.getAttribute("wname");
String mname = (String)session.getAttribute("mname");
%>

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
        <div align="center">
        <h1>♥너랑 나♥</h1>
      </div></div>
      <div id="jb-content">
	<div align="center">
        <h2><%= wname %> ♥ <%= mname%></h2>
        <p>	<table border="0" width=300 height=200>
		<form action="/201345829/calendar.jsp" method="post"%>
		<tr><td><button type="submit" style="width:300px; height:30px;">캘린더</button></td></tr>
		</form>
		</table>
				
      </div>
</div>
      <div id="jb-sidebar">
       <div align="center">
        <p>	<table border="0" width=200 height=100>
		<form action="/201345829/view.jsp" method="post"%>	
		<tr><td><button type="submit" style="width:200px; height:25px;"> 회원 정보 설정</button></form></td></tr><p>
		<form action="/201345829/check2.jsp" method="post"%>
		<tr><td><button type="submit" style="width:200px; height:25px;">회원 탈퇴</button></td></tr>
		</form>
		<form action="/201345829/logout.jsp" method="post">
		<tr><td><button type="submit" style="width:200px; height:25px;">로그아웃</button></td></tr>
		</form>
		</table>
				
      </div>
      </div>
      <div id="jb-footer">
        <div align="center">
        <p>관리자 : 이경선/ 전화번호 : 010-1234-5678/ email = kyeong_514@naver.com</p>
      </div>
    </div> </div>
  </body>
</html>