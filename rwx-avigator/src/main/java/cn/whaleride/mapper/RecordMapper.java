package cn.whaleride.mapper;

import cn.whaleride.entity.RecordEntity;

public interface RecordMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RecordEntity record);

    int insertSelective(RecordEntity record);

    RecordEntity selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RecordEntity record);

    int updateByPrimaryKey(RecordEntity record);
}