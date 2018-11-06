package service.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import bean.Result;
import dao.UserDao;
import entity.User;
import service.UserService;

@Service("UserServiceImpl")
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDAO;

	// Tao bean de ma hoa password
	@Bean
	BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	public List<User> listAllCustomers() {
		return this.userDAO.findByAuthoriation(common.Constant.AUTHOR.USER);
	}

	// Láy ra toàn bộ user 
	public List<User> listAll() {
		return this.userDAO.listAll();
	}

	// Tìm kiếm user theo Username
	public User getUserByUserName(String userName) {
		return this.userDAO.getUserByUserName(userName);
	}
	// Thực hiện update dữ liệu vào DB
	public boolean update(User user) {
		return userDAO.update(user);
	}

	public boolean isSameUserName(String userName) {
		return this.userDAO.isSameUserName(userName);
	}
	// Thu 7
	public long insertUser(User user) {
		//Mã hóa password trước khi insert vào DB
		user.setPassword(this.bCryptPasswordEncoder().encode(user.getPassword()));
		user.setDeleteFlg("0");
		return this.userDAO.insertUser(user);
	}

	@Override
	public Result validateUser(User user) {
		Result result = new Result();
		try{
			if(org.apache.commons.lang3.StringUtils.isEmpty(user.getFirstName())) {
				result.getMessages().add("Chưa nhập firstName");
			}
			
			if(org.apache.commons.lang3.StringUtils.isEmpty(user.getLastName())) {
				result.getMessages().add("Chưa nhập lastName");
			}
			
			if(org.apache.commons.lang3.StringUtils.isEmpty(user.getUsername())) {
				result.getMessages().add("Chưa nhập username");
			}else{
				User userDb = this.getUserByUserName(user.getUsername());
				
				if(userDb != null) {
					result.getMessages().add(user.getUsername() + " đã tồn tại");
				}
			}
			
			if(org.apache.commons.lang3.StringUtils.isEmpty(user.getAddress())) {
				result.getMessages().add("Chưa nhập Address");
			}
			
			if(org.apache.commons.lang3.StringUtils.isEmpty(user.getPassword())) {
				result.getMessages().add("Chưa nhập PassWord");
			}
			
			if(result.getMessages().size() == 0) {
				result.setErrorCode(common.Constant.SUCCESS);
			}else{
				result.setErrorCode(common.Constant.FAIL);
			}
		}catch(Exception ex) {
			result.getMessages().add("Có lỗi xảy ra");
			result.setErrorCode(common.Constant.FAIL);
		}
		return result;
	}

	@Override
	public List<User> listMangager() {
		try{
			return this.userDAO.findByAuthoriation(common.Constant.AUTHOR.ADMIN);
		}catch(Exception ex) {
			return new ArrayList<>();
		}
	}

	@Override
	public Result uploadAvavar(String userCode, MultipartFile avatar) {
		Result result = new Result();
		try{
			User userDB  = this.getUserByUserName(userCode);
			if(userDB != null) {
				String dir  = common.Constant.DIR.ROOT  + userCode + "/avatar/";
				File direct = new File(dir); 
				if(!direct.exists()) {
					direct.mkdirs();
				}
				
				avatar.transferTo(new File(dir + avatar.getOriginalFilename()));
				
				result.setErrorCode(common.Constant.SUCCESS);
				result.getMessages().add("Lưu ảnh thành công");
				userDB.setAvatar(dir + avatar.getOriginalFilename());
				this.userDAO.update(userDB);
			}else{
				result.setErrorCode(common.Constant.FAIL);
				result.getMessages().add("Tài khoản không tồn tại");
			}
			
		}catch(Exception ex) {
			result.setErrorCode(common.Constant.FAIL);
		}
		
		return result;
	}

	
}
