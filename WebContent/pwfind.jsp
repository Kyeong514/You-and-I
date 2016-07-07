<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.sql.*" %>



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
        <h2>비밀번호 찾기</h2>
        <p>	<table border="0" width=300 height=150>
		<form action="/201345829/pwfind2.jsp" method="post">	
		<tr><td><input type="text" name="id" placeholder="아이디" value=""  /></td></tr><p>
		<tr><td><input type="text" name="wname" placeholder="여자이름" value=""  /></td></tr><p>
		<tr><td><input type="text" name="mname"  placeholder="남자이름" /></td></tr><p>
		<tr><td><input type="text" name="date"  placeholder="연애시작일" /></td></tr><p>
		<tr><td><button type="submit" style="width:120px; height:25px;">비밀번호찾기</button></td></tr>
		</form>
		</table>
				
      </div>
</div>
      <div id="jb-sidebar">
        <div align="center">
		<form action="/201345829/main.jsp" method="post">
		<img src="/201345829/picture/3.JPG" width=200 height=120 >
		<tr><td><button type="submit" style="width:150px; height:30px;">홈으로</button></td></tr>
 		</form>
      </div></div>
      <div id="jb-footer">
	<div align="center">
      <p>관리자 : 이경선/ 전화번호 : 010-1234-5678/ email = kyeong_514@naver.com</p>
      </div>
    </div> </div>
  </body>
</html>