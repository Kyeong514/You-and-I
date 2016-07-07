<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.sql.*" %>


 <% request.setCharacterEncoding("euc-kr");%>
<%

String wid = (String)session.getAttribute("wid");

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
        <h2>ȸ�� ���� ����</h2>
        <p>	
			
			<%
    			Class.forName("com.mysql.jdbc.Driver");
    
    			Connection conn = null;
    			Statement stmt = null;
    			ResultSet rs = null;
    
    		try {
        		String jdbcDriver = "jdbc:mysql://164.125.234.222:3306/db201345829?" +
                            "useUnicode=true&characterEncoding=euckr";
        		String dbUser = "user201345829";
       		String dbPass = "pw201345829";
       		String query = "select * from mem where wid='"+wid+"'";
        
       		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        	stmt = conn.createStatement();
        
       		rs = stmt.executeQuery(query);
        
		if( rs.next() ) {
		%>


	<table border=0 width=300 height=200>

<tr> <form action="/201345829/password.jsp" method="post"%>
<td> ��й�ȣ </td> <td> <input type="submit" value="��й�ȣ ����"  style="width:150px; height:20px;"></form></td></tr>
<form action="/201345829/update.jsp" method="post"%>
<tr><td>�����̸�</td><td> <input type="text" name = "wname" value="<%= rs.getString("wname") %>" style="width:150px; height:25px;"></td></tr>
<tr><td>�����̸�</td><td> <input type="text" name = "mname" value="<%= rs.getString("mname") %>" style="width:150px; height:25px;"></td></tr>
<tr><td>������ȭ��ȣ</td><td> <input type="text" name = "wphone" value="<%= rs.getString("wphone") %>" style="width:150px; height:25px;"></td></tr>
<tr><td>������ȭ��ȣ</td><td> <input type="text" name = "mphone" value="<%= rs.getString("mphone") %>" style="width:150px; height:25px;"></td></tr>
<tr><td colspan = "2"><button type="submit" style="width:200px; height:30px;">�����ϱ�</button></td></tr></form>
</table>


<%
        } else {
%>
ȸ������ ������ ã�� �� �����ϴ�.
<%
        }
    } catch(SQLException ex) {
%>
���� �߻�: <%= ex.getMessage() %>
<%
    } finally {
        if (rs != null) try { rs.close(); } catch(SQLException ex) {}
        if (stmt != null) try { stmt.close(); } catch(SQLException ex) {}
        if (conn != null) try { conn.close(); } catch(SQLException ex) {}
    }
%>
</div>
</div>
      <div id="jb-sidebar">
        <div align="center">
           <img src="/201345829/picture/4.JPG" width=250 height=200 >
		<form action="/201345829/success.jsp" method="post">
		<tr><td><button type="submit" style="width:150px; height:30px;">���ư���</button></td></tr>
 		</form>
      </div>
      </div>
      <div id="jb-footer">
        <div align="center">
        <p>������ : �̰漱/ ��ȭ��ȣ : 010-1234-5678/ email = kyeong_514@naver.com</p>
      </div>
    </div> </div>
  </body>
</html>