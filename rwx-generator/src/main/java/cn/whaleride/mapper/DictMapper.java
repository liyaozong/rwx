package cn.whaleride.mapper;

import cn.whaleride.entity.DictEntity;

public interface DictMapper {
    int deleteByPrimaryKey(Long id);

    int insert(DictEntity record);

    int insertSelective(DictEntity record);

    DictEntity selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(DictEntity record);

    int updateByPrimaryKey(DictEntity record);
}