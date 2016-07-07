package calendar;
import java.sql.*;

import jdbc.JdbcUtil;
public class CalendarDAO {
	
	public int insert(Connection conn, Calendar cal) throws SQLException 
	{
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement("insert into calendar values (?,?,?,?,?)");
			ps.setString(1, cal.getYear());
			ps.setString(2, cal.getMonth());
			ps.setString(3, cal.getDay());
			ps.setString(4, cal.getTitle());
			ps.setString(5, cal.getMemo());
			return ps.executeUpdate();
		} finally {
			JdbcUtil.close(ps);
			JdbcUtil.close(rs);
		}
	}
	public Calendar print(Connection conn,String year,String month,String day) throws SQLException 
	{
		PreparedStatement ps = null;
		ResultSet rs = null;
		Calendar cal = new Calendar();
		String sql="select title,memo from calendar where year=? and month=? and day=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, year);
			ps.setString(2, month);
			ps.setString(3, day);
			rs=ps.executeQuery();
			while(rs.next()) {
				cal.setTitle(rs.getString("title"));
				cal.setMemo(rs.getString("memo"));
			}
			return cal;
		} finally {
			JdbcUtil.close(ps);
			JdbcUtil.close(rs);
		}
	}
}