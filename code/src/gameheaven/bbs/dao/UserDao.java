/**
 * Dao的接口定义
 */
/**
 * @author PQX
 *
 */
package gameheaven.bbs.dao;
import java.util.List;
import gameheaven.bbs.entity.*;

public interface UserDao{
	/**
	 * 按ID来查找用户
	 * @param id
	 * @return 查询到的用户
	 */
	public User findUserById(Integer id);
	/**
	 * 按手机号来查询用户
	 * @param phone
	 * @return 查询到的用户
	 */
	public User findUserByPhone(long phone);
	/**
	 * 按姓名模糊查找用户
	 * @param name
	 * @return 查询的用户集
	 */
	public List<User> findUserByName(String name);
	/**
	 * 查询所有用户
	 * @return 查询到的所有用户集
	 */
	public List<User> findAllUser();
	/**
	 * 插入一个新用户
	 * @param user
	 * @return 标记值Int
	 */
	public int insertUser(User user);
	/**
	 * 删除一个用户
	 * @param id
	 * @return 标记值Int
	 */
	public int deleteUser(Integer id);
	/**
	 *  更新一个用户
	 * @param id
	 * @return 标记值int
	 */
	public int updateUser(User user);
	
	
}