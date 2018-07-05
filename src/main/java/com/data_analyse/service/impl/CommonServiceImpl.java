package com.data_analyse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.data_analyse.mapper.CommonMethodMapper;
import com.data_analyse.pojo.CommonMethod;
import com.data_analyse.pojo.CommonMethodExample;
import com.data_analyse.service.CommonService;

@Service
public class CommonServiceImpl implements CommonService {

	@Autowired
	private CommonMethodMapper commonMethodMapper;
	
	@Override
	public List<CommonMethod> getAllCommonMethod() {
		// TODO Auto-generated method stub
		CommonMethodExample example = new CommonMethodExample();
		List<CommonMethod> list = commonMethodMapper.selectByExample(example);
		return list;
	}

}
