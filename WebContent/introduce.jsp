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
        <h1>���ʶ� ����</h1>
      </div></div>
      <div id="jb-content">
	<div align="center">
        <h2>Ȩ������ �Ұ�</h2>
        <p>	
		�ȳ��ϼ���.<br>
		�� Ȩ�������� �����΢����� ���� �����Դϴ�.<br>
		�����΢����� �߾��� �� Ȩ�������� ��ƺ�����~~!!<br><br>
		-�����-<br>
		1. ���ʶ� ������ ȸ�� ������ �ϼ���<Br>
		2. �α����� �Ͻø� �� �Ѹ��� Ȩ�������� ��Ÿ���ϴ�.<br>
		3. �Ѹ��� Ȩ�������� �������� �߾��� ��� �۷� ä���ּ���.
				
      </div>
</div>
      <div id="jb-sidebar">
        <div align="center">
		<form action="/201345829/main.jsp" method="post">
		<img src="/201345829/picture/2.JPG" width=200 height=150 >
		<tr><td><button type="submit" style="width:150px; height:30px;">Ȩ����</button></td></tr>
 		</form>
      </div></div>
      <div id="jb-footer">
      <div align="center">
        ������ : �̰漱/ ��ȭ��ȣ : 010-1234-5678/ email = kyeong_514@naver.com
      </div></div>
    </div>
  </body>
</html>