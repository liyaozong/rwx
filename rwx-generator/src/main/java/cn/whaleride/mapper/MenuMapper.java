package cn.whaleride.mapper;

import cn.whaleride.entity.MenuEntity;

public interface MenuMapper {
    int deleteByPrimaryKey(Long menuId);

    int insert(MenuEntity record);

    int insertSelective(MenuEntity record);

    MenuEntity selectByPrimaryKey(Long menuId);

    int updateByPrimaryKeySelective(MenuEntity record);

    int updateByPrimaryKey(MenuEntity record);
}