package controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import bean.Result;
import common.Constant;
import entity.User;
import service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;

	@ModelAttribute(value = "userCreate")
	public User initUserCreate() {
		return new User();
	}

	protected final User getUser() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userName = auth.getName();
		return userService.getUserByUserName(userName);
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.GET)
	public String creatStudent(Model model) {
		User user_login = this.getUser();

		model.addAttribute("user", user_login);
		return "manage";
	}

	@RequestMapping(value = { "/create" }, method = RequestMethod.POST)
	public String creatStudent(Model model, @ModelAttribute(value = "userCreate") User userCreate) {
		User user_login = this.getUser();
		model.addAttribute("user", user_login);
		Result result = this.userService.validateUser(userCreate);
		String page = "redirect:/manage";

		try {
			if (Constant.SUCCESS.equals(result.getErrorCode())) {
				userService.insertUser(userCreate);
				if (Constant.AUTHOR.ADMIN.equals(userCreate.getAuthority())) {
					page = "redirect:/manage";
				} else {
					page = "redirect:/customers";
				}
			} else {
				model.addAttribute("msg", result.getMessages());
				page = "add";
			}

		} catch (Exception ex) {
			result.getMessages().add("Có lôi xảy ra");
			result.setErrorCode(Constant.FAIL);
		}

		return page;
	}

	@RequestMapping(value = { "/user/{userName}/detail" }, method = RequestMethod.GET)
	public String userDetail(Model model, @PathVariable(value = "userName") String userName) {
		User user = new User();
		try {
			user = this.userService.getUserByUserName(userName);
		} catch (Exception ex) {
			user = new User();
		}
		model.addAttribute("user", user);
		return "userDetail";
	}

	@RequestMapping(value = { "/user/{userName}/uploadAvatar" }, method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<Result> uploadAvtar(@RequestParam(value = "avatar") MultipartFile avatar,
			@PathVariable(value = "userName") String userName, HttpServletResponse response) {
		Result result = new Result();
		try {
			result = this.userService.uploadAvavar(userName, avatar);
		} catch (Exception ex) {
			result.setErrorCode(Constant.FAIL);
		}
		return new ResponseEntity<>(result, HttpStatus.OK);
	}

	@RequestMapping(value = { "/user/{userName}/avatar" }, method = RequestMethod.GET)
	public void avatarShow(@PathVariable(value = "userName") String userName, HttpServletResponse response) {
		try {
			User user = this.userService.getUserByUserName(userName);
			if (user != null) {
				BufferedImage bufferedImage = ImageIO.read(new File(user.getAvatar()));
				response.setHeader("Content-Disposition", "inline; filename=" + userName);
				response.setHeader("Content-Type", "image/png ");
				OutputStream output = response.getOutputStream();
				ImageIO.write(bufferedImage, "PNG", output);
				output.close();
			}
		} catch (Exception ex) {

		}
	}
}
