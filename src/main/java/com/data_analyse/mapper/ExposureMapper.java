package com.data_analyse.mapper;

import com.data_analyse.pojo.Exposure;
import com.data_analyse.pojo.ExposureExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ExposureMapper {
    int countByExample(ExposureExample example);

    int deleteByExample(ExposureExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Exposure record);

    int insertSelective(Exposure record);

    List<Exposure> selectByExample(ExposureExample example);

    Exposure selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Exposure record, @Param("example") ExposureExample example);

    int updateByExample(@Param("record") Exposure record, @Param("example") ExposureExample example);

    int updateByPrimaryKeySelective(Exposure record);

    int updateByPrimaryKey(Exposure record);
}