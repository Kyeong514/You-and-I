package calendar;

import java.sql.*;

import jdbc.JdbcUtil;

public class InsertCalendarService {
	
	public int InsertCalendar(Calendar cal) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcDriver = "jdbc:mysql://164.125.234.222:3306/db201345829?" +
						"useUnicode=true&characterEncoding=euckr";
		String dbUser = "user201345829";
		String dbPass = "pw201345829";
		Connection conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				
		try {		
			CalendarDAO calDao = new CalendarDAO();
			return calDao.insert(conn,cal);
		} catch (SQLException e) {
			throw new Exception("회원등록 실패 :" + e.getMessage(), e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
