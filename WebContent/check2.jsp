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
        <h1>���ʶ� ����</h1>
      </div></div>
      <div id="jb-content">
	<div align="center">
        <h2>Ż�� �Ͻðڽ��ϱ�?</h2>
        <p>	<table border="0" width=300 height=200>
		<form action="/201345829/withdrawcheck.jsp" method="post">	
		<tr><td><input type="text" name="wid" size = "20" placeholder="���ھ��̵�" value="" style="width:300px; height:30px;"/></td></tr><p>
		<tr><td><input type="text" name="mid" size = "20" placeholder="���ھ��̵�" value="" style="width:300px; height:30px;"/></td></tr><p>
		<tr><td><input type="password" name="pw" style="width:300px; height:30px;" placeholder="�н�����" /></td></tr><p>
		<tr><td><button type="submit" style="width:300px; height:30px;">Ż���ϱ�</button></td></tr></form>
		</table>
				
      </div>
</div>
      <div id="jb-sidebar">
        
	<div align="center">
		<form action="/201345829/success.jsp" method="post">
		<tr><td><button type="submit" style="width:150px; height:30px;">Ȩ����</button></td></tr>
 		</form>
      </div></div>
      <div id="jb-footer">
        <div align="center">
        <p>������ : �̰漱/ ��ȭ��ȣ : 010-1234-5678/ email = kyeong_514@naver.com</p>
      </div>
    </div> </div>
  </body>
</html>