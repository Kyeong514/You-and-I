<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import="calendar.*" %>


<%  InsertCalendarService InsertCal = new InsertCalendarService();
	request.setCharacterEncoding("euc-kr");
	


	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String title = request.getParameter("subject");
	String memo = request.getParameter("content");
	
	Calendar cal = new Calendar();
	cal.setYear(year);
	cal.setMonth(month);
	cal.setDay(day);
	cal.setTitle(title);
	cal.setMemo(memo);
	int result = InsertCal.InsertCalendar(cal);
	if(result > 0) {	
%>
<script>
alert("등록 성공!");
location.href='/201345829/calendarview.jsp?year=<%=year%>&month=<%=month%>&day=<%=day%>';
</script>
<%}%>