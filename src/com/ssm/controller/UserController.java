package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ssm.pojo.User;
import com.ssm.service.UserService;

@Controller("userController")
public class UserController {

	@Autowired
	@Qualifier("userService")
	UserService userService;// 用户服务接口

	@Autowired
	private HttpServletRequest request;

	@RequestMapping("/dologin")
	public String dologin() throws Exception {
		return "login";
	}

	@RequestMapping("/userlogin")
	public String userlogin(@RequestParam("userName") String username, @RequestParam("password") String password,
			@RequestParam("department") Integer userDepartment) throws Exception {
		User user = userService.getLoginUser(username, password, userDepartment);
		if (user != null) {

			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("user", user);
			switch (userDepartment) {
			case 1:
				return "acindex";
			case 2:
				return "fnindex";
			case 3:
				return "foindex";
			case 4:
				return "hskpindex";
			case 5:
				return "secindex";
			default:
				return "acindex";
			}
		} else {
			request.setAttribute("fail", "<script>alert('登录失败！！！');</script>");
			return "login";
		}

	}

	@RequestMapping(value = "getUsertList")
	@ResponseBody
	public List<User> getUsertList() throws Exception {
		System.out.println("getAllUser/..................");
		List<User> data = userService.getAllUser();
		return data;
	}

	@RequestMapping(value = "touserlist")
	public String getAlllist() throws Exception {
		return "userList";
	}

}
