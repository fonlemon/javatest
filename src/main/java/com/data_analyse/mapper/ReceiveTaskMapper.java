package com.data_analyse.mapper;

import com.data_analyse.pojo.ReceiveTask;
import com.data_analyse.pojo.ReceiveTaskExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ReceiveTaskMapper {
    int countByExample(ReceiveTaskExample example);

    int deleteByExample(ReceiveTaskExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ReceiveTask record);

    int insertSelective(ReceiveTask record);

    List<ReceiveTask> selectByExample(ReceiveTaskExample example);

    ReceiveTask selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ReceiveTask record, @Param("example") ReceiveTaskExample example);

    int updateByExample(@Param("record") ReceiveTask record, @Param("example") ReceiveTaskExample example);

    int updateByPrimaryKeySelective(ReceiveTask record);

    int updateByPrimaryKey(ReceiveTask record);
}