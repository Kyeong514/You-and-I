package member;
import java.sql.*;
import java.text.SimpleDateFormat;

import jdbc.JdbcUtil;

public class MemberDAO {
	
	public MemberDAO() {

	}
	
	protected Member makeMemberFromResultSet(ResultSet rs) throws SQLException
		{
			Member mem = new Member();
			if (rs.next()) {
				mem.setNo(rs.getInt("No"));
				mem.setWid(rs.getString("wid"));
				mem.setMid(rs.getString("mid"));
				mem.setPw(rs.getString("pw"));
				mem.setWname(rs.getString("wname"));
				mem.setMname(rs.getString("mname"));
				mem.setDate(rs.getString("date"));
				java.util.Date date = new java.util.Date();
				SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");
				String joindate = df.format(date);
				mem.setJoindate(rs.getString("joindate"));
				mem.setBirth(rs.getString("birth"));
				mem.setWphone(rs.getString("wphone"));
				mem.setMphone(rs.getString("mphone"));
				return mem;
			}else
				return null;
		}
	
	public int insert(Connection conn, Member mem) throws SQLException 
		{
			PreparedStatement ps = null;
			ResultSet rs = null;
			try {
				ps = conn.prepareStatement("insert into mem(wid, mid, pw, wname, mname, date, joindate, birth, wphone, mphone) values (?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, mem.getWid());
				ps.setString(2, mem.getMid());
				ps.setString(3, mem.getPw());
				ps.setString(4, mem.getWname());
				ps.setString(5, mem.getMname());
				ps.setString(6, mem.getDate());
				java.util.Date date = new java.util.Date();
				SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");
				String joindate = df.format(date);
				ps.setString(7, joindate);
				ps.setString(8, mem.getBirth());
				ps.setString(9, mem.getWphone());
				ps.setString(10, mem.getMphone());
				return ps.executeUpdate();
			} finally {
				JdbcUtil.close(ps);
				JdbcUtil.close(rs);
			}
		}
	public Member check(Connection conn,String id,String pw) throws SQLException{
		PreparedStatement ps = null;
		ResultSet rs = null;
	try{
		String sql = "select * from mem where pw=? and wid=?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, pw);
		ps.setString(2, id);
		rs=ps.executeQuery();
		return makeMemberFromResultSet(rs);
	}finally{
		JdbcUtil.close(ps);
		JdbcUtil.close(rs);
	}
}
	public boolean update(Connection conn,Member mem) throws SQLException{
			PreparedStatement ps = null;
			ResultSet rs = null;
		try{
			String sql = "update mem set wname=?, mname=?, wphone=?, mphone=? where no=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, mem.getWname());
			ps.setString(2, mem.getMname());
			ps.setString(3, mem.getWphone());
			ps.setString(4, mem.getMphone());
			ps.setInt(5, mem.getNo());
			int result = ps.executeUpdate();
			if(result>0) return true;
			else return false;
		}finally{
			JdbcUtil.close(ps);
			JdbcUtil.close(rs);
		}
	}
	public Member findId(Connection conn, String birth) throws SQLException{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from mem where birth = ?";
		try{
			ps = conn.prepareStatement(sql);
			ps.setString(1,birth);
			rs = ps.executeQuery();
			return makeMemberFromResultSet(rs);
		}finally{
			JdbcUtil.close(ps);
			JdbcUtil.close(rs);
		}
	}
	public Member findPw(Connection conn, String id) throws SQLException{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from mem where wid=? or mid=?";
		try{
			ps = conn.prepareStatement(sql);
			ps.setString(1,id);
			ps.setString(2,id);
			rs = ps.executeQuery();
			return makeMemberFromResultSet(rs);
		}finally{
			JdbcUtil.close(ps);
			JdbcUtil.close(rs);
		}
	}
	public boolean updatePw(Connection conn,String pw,int no) throws SQLException{
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			String sql = "update mem set pw=? where no=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, pw);
			ps.setInt(2, no);
			int result = ps.executeUpdate();
			if(result>0) return true;
			else return false;
		}finally{
			JdbcUtil.close(ps);
			JdbcUtil.close(rs);
		}
	}
	public boolean delete(Connection conn, int no) throws SQLException{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "delete from mem where no=?";
		try{
			ps = conn.prepareStatement(sql);
			ps.setInt(1, no);
			int result = ps.executeUpdate();
			if(result>0) return true;
			else return false;
		}finally{
			JdbcUtil.close(ps);
			JdbcUtil.close(rs);
		}
	}
}
