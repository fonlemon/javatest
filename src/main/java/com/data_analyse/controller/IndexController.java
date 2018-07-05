package com.data_analyse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.data_analyse.pojo.CommonMethod;
import com.data_analyse.service.CommonService;

@Controller
public class IndexController {
	
	@Autowired
	private CommonService commonService;
	
	@RequestMapping("/")
	public String showIndex(Model model){
		List<CommonMethod> list = commonService.getAllCommonMethod();
		model.addAttribute("commonList", list);
		return "index";
	}
		
	@RequestMapping("/login")
	public String showLogin(){
		return "login";
	}
	
	@RequestMapping("/register")
	public String showRegister(){
		return "register";
	}
	
	
}