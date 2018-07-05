package com.data_analyse.pojo;

import java.util.List;

public class ItemCategoryList {
	private ItemCategory itemCategory;
	private List<ItemCategory> childItem;
	
	public ItemCategory getItemCategory() {
		return itemCategory;
	}
	public void setItemCategory(ItemCategory itemCategory) {
		this.itemCategory = itemCategory;
	}
	public List<ItemCategory> getChildItem() {
		return childItem;
	}
	public void setChildItem(List<ItemCategory> childItem) {
		this.childItem = childItem;
	}
	
	
}
