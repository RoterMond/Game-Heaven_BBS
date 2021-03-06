/**
 * 
 */
/**
 * @author PQX
 *
 */
package gameheaven.bbs.serviceImpl;
import gameheaven.bbs.entity.User;
import gameheaven.bbs.service.*;

import java.util.List;

import gameheaven.bbs.dao.*;
import gameheaven.bbs.daoImpl.UserDaoImpl;

public class UserServiceImpl implements UserService{
	UserDao dao = new UserDaoImpl();
	@Override
	public User findUserByPhone(long phone) {
		// TODO Auto-generated method stub
		return dao.findUserByPhone(phone);
	}
	@Override
	public User findUserById(Integer id) {
		// TODO Auto-generated method stub
		return dao.findUserById(id);
	}
	@Override
	public List<User> findUserByName(String name) {
		// TODO Auto-generated method stub
		return dao.findUserByName(name);
	}
	@Override
	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return dao.findAllUser();
	}
	@Override
	public int insertUser(User user) {
		// TODO Auto-generated method stub
		return dao.insertUser(user);
	}
	@Override
	public int deleteUser(Integer id) {
		// TODO Auto-generated method stub
		return dao.deleteUser(id);
	}
	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return dao.updateUser(user);
	}
	
}

