package com.shtm.mapper;

import com.shtm.po.Messages;
import com.shtm.po.MessagesExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MessagesMapper {
    long countByExample(MessagesExample example);

    int deleteByExample(MessagesExample example);

    int deleteByPrimaryKey(Object id);

    int insert(Messages record);

    int insertSelective(Messages record);

    List<Messages> selectByExample(MessagesExample example);

    Messages selectByPrimaryKey(Object id);

    int updateByExampleSelective(@Param("record") Messages record, @Param("example") MessagesExample example);

    int updateByExample(@Param("record") Messages record, @Param("example") MessagesExample example);

    int updateByPrimaryKeySelective(Messages record);

    int updateByPrimaryKey(Messages record);
}