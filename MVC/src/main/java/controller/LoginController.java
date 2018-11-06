//package controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.SessionAttributes;
//
//import entity.User;
//import service.UserService;
//
//@Controller
//@SessionAttributes("user")
//public class LoginController {
//	
//	@Autowired
//	UserService userService;
//	
//	/*
//	 * Add user in model attribute
//	 */
//	@ModelAttribute("user")
//	public User setUpUserForm() {
//		return new User();
//	}
//
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String index() {
//		return "index";
//	}
////	
////	@RequestMapping(value = "/login", method = RequestMethod.GET)
////	public String loginPage() {
////		return "login1";
////	}
//	
//	@RequestMapping(value = "doLogin}", method = RequestMethod.POST)
//	public String doLogin(@ModelAttribute("user") User user, Model model) {
//		String userName = user.getUsername();
//		String userPassword = user.getPassword();
//		
//		User datauser = userService.getUserByUserName(userName);
//		// Implement your business logic
//		if (datauser.getUsername().equals(userName) && datauser.getPassword().equals(userPassword)) {
//			return "manage";
//		} else {
//			model.addAttribute("message", "Login failed. Try again.");
//			return "index";
//		}
//	}
//}
