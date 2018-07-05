package com.data_analyse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 后台控制器
 * @author yl
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@RequestMapping("/index")
	public String showIndex(){
		return "adminIndex";
	}
}
