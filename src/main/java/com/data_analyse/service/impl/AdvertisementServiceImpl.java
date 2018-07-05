package com.data_analyse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.data_analyse.mapper.AdvertisementMapper;
import com.data_analyse.pojo.Advertisement;
import com.data_analyse.pojo.AdvertisementExample;
import com.data_analyse.service.AdvertisementService;

@Service
public class AdvertisementServiceImpl implements AdvertisementService {

	@Autowired
	private AdvertisementMapper advertisementMapper;
	
	@Override
	public List<Advertisement> getAdvertisementList() {
		// TODO Auto-generated method stub
		AdvertisementExample example = new AdvertisementExample();
		List<Advertisement> list = advertisementMapper.selectByExample(example);
		if(list!=null||list.size()>0){
			return list;
		}
		return null;
	}

}
