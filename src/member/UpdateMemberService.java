package member;

import java.sql.*;

import jdbc.JdbcUtil;

public class UpdateMemberService {
	
	public boolean UpdateInfo(Member mem) throws Exception {	
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcDriver = "jdbc:mysql://164.125.234.222:3306/db201345829?" +
						"useUnicode=true&characterEncoding=euckr";
		String dbUser = "user201345829";
		String dbPass = "pw201345829";
		Connection conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		  try {		
				MemberDAO memberDao = new MemberDAO();
				return memberDao.update(conn, mem);
		} catch (SQLException e) {
				throw new Exception("회원수정 실패 :" + e.getMessage(), e);
			} finally {
			JdbcUtil.close(conn);
		}
	}
	public boolean UpdatePw(String pw,int no) throws Exception {	
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcDriver = "jdbc:mysql://164.125.234.222:3306/db201345829?" +
						"useUnicode=true&characterEncoding=euckr";
		String dbUser = "user201345829";
		String dbPass = "pw201345829";
		Connection conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		  try {		
				MemberDAO memberDao = new MemberDAO();
				return memberDao.updatePw(conn,pw,no);
		} catch (SQLException e) {
				throw new Exception("회원비밀번호수정 실패 :" + e.getMessage(), e);
			} finally {
			JdbcUtil.close(conn);
		}
	}
}
