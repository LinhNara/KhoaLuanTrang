package dao;

import java.util.List;

import entity.User;

public interface UserDao {
	public long insertUser(User user);

	public List<User> listAllCustomers();
	
	public List<User> listAll();

	public boolean isSameUserName(String userName) ;

	public boolean update(User user);
	
	public User getUserByUserName(String user);
	 
	public List<User> findByAuthoriation(String author);
}
