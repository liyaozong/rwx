package cn.whaleride.mapper;

import cn.whaleride.entity.RoleMenuEntity;

public interface RoleMenuMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RoleMenuEntity record);

    int insertSelective(RoleMenuEntity record);

    RoleMenuEntity selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RoleMenuEntity record);

    int updateByPrimaryKey(RoleMenuEntity record);
}