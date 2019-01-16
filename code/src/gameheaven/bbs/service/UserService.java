/**
 * 
 */
/**
 * @author PQX
 *
 */
package gameheaven.bbs.service;

import java.util.List;

import gameheaven.bbs.entity.User;

public interface UserService{

	public User findUserByPhone(long userPhoneNumber);
	public User findUserById(Integer id);
	public List<User> findUserByName(String name);
	public List<User> findAllUser();
	
	public int insertUser(User user);
	public int deleteUser(Integer id);
	public int updateUser(User user);
	
}