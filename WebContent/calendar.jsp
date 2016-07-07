<%@ page import ="java.text.*,java.util.*" contentType="text/html; charset=euc-kr" %>
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
        <h2>캘린더</h2>
<style type="text/css">
<!--
a:link { font-family: "";font-size:14pt; text-decoration:none; color:darkblue}
a:visited { font-family: "";font-size:14pt;text-decoration:none; color:darkblue}
a:hover {font-family: "";font-size:14pt;text-decoration::none; color:red}
font {  font-family: ""; font-size:14pt; text-decoration: none}
.inputline {  border:1 solid; color: #002669}
.input {  border:1 solid}
.head {  font-family: "arial"; font-size: 10pt; font-weight: bold; color: #000000}
.text_jp {  font-family: ""; font-size:9pt; line-height: 12pt}
.text_sjp {  font-family: ""; font-size:8pt; line-height: 12pt}
.text_mjp {  font-family: ""; font-size:11pt; line-height: 12pt}
.text_bjp {  font-family: ""; font-size:12pt; line-height: 12pt}
.body1{ font-size:38px;}
.body2{ font-size:26px;}
.body3{ font-size:14px;}
.body4{ font-size:8px;}
.body5{ font-size:10px;}
.body6{ font-size:9px;}
.lt { font-size:12pt; text-decoration: line-through } 
input.locked {  background-color:#CCE3C6;  } 
-->
</style>

<%   
int year;
int month;
   Calendar today=Calendar.getInstance();
   Calendar cal = new GregorianCalendar();
   year = (request.getParameter("year")==null) ?  today.get(Calendar.YEAR) :      Integer.parseInt(request.getParameter("year").trim()) ;

 month = (request.getParameter("month")==null) ?   today.get(Calendar.MONTH)+1:      Integer.parseInt(request.getParameter("month").trim()) ;

if (month<=0){

 month = 12;
 year  =year- 1;
}else if (month>=13){

 month = 1;
 year =year+ 1;
}
   cal.set(Calendar.YEAR,year);
   cal.set(Calendar.MONTH,(month-1));
   cal.set(Calendar.DATE,1);

%>
<html> <body>
<table align="center" bgcolor='#CCE3C6'>



<table width="500" border="0" cellpadding="2" cellspacing="1" bgcolor="#cccccc">

                <tr height="50">

 <td align="center" bgcolor='#FFFFFF' height='18' valign='bottom' colspan="7">
   <a href='calendar.jsp?year=<%=cal.get(Calendar.YEAR)%>&month=<%=((cal.get(Calendar.MONTH)+1)-1)%>'><font color='484848' size='2'>◀ </font></a><font color='484848' size='2'><%=cal.get(Calendar.YEAR)%> / <%=(cal.get(Calendar.MONTH)+1)%> </font><a href='calendar.jsp?year=<%=cal.get(Calendar.YEAR)%>&month=<%=((cal.get(Calendar.MONTH)+1)+1)%>'><font color='484848' size='2'>▶ </font></a>
 </td></tr>
                    <td align="center" bgcolor="#e6e4e6"><font color="red">일</font></td>

                    <td align="center" bgcolor="#e6e4e6">월</td>

                    <td align="center" bgcolor="#e6e4e6">화</td>

                    <td align="center" bgcolor="#e6e4e6">수</td>

                    <td align="center" bgcolor="#e6e4e6">목</td>

                    <td align="center" bgcolor="#e6e4e6">금</td>

                    <td align="center" bgcolor="#e6e4e6"><font color="blue">토</font></td>

                </tr>
<%   
cal.set(year, month-1, 1);
int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
%>
<tr align="right" bgcolor="#FFFFFF">
<%
for(int i=1;i<dayOfWeek;i++){ 
%><td align="right" bgcolor="#e6e4e6"></td>
<% }

for(int i=1;
        i<=cal.getActualMaximum(Calendar.DAY_OF_MONTH);i++){
    %>
<td>
  <a href='day.jsp?year=<%=cal.get(Calendar.YEAR)%>&month=<%=((cal.get(Calendar.MONTH)+1))%>&day=<%=i %>'><%=i %></a>
  </td><% 
            if((dayOfWeek-1+i)%7==0){
                %></tr><tr align="right" bgcolor="#FFFFFF">
   <% }
  }%>
 
 </tr>
</table></table>
 </div>
</div>
      <div id="jb-sidebar">
         <div align="center">
        <p>	<table border="0" width=200 height=100>
       <br> 캘린더에 날짜를 클릭하시면 기념일을 등록하실 수 있습니다.<br><br>
       또한 날짜를 클릭하면 회원님이 기록한 글을 볼 수 있습니다.<br>
       
		<form action="/201345829/calendarview.jsp" method="post">

 		</form>
 		<form action="/201345829/success.jsp" method="post">

		<tr><td><button type="submit" style="width:150px; height:30px;">돌아가기</button></td></tr>
 		</form></table>
      </div></div>
      <div id="jb-footer">
      <div align="center">
        관리자 : 이경선/ 전화번호 : 010-1234-5678/ email = kyeong_514@naver.com
      </div></div>
    </div>
  </body>
</html>

