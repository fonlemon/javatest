package com.data_analyse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.data_analyse.pojo.Advertisement;
import com.data_analyse.pojo.Result;
import com.data_analyse.service.AdvertisementService;

/**
 * 大广告Controller
 * @author yl
 *
 */
@Controller
@RequestMapping("/ad")
public class AdvertisementController {
	
	@Autowired
	private AdvertisementService advertisementService;
	
	@RequestMapping("/getAdList")
	@ResponseBody
	public Result getAdvertisementList(){
		List<Advertisement> list = advertisementService.getAdvertisementList();
		
		return Result.build(200, list, list.size());
	}
	
}
