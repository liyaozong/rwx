package cn.whaleride.mapper;

import cn.whaleride.entity.FileEntity;

public interface FileMapper {
    int deleteByPrimaryKey(Long id);

    int insert(FileEntity record);

    int insertSelective(FileEntity record);

    FileEntity selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(FileEntity record);

    int updateByPrimaryKey(FileEntity record);
}