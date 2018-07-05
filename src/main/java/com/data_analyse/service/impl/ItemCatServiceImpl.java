package com.data_analyse.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.data_analyse.mapper.ItemCategoryMapper;
import com.data_analyse.pojo.ItemCategory;
import com.data_analyse.pojo.ItemCategoryExample;
import com.data_analyse.pojo.ItemCategoryExample.Criteria;
import com.data_analyse.pojo.ItemCategoryList;
import com.data_analyse.pojo.Result;
import com.data_analyse.service.ItemCatService;

@Service
public class ItemCatServiceImpl implements ItemCatService {

	@Autowired
	private ItemCategoryMapper itemCategoryMapper;
	
	@Override
	public Result getCatList() {
		// TODO Auto-generated method stub
		List<ItemCategoryList> list = new ArrayList<>();
		List<ItemCategory> parentList = getChildByParentId((long)0);
		for (ItemCategory itemCategory : parentList) {
			ItemCategoryList parent = new ItemCategoryList();
			parent.setItemCategory(itemCategory);
			List<ItemCategory> child = getChildByParentId(itemCategory.getId());
			parent.setChildItem(child);
			list.add(parent);
		}
		return Result.build(200, list);
	}
//	
	private List<ItemCategory> getChildByParentId(Long parentId){
		ItemCategoryExample example = new ItemCategoryExample();
		Criteria criteria = example.createCriteria();
		criteria.andParentIdEqualTo(parentId);
		List<ItemCategory> list = itemCategoryMapper.selectByExample(example);
		return list;
	}

}
