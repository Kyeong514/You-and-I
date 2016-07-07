package calendar;

import java.sql.*;

import jdbc.JdbcUtil;

public class GetCalendarService {
	
	public Calendar GetCalendar(String year,String month,String day) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcDriver = "jdbc:mysql://164.125.234.222:3306/db201345829?" +
						"useUnicode=true&characterEncoding=euckr";
		String dbUser = "user201345829";
		String dbPass = "pw201345829";
		Connection conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				
		try {		
			CalendarDAO calDao = new CalendarDAO();
			return calDao.print(conn,year,month,day);
		} catch (SQLException e) {
			throw new Exception("캘린더 가져오기 실패 :" + e.getMessage(), e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
