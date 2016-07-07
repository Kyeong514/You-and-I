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
		<h2>회원가입 페이지</h2>
        <form action="/201345829/check.jsp" method="post"%>
        <p>	<table border="0" width=300 height=10>
		<tr><td>WID </td><td><input type="text" name="wid"></td></tr><p>
		<tr><td>MID </td><td><input type="text" name="mid"></td></tr><p>
		<tr><td>PW </td><td><input type="text" name="pw" ></td></tr><p>
		<tr><td>PW 재확인 </td><td><input type="text" name="rpw" size = "20"></td></tr><p>
		<tr><td>여자이름 </td><td><input type="text" name="wname"></td></tr><p>
		<tr><td>남자이름 </td><td><input type="text" name="mname"></td></tr><p>
		<tr><td>연애시작일</td><td><input type="text" name="date" ></td></tr><p>
		<tr><td>남여생년월일 </td><td><input type="text" name="birth"></td></tr><p>
		<tr><td>여자전화번호</td><td> <input type="text" name="wphone" ></td></tr><p>
		<tr><td>남자전화번호</td><td><input type="text" name="mphone"></td></tr><p>
		<tr><td colspan = "2"><button type="submit" style="width:250px; height:25px;">회원가입</button></td></tr>
		</form>	
		</table>
		</div></div>
		
      <div id="jb-sidebar">
       <div align="center">
       <img src="/201345829/picture/1.JPG" width=250 height=300 >
		<form action="/201345829/main.jsp" method="post">
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