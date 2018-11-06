package controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import common.Constant;
import entity.TimeSheet;
import entity.User;
import service.TimeSheetService;
import service.UserService;

@Controller
@SessionAttributes("user")
public class HelloController {
	
	@Autowired
	UserService userService;

	@Autowired
	TimeSheetService timeSheetService;

	@RequestMapping(value = { "/login", "/" })
	public String hello(Model model) {
		return "login1";
	}

	@RequestMapping(value = { "/exit" })
	public String exit(Model model) {
		return "login1";
	}
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    sdf.setLenient(true);
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}
	@RequestMapping(value = { "/timesheet" })
	public String timesheet(Model model) {
		if (!"A".equals(getUser().getAuthority())) {
			User user_login = this.getUser();
			model.addAttribute("user", user_login);
			return "timesheet_nhanvien";
		} else {

			SimpleDateFormat date = new SimpleDateFormat("MM/dd/yyyy hh:mm");

			List<TimeSheet> timeSheet = this.timeSheetService.listAll();
			model.addAttribute("timeSheet_customer", timeSheet);

			return "timesheet_admin";
		}
	}

	// @ModelAttribute(value = "userCreate") User userCreate
		@RequestMapping(value = "/timesheet_2", method = RequestMethod.POST)
		public String timesheet_2(Model model, @ModelAttribute(value = "timeSheetCreate") TimeSheet timeSheet,
				@RequestParam(value="testTo") String dateTo,
				@RequestParam(value="gioBatDauHc") String gioBatDauHc) { 
			try {  

			} catch (Exception ex) { 
			}

			return "/";
		}
	
	// @ModelAttribute(value = "userCreate") User userCreate
	@RequestMapping(value = "/timesheet", method = RequestMethod.POST)
	public String timesheet_post(Model model, @ModelAttribute(value = "timeSheetCreate") TimeSheet timeSheet,
			@RequestParam(value="testTo") String dateTo,
			@RequestParam(value="gioBatDauHc") String gioBatDauHc) {
		
		
		System.out.println("hello");
		
//		User user_login = this.getUser();
//		model.addAttribute("user", user_login);
//		Result result = this.timeSheetService.validateUser(timeSheetCreate);
//		String page = "redirect:/manage";

		try {
//			if (Constant.SUCCESS.equals(result.getErrorCode())) {
//				timeSheetService.insertUser(timeSheetCreate);
//				page = "timesheet_admin";
//			} else {
//				model.addAttribute("msg", result.getMessages());
//				page = "timeSheet_customer";
//			}

		} catch (Exception ex) {
//			result.getMessages().add("Có lôi xảy ra");
//			result.setErrorCode(Constant.FAIL);
		}

		return "/";
	}
	
	@ModelAttribute(value = "timeSheetCreate")
	public TimeSheet timeSheetCreate() {
		TimeSheet timeSheet =  new TimeSheet();
		timeSheet.setNgayThang(new Date());
		timeSheet.setGioBatDauHc(new Date());
		timeSheet.setGioBatDauOt(new Date());
		timeSheet.setGioKetThucHc(new Date());
		timeSheet.setGioKetThucOt(new Date());
		timeSheet.setGioNghiOt(new Date());
		return timeSheet;
	}

	@RequestMapping(value = { "/manage" })
	public String adminControlPanel(Model model) {

		User user_login = this.getUser();

		model.addAttribute("user", user_login);

		List<User> users = this.userService.listMangager();
		model.addAttribute("users_client", users);

		return "manage";
	}

	@RequestMapping(value = { "/customers" })
	public String customers(Model model) {

		if (!Constant.AUTHOR.ADMIN.equals(getUser().getAuthority())) {
			return "login1";
		}

		List<User> customers = this.userService.listAllCustomers();
		model.addAttribute("users_client", customers);

		return "manage";
	}

	// create
	@RequestMapping(value = { "/add" })
	public String addEmployee(Model model) {
		User user_login = this.getUser();
		if (!"A".equals(user_login.getAuthority())) {
			return "manage";
		} else {
			return "add";
		}
	}

	// // edit and update
	// @RequestMapping(value = { "/edit" }, method = RequestMethod.GET)
	// public String edit(Model model) {
	// User user_login = this.getUser();
	//
	// User user = this.userService.getUserByUserName(user_login.getUsername());
	// model.addAttribute("user", user);
	// return "update";
	// }

	@RequestMapping(value = { "/all" })
	public String allManage(Model model) {
		List<User> users = this.userService.listAll();
		model.addAttribute("users", users);
		return "all";
	}

	// Thu 7: 30/6
	protected final User getUser() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userName = auth.getName();
		return userService.getUserByUserName(userName);
	}

	// @RequestMapping("/update")
	// public String updateInforAction(Model model, @ModelAttribute(value =
	// "userForm") User userForm) {
	//
	// UserId user = this.getUser();
	//
	// userForm.setUsername(user.getId().getUsername());
	// userForm.setId(user.getId());
	// userForm.setPassword(user.getPassword());
	// userForm.setAuthority(user.getAuthority());
	// userForm.setDeleteFlg("0");
	// userService.update(userForm);
	//
	// model.addAttribute("user", userForm);
	// return "infor";
	//
	// }

	protected final boolean isAdmin(Authentication auth) {
		// Lấy tất cả các quyền của user hiện tại
		Collection<? extends GrantedAuthority> authorities = auth.getAuthorities();
		if (authorities == null) {
			return false;
		}

		for (GrantedAuthority item : authorities) {
			if ("ROLE_A".equals(item.getAuthority())) {
				return true;
			}
		}
		return false;
	}
	
	@RequestMapping(value = "/files/hop_dong", method = RequestMethod.GET)
	public void downloadFile(HttpServletResponse response, @PathVariable("type") String type) throws IOException {
	     
        File file = null;
         
        file = new File("./MVC/src/main/webapp/resources/download/test.txt");
         
        if(!file.exists()){
            String errorMessage = "Sorry. The file you are looking for does not exist";
            System.out.println(errorMessage);
            OutputStream outputStream = response.getOutputStream();
            outputStream.write(errorMessage.getBytes(Charset.forName("UTF-8")));
            outputStream.close();
            return;
        }
         
        String mimeType= URLConnection.guessContentTypeFromName(file.getName());
        if(mimeType==null){
            System.out.println("mimetype is not detectable, will take default");
            mimeType = "application/octet-stream";
        }
         
        System.out.println("mimetype : "+mimeType);
         
        response.setContentType(mimeType);
         
        /* "Content-Disposition : inline" will show viewable types [like images/text/pdf/anything viewable by browser] right on browser 
            while others(zip e.g) will be directly downloaded [may provide save as popup, based on your browser setting.]*/
        response.setHeader("Content-Disposition", String.format("inline; filename=\"" + file.getName() +"\""));
 
         
        /* "Content-Disposition : attachment" will be directly download, may provide save as popup, based on your browser setting*/
        //response.setHeader("Content-Disposition", String.format("attachment; filename=\"%s\"", file.getName()));
         
        response.setContentLength((int)file.length());
 
        InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
 
        //Copy bytes from source to destination(outputstream in this example), closes both streams.
        FileCopyUtils.copy(inputStream, response.getOutputStream());
    }

	// Het thu7 30/6
	@RequestMapping("/labor_contract")
	public String aborContract(Model model) {
		User user = this.getUser();
		model.addAttribute("user", user);
		return "labor_contract";
	}
	
	@RequestMapping("/hopdonglaodong")
	public String updateInfor(Model model) {
		User user = this.getUser();
		model.addAttribute("user", user);
		return "updateInfor";
	}

	@ModelAttribute(value = "userForm")
	public User initUserForm() {
		return new User();
	}

	@ModelAttribute(value = "userCreate")
	public User initUserCreate() {
		return new User();
	}

	

}
