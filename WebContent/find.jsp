<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>

<%
		request.setCharacterEncoding("euc-kr");
		String search = request.getParameter("search");
		
		if(search==null||search.trim().equals("")){
			response.sendRedirect("home.jsp");
			return;
		}

		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(Exception e){
			System.out.println("����̹� �˻� ����");
		}
		
		Connection con = null;
		String url = "jdbc:mysql://164.125.234.222:3306/db201345829?" +
			"useUnicode=true&characterEncoding=euckr";
		String user = "user201345829", pass="pw201345829";
		
		try{
			con = DriverManager.getConnection(url, user, pass);
		}catch(SQLException e){
			System.out.println("�α��� ����");
		}
		
		PreparedStatement ps = null;
		String sql = "select * from miniboard "+
				"where title like ? or content like ? order by no desc";
		ResultSet rs = null;
		try{
			
			ps = con.prepareStatement(sql);
			ps.setString(1, "%"+search+"%");
			ps.setString(2, "%"+search+"%");
			rs = ps.executeQuery();
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
	<table border="1" width="80%">
		<tr>
			<th>��ȣ</th>
			<th>����</th>
			<th width="50%">����</th>
			<th>�ۼ��ð�</th>
		</tr>
		<%while(rs.next()){ 
		%>
		<tr>
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
		</tr>
		<%} %>
	</table>
	<br>
	<input type="button" value="��������" onclick="location.href='home.jsp'">
</div>
</div>
      <div id="jb-sidebar">
        <div align="center">
		<tr><td><a href="/201345829/calendar.jsp">���ư���</button></td></tr>

      </div></div>
      <div id="jb-footer">
      <div align="center">
        ������ : �̰漱/ ��ȭ��ȣ : 010-1234-5678/ email = kyeong_514@naver.com
      </div></div>
    </div>
  </body>
</html>

<%			
		}catch(SQLException e){
			System.out.println("������ ���� ����!");
		}
		
		//�ڿ� �ݳ�(rs, ps, con)
		rs.close();
		ps.close();
		con.close();
%>


















