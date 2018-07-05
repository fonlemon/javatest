package com.data_analyse.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.data_analyse.pojo.CommonMethod;
import com.data_analyse.pojo.CommonMethodExample;

public interface CommonMethodMapper {
    int countByExample(CommonMethodExample example);

    int deleteByExample(CommonMethodExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CommonMethod record);

    int insertSelective(CommonMethod record);

    List<CommonMethod> selectByExampleWithBLOBs(CommonMethodExample example);

    List<CommonMethod> selectByExample(CommonMethodExample example);

    CommonMethod selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CommonMethod record, @Param("example") CommonMethodExample example);

    int updateByExampleWithBLOBs(@Param("record") CommonMethod record, @Param("example") CommonMethodExample example);

    int updateByExample(@Param("record") CommonMethod record, @Param("example") CommonMethodExample example);

    int updateByPrimaryKeySelective(CommonMethod record);

    int updateByPrimaryKeyWithBLOBs(CommonMethod record);

    int updateByPrimaryKey(CommonMethod record);
}