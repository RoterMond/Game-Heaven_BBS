package gameheaven.bbs.daoImpl;

import java.sql.*;
import java.util.ArrayList;
import gameheaven.bbs.entity.*;
import java.util.List;
import gameheaven.bbs.dao.*;


public class TopicDaoImpl implements TopicDao{
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
	public List<Topic> findBoardTopic(Integer boardId) {
		String sql="select * from topic where boardId = ? order by topicId desc";
		
		try {
			conn = getConn(url, username, password);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, boardId);
			rs = ps.executeQuery();
			List<Topic> topicList = new ArrayList<Topic>();
			while (rs.next()) {
				Topic topic = new Topic();
				topic.setTopicId(rs.getInt("topicId"));
				topic.setBoardId(rs.getInt("boardId"));
				topic.setUserId(rs.getInt("userId"));
				topic.setTitle(rs.getString("title"));
				topic.setContent(rs.getString("content"));
				topic.setTime(rs.getString("postTime"));
				topicList.add(topic);
			}
			return topicList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		} finally {
			close(conn, ps, rs);
		}
	}

	@Override
	public Topic findTopicById(Integer topicId) {
		String sql = "select * from topic where topicId = ?";
		
		try {
			conn = getConn(url, username, password);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, topicId);
			rs = ps.executeQuery();
			if (rs.next()) {
				Topic topic = new Topic();
				topic.setTopicId(rs.getInt("topicId"));
				topic.setBoardId(rs.getInt("boardId"));
				topic.setUserId(rs.getInt("userId"));
				topic.setTitle(rs.getString("title"));
				topic.setContent(rs.getString("content"));
				topic.setTime(rs.getString("postTime"));
				return topic;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(conn,ps,rs);
		}
		
		return null;
	}

	@Override
	public int insertTopic(Topic topic) {
		String sql = "INSERT INTO topic("
				+ "boardId,userId,title,content,postTime"
				+ ") VALUES ("
				+ "?,?,?,?,?"
				+ ");";
		
		try {
			conn = getConn(url, username, password);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, topic.getBoardId());
			ps.setInt(2, topic.getUserId());
			ps.setString(3, topic.getTitle());
			ps.setString(4, topic.getContent());
			ps.setString(5, topic.getTime());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(conn,ps,null);
		}
		return 1;
	}

}
