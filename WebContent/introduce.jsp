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
        <h2>홈페이지 소개</h2>
        <p>	
		안녕하세요.<br>
		이 홈페이지는 ♥연인♥들의 위한 공간입니다.<br>
		♥연인♥들의 추억을 이 홈페이지에 담아보세요~~!!<br><br>
		-사용방법-<br>
		1. ♥너랑 나♥에 회원 가입을 하세요<Br>
		2. 로그인을 하시면 단 둘만의 홈페이지가 나타납니다.<br>
		3. 둘만의 홈페이지에 여러분의 추억이 담긴 글로 채워주세요.
				
      </div>
</div>
      <div id="jb-sidebar">
        <div align="center">
		<form action="/201345829/main.jsp" method="post">
		<img src="/201345829/picture/2.JPG" width=200 height=150 >
		<tr><td><button type="submit" style="width:150px; height:30px;">홈으로</button></td></tr>
 		</form>
      </div></div>
      <div id="jb-footer">
      <div align="center">
        관리자 : 이경선/ 전화번호 : 010-1234-5678/ email = kyeong_514@naver.com
      </div></div>
    </div>
  </body>
</html>