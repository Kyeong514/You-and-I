<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import="calendar.*" %>
<%  request.setCharacterEncoding("euc-kr");
	String year= request.getParameter("year");
	String month= request.getParameter("month");
	String day= request.getParameter("day");
	
	GetCalendarService GetCal = new GetCalendarService();
	Calendar cal = new Calendar();
	cal = GetCal.GetCalendar(year,month,day);
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
        <h1>���ʶ� ����</h1>
      </div></div>
      <div id="jb-content">
	<div align="center">
        <h2>����� ���</h2>
		<%@ page 
			info="�����"
			contentType="text/html; charset=euc-kr"
%>

		<form method="post" action="calendarjoin.jsp">
			<table>
				<tr>
					<td> �����</td>
					<td><%=year %>�� <%=month %>�� <%=day %>��</td>
				</tr>
				<tr>
					<td>���� </td>
					<td><input type="text" size="25" name="subject" value="<%=cal.getTitle() %>"></td>
				</tr>
				<tr>
					<td>����</td>
					<td><textarea name="content" cols="25" rows="5"><%=cal.getMemo()%></textarea></td>
				</tr>
				<tr>

					<input type="hidden" name="year" value="<%=year %>">
					<input type="hidden" name="month" value="<%=month %>">
					<input type="hidden" name="day" value="<%=day %>">
					
					<td colspan="2" align="center">
					<input type="submit" value="���">
					</td>
				</tr>	
			</table>
		</form>
	</body>
</html>
				
      </div>
</div>
      <div id="jb-sidebar">
      <div align="center">
      <br><br>
      	��¥���� Ķ������ ������ �޶��<br><br>
      	�����Ͻǿ��� ������ �۰� �Բ� ��Ϲ�ư�� ������ �����Ϸ�!!
        <table border="0" width=200 height=150>
 		<form action="/201345829/success.jsp" method="post">
		<tr><td><button type="submit" style="width:150px; height:30px;">���ư���</button></td></tr>
 		</form>
 		</table>
      </div></div>
      <div id="jb-footer">
      <div align="center">
        ������ : �̰漱/ ��ȭ��ȣ : 010-1234-5678/ email = kyeong_514@naver.com
      </div></div>
    </div>
  </body>
</html>