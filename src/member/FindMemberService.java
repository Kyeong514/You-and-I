package member;

import java.sql.*;

import jdbc.JdbcUtil;

public class FindMemberService {

	public Member findMember(String wname,String mname,String birth) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcDriver = "jdbc:mysql://164.125.234.222:3306/db201345829?" +
						"useUnicode=true&characterEncoding=euckr";
		String dbUser = "user201345829";
		String dbPass = "pw201345829";
		Connection conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
		try {
				
				MemberDAO memberDao = new MemberDAO();
				Member mem = memberDao.findId(conn,birth);
				if(mem!=null) {
					String checkWname = mem.getWname();
					String checkMname = mem.getMname();
					if( wname.equals(checkWname) && mname.equals(checkMname)){
						return mem;
					}
					return null;
				}
				else
					return null;
		} catch (SQLException e) {
				throw new Exception("아이디 찾기 실패 :" + e.getMessage(), e);
			} finally {
			JdbcUtil.close(conn);
		}
	}
	
	public Member findMember_pw(String id,String wname,String mname,String date) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcDriver = "jdbc:mysql://164.125.234.222:3306/db201345829?" +
						"useUnicode=true&characterEncoding=euckr";
		String dbUser = "user201345829";
		String dbPass = "pw201345829";
		Connection conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
		try {
				
				MemberDAO memberDao = new MemberDAO();
				Member mem = memberDao.findPw(conn,id);
				if(mem!=null) {
					String checkWname = mem.getWname();
					String checkMname = mem.getMname();
					String checkDate = mem.getDate();
					if( wname.equals(checkWname) && mname.equals(checkMname) && date.equals(checkDate)){
						return mem;
					}
					return null;
				}
				else
					return null;
		} catch (SQLException e) {
				throw new Exception("비밀번호 찾기 실패 :" + e.getMessage(), e);
			} finally {
			JdbcUtil.close(conn);
		}
	}
}
