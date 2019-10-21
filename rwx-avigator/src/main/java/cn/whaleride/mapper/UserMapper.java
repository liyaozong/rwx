package cn.whaleride.mapper;

import cn.whaleride.entity.UserEntity;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Long userId);

    int insert(UserEntity record);

    int insertSelective(UserEntity record);

    UserEntity selectByPrimaryKey(Long userId);

    int updateByPrimaryKeySelective(UserEntity record);

    int updateByPrimaryKey(UserEntity record);

    UserEntity selectByUserName(String username);

    List<UserEntity> selectAllUsers();
}