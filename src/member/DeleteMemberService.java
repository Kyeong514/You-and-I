package member;

import java.sql.*;

import jdbc.JdbcUtil;

public class DeleteMemberService {

	public boolean DeleteMember(int no) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcDriver = "jdbc:mysql://164.125.234.222:3306/db201345829?" +
						"useUnicode=true&characterEncoding=euckr";
		String dbUser = "user201345829";
		String dbPass = "pw201345829";
		Connection conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
		try {		
				MemberDAO memberDao = new MemberDAO();
				return memberDao.delete(conn, no);
		} catch (SQLException e) {
				throw new Exception("È¸¿øÅ»Åð ½ÇÆÐ :" + e.getMessage(), e);
			} finally {
			JdbcUtil.close(conn);
		}
	}
}
