<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "member.*" %>
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
	<style>
table, th, td {
    border: 1px solid #bcbcbc;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
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
        <h2>���̵� ã��</h2>
        <p>	
<%  FindMemberService findService = new FindMemberService();
	String wname = request.getParameter("wname");
	String mname = request.getParameter("mname");
	String birth = request.getParameter("birth");
	Member mem = findService.findMember(wname,mname,birth);
	if(mem != null) {
%>

	<table border=0 width=220 height=120>
<tr>
<td>  ���̵�</td></tr>
<tr>
<td>  ���ھ��̵� : <%= mem.getWid() %> </td></tr>
<tr>
<td>  ���ھ��̵� : <%= mem.getMid() %> </td></tr>

</table>
<%} else {
%>

<table border=0 width=230 height=200>

<tr>
<td> ȸ�������� Ʋ���ϴ�.</td></tr>
<tr><form action="/201345829/idfind.jsp" method="post"%>

<td><input type="submit" value="���̵�ã��"style="width:180px; height:30px;"></td></form>
</tr>
</table>
<% } %>
</div>
</div>
      <div id="jb-sidebar">
       <div align="center">
		<form action="/201345829/main.jsp" method="post">
		<img src="/201345829/picture/3.JPG" width=200 height=120 >
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