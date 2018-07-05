package com.data_analyse.mapper;

import com.data_analyse.pojo.CompanyCollection;
import com.data_analyse.pojo.CompanyCollectionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CompanyCollectionMapper {
    int countByExample(CompanyCollectionExample example);

    int deleteByExample(CompanyCollectionExample example);

    int deleteByPrimaryKey(Long id);

    int insert(CompanyCollection record);

    int insertSelective(CompanyCollection record);

    List<CompanyCollection> selectByExample(CompanyCollectionExample example);

    CompanyCollection selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") CompanyCollection record, @Param("example") CompanyCollectionExample example);

    int updateByExample(@Param("record") CompanyCollection record, @Param("example") CompanyCollectionExample example);

    int updateByPrimaryKeySelective(CompanyCollection record);

    int updateByPrimaryKey(CompanyCollection record);
}