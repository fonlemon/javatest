package com.data_analyse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.data_analyse.pojo.Result;
import com.data_analyse.service.ItemCatService;

@Controller
@RequestMapping("/item")
public class ItemCategoryController {

	@Autowired
	private ItemCatService itemCatService;
	
	@RequestMapping("/getCatList")
	@ResponseBody
	public Result getCatList(){
		Result result = itemCatService.getCatList();
		return result;
	}
}
