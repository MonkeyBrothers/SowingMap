package com.hry.ssm.mapper;

import com.hry.ssm.pojo.Sowing;
import com.hry.ssm.pojo.SowingExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SowingMapper {
    int countByExample(SowingExample example);

    int deleteByExample(SowingExample example);

    int deleteByPrimaryKey(Integer imageid);

    int insert(Sowing record);

    int insertSelective(Sowing record);

    List<Sowing> selectByExample(SowingExample example);

    Sowing selectByPrimaryKey(Integer imageid);

    int updateByExampleSelective(@Param("record") Sowing record, @Param("example") SowingExample example);

    int updateByExample(@Param("record") Sowing record, @Param("example") SowingExample example);

    int updateByPrimaryKeySelective(Sowing record);

    int updateByPrimaryKey(Sowing record);
}