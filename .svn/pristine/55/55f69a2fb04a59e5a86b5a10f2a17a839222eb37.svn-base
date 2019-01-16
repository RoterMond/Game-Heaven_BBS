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

public class UserDaoImpl implements UserDao{
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
	public User findUserByPhone(long phone) {
		String sql = "select * from user where phone = ?";
		
		try {
			conn = getConn(url, username, password);
			ps = conn.prepareStatement(sql);
			ps.setLong(1, phone);
			rs = ps.executeQuery();
			if (rs.next()) {
				User user = new User();
				user.setUserId(rs.getInt("userId"));
				user.setUserName(rs.getString("userName"));
				user.setPassword(rs.getString("password"));
				user.setPhone(rs.getLong("phone"));
				user.setEmail(rs.getString("email"));
				user.setType(rs.getInt("type"));
				user.setAge(rs.getInt("age"));
				user.setSex(rs.getInt("sex"));
				return user;
				
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
	public User findUserById(Integer id) {
		String sql = "select * from user where userId = ?";
		
		try {
			conn = getConn(url, username, password);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				User user = new User();
				user.setUserId(rs.getInt("userId"));
				user.setUserName(rs.getString("userName"));
				user.setPassword(rs.getString("password"));
				user.setPhone(rs.getLong("phone"));
				user.setEmail(rs.getString("email"));
				user.setType(rs.getInt("type"));
				user.setAge(rs.getInt("age"));
				user.setSex(rs.getInt("sex"));
				return user;
				
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
	public List<User> findUserByName(String name) {
		String sql="select * from user where userName like ? order by userId desc";
		
		try {
			conn = getConn(url, username, password);
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + name + "%");
			rs = ps.executeQuery();
			List<User> userList = new ArrayList<User>();
			while (rs.next()) {
				User user = new User();
				user.setUserId(rs.getInt("userId"));
				user.setUserName(rs.getString("userName"));
				user.setPassword(rs.getString("password"));
				user.setPhone(rs.getInt("phone"));
				user.setEmail(rs.getString("email"));
				user.setType(rs.getInt("type"));
				user.setAge(rs.getInt("age"));
				user.setSex(rs.getInt("sex"));
				userList.add(user);
			}
			return userList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		} finally {
			close(conn, ps, rs);
		}
	}

	@Override
	public List<User> findAllUser() {
		String sql="select * from user order by userId desc";
		
		try {
			conn = getConn(url, username, password);
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			List<User> userList = new ArrayList<User>();
			while (rs.next()) {
				User user = new User();
				user.setUserId(rs.getInt("userId"));
				user.setUserName(rs.getString("userName"));
				user.setPassword(rs.getString("password"));
				user.setPhone(rs.getInt("phone"));
				user.setEmail(rs.getString("email"));
				user.setType(rs.getInt("type"));
				user.setAge(rs.getInt("age"));
				user.setSex(rs.getInt("sex"));
				userList.add(user);
			}
			return userList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		} finally {
			close(conn, ps, rs);
		}
	}

	@Override
	public int insertUser(User user) {
		String sql="insert into user(" + 
				"userName,password,phone,email,type,age,sex"
				+ ") values (" 
				+ "?,?,?,?,?,?,?"
				+ ");";
		
		try {
			conn = getConn(url,username,password);
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			ps.setLong(3, user.getPhone());
			ps.setString(4, user.getEmail());
			ps.setInt(5, user.getType());
			ps.setInt(6, user.getAge());
			ps.setInt(7, user.getSex());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			close(conn,ps,null);
		}
		
		return 1;
	}

	@Override
	public int deleteUser(Integer id) {
		String sql="delete from user where userId = ?";
		
		try {
			conn = getConn(url,username,password);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			close(conn,ps,null);
		}	
		return 1;
	}

	@Override
	public int updateUser(User user) {
		String sql="update user" + 
				" set" + 
				" userName = ?" + 
				" ,password = ?" + 
				" ,phone = ?" + 
				" ,email = ?" +
				" ,type = ?" +
				" ,age = ?" +
				" ,sex = ?" +
				" where" +
				" userId = ?";
		
		try {
			conn = getConn(url,username,password);
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			ps.setLong(3, user.getPhone());
			ps.setString(4, user.getEmail());
			ps.setInt(5, user.getType());
			ps.setInt(6, user.getAge());
			ps.setInt(7, user.getSex());
			ps.executeUpdate();	
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			close(conn,ps,null);
		}	
		return 1;
	}


	
	
}