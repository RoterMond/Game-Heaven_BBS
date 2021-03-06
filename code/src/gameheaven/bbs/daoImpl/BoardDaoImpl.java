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

public class BoardDaoImpl implements BoardDao{
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
	public Board findBoardById(Integer boardId) {
		String sql = "select * from board where boardId = ?";
		
		try {
			conn = getConn(url, username, password);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, boardId);
			rs = ps.executeQuery();
			if (rs.next()) {
				Board board = new Board();
				board.setBoardId(rs.getInt("boardId"));
				board.setBoardName(rs.getString("boardName"));
				board.setRemark(rs.getString("remark"));
				return board;
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
	public List<Board> findAllBoard() {
		String sql = "select * from board";
		
		try {
			conn = getConn(url, username, password);
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			List<Board> boardList = new ArrayList<Board>();
			while(rs.next()) {
				Board board = new Board();
				board.setBoardId(rs.getInt("boardId"));
				board.setBoardName(rs.getString("boardName"));
				board.setRemark(rs.getString("remark"));
				boardList.add(board);
			}
			return boardList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(conn, ps, rs);
		}
		return null;
	}
	
	
	
	
}