package service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import bean.Result;
import entity.User;

public interface UserService {
	public User getUserByUserName(String userName);
	
	public boolean update(User user);
	
	public boolean isSameUserName(String userName);
	
	public List<User> listAll();
	
	public List<User> listMangager();
	
	public List<User> listAllCustomers();
	//Thu7
	public long insertUser( User user);

	public  Result validateUser(User user);
	
	public  Result uploadAvavar(String userCode, MultipartFile avatar);
	
}
