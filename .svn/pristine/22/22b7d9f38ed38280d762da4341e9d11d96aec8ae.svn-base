/**
 * 对Dao里定义的接口实现
 */
/**
 * @author PQX
 *
 */
package gameheaven.bbs.daoImpl;
import gameheaven.bbs.dao.*;
import gameheaven.bbs.entity.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import gameheaven.bbs.entity.*;

public class ReplyDaoImpl implements ReplyDao{
	static final String driver = "com.mysql.jdbc.Driver";
	static final String username = "root";
	static final String password = "123456";
	static final String url = "jdbc:mysql://localhost:3306/ghdatabase?useSSL=false";
	
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	//加载驱动
	static {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("加载驱动失败!");
		}
	}
	
	//获取连接
	public Connection getConn(String url, String username, String password) throws SQLException {
		return DriverManager.getConnection(url, username, password);
	}
	
	//释放资源
	public void close(Connection conn, PreparedStatement ps, ResultSet rs) {
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}if(ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	@Override
	public List<Reply> findAllReply(Integer topicId) {
		String sql = "SELECT * FROM reply where topicId = ?";
		
		try {
			conn = getConn(url,username,password);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, topicId);
			rs = ps.executeQuery();
			List<Reply> replyList = new ArrayList<Reply>();
			while(rs.next()) {
				Reply reply = new Reply();
				reply.setReplyId(rs.getInt("replyId"));
				reply.setUserId(rs.getInt("userId"));
				reply.setTopicId(rs.getInt("topicId"));
				reply.setContent(rs.getString("content"));
				reply.setReplyTime(rs.getString("replyTime"));
				replyList.add(reply);
			}
			return replyList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(conn,ps,rs);
		}
		
		return null;
	}

	@Override
	public int insertReply(Reply reply) {
		String sql = "INSERT INTO reply ("
				+ "userId,topicId,content,replyTime"
				+ ") VALUES ("
				+ "?,?,?,?"
				+ ");";
		
		try {
			conn = getConn(url,username,password);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, reply.getUserId());
			ps.setInt(2, reply.getTopicId());
			ps.setString(3, reply.getContent());
			ps.setString(4, reply.getReplyTime());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(conn,ps,rs);
		}
		
		return 1;
	}

	
	
	
}