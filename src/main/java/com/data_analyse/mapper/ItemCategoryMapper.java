package com.data_analyse.mapper;

import com.data_analyse.pojo.ItemCategory;
import com.data_analyse.pojo.ItemCategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ItemCategoryMapper {
    int countByExample(ItemCategoryExample example);

    int deleteByExample(ItemCategoryExample example);

    int insert(ItemCategory record);

    int insertSelective(ItemCategory record);

    List<ItemCategory> selectByExample(ItemCategoryExample example);

    int updateByExampleSelective(@Param("record") ItemCategory record, @Param("example") ItemCategoryExample example);

    int updateByExample(@Param("record") ItemCategory record, @Param("example") ItemCategoryExample example);
}