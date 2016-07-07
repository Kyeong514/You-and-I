<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.sql.*" %>

 <% request.setCharacterEncoding("euc-kr");%>
 
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
        <h1></h1>
      </div></div>
      <div id="jb-content">
	<div align="center">
        <h2> 홈페이지에 오신 것을 환영합니다</h2>
        <br>
		<form action="/201345829/join.jsp" method="post"%>
		<button type="submit" style="width:200px; height:30px;">회원가입</button>
		</form>
		<br><br>
		<form action="/201345829/introduce.jsp" method="post"%>
		<button type="submit" style="width:200px; height:30px;">홈페이지소개</button></form>
		<br><br>
      </div>
</div>
      <div id="jb-sidebar">
       <p>	<table border="0" width=250 height=200>
		<form action="/201345829/logincheck.jsp" method="post">	
		<tr><td><input type="text" name="id" size = "20" placeholder="아이디" style="width:250px; height:30px;"/></td></tr><p>
		<tr><td><input type="password" name="pw" style="width:250px; height:30px;" placeholder="패스워드" /></td></tr><p>
		<tr><td><button type="submit" style="width:250px; height:30px;">로그인</button></td></tr>
		</form>
		<tr><td><div align="right"><a href="/201345829/idfind.jsp">아이디</a>/<a href="/201345829/pwfind.jsp">비밀번호 찾기</a></div></td></tr>
		</table>
      </div>
      <div id="jb-footer">
	<div align="center">
        <p>관리자 : 이경선/ 전화번호 : 010-1234-5678/ email = kyeong_514@naver.com</p>
      </div>
    </div> </div>
  </body>
</html>