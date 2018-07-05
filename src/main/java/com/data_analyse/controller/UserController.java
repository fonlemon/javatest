package com.data_analyse.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.data_analyse.pojo.Result;
import com.data_analyse.pojo.User;
import com.data_analyse.service.UserService;

@Controller
@RequestMapping("/")
public class UserController {
	
	@Autowired
	private UserService userService;
	 @Autowired  
	 private HttpServletRequest request;  
	
	@RequestMapping(value="/dologin",method=RequestMethod.POST)
	public String userLogin(String email,String password,Model model,HttpServletRequest request,HttpServletResponse response){
		User user = userService.checkUserLogin(email, password,request,response);
		if(user!=null){
			return "redirect:/";
		}else{
			model.addAttribute("msg", "邮箱账号或密码错误");
			model.addAttribute("email", email);
			return "login";
		}
	}
	
	@RequestMapping(value="/doregister",method=RequestMethod.POST)
	public String userRegister(String email,String password,String type,Model model){
		boolean bool = userService.checkEmail(email);
		if(!bool){
			model.addAttribute("msg", "邮箱已被注册！");
			return "register";
		}else{
			boolean flag = userService.userRegister(email, password, type);
			if(flag){
				return "redirect:/login";
			}else{
				return "register";
			}
		}
		
	}
	
	@RequestMapping(value="/logout")
	public String userLogout(){
		userService.userlogout(request);
		return "redirect:/";
	}
	
	@RequestMapping("/user/userInfo")
	public String showUserInfo(){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if("1".equals(user.getType())){
			return "user_info_send";
		}else if("2".equals(user.getType())){
			return "user_info_get";
		}else{
			return "errors";
		}
	}
	
	@RequestMapping("/user/changeName")
	@ResponseBody
	public Result changeName(String name){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		user = userService.changeName(name, user.getId());
		session.setAttribute("user", user);
		return Result.build(200, "用户名修改成功");
	}
	
	@RequestMapping("/user/changePass")
	@ResponseBody
	public Result changePass(String LastPass,String NewPass,String AgainNewPass){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Long id = user.getId();
		if(!NewPass.equals(AgainNewPass)){
			return Result.build(500, "两次密码不一致");
		}
		if(!userService.checkOldPass(id, LastPass)){
			return Result.build(500, "旧密码错误，请重新输入");
		}
		
		Result result = userService.changePass(id, NewPass);
		session.removeAttribute("user");
		return result;
		
	}
	
	@RequestMapping("/user/changeEmail")
	@ResponseBody
	public Result changeEmail(String email){
		boolean flag = userService.checkEmail(email);
		if(!flag){
			return Result.build(500, "该邮箱已存在");
		}
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		user = userService.changeEmail(user.getId(), email);
		session.removeAttribute("user");
		return Result.build(200, "邮箱修改成功,请重新登录");
	}
	
	@RequestMapping("/user/changeIntroduction")
	@ResponseBody
	public Result changeIntroduction(String selfContent){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		user = userService.changeIntroduction(user.getId(), selfContent);
		session.setAttribute("user", user);
		return Result.build(200, "修改简介成功");
		
	}
	
	@RequestMapping("/user/updateImg")
	public String updateImg( MultipartFile fileField){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		user = userService.changeImg(user.getId(), fileField);
		session.setAttribute("user", user);
		return "redirect:/user/userInfo";
	}
	
}
