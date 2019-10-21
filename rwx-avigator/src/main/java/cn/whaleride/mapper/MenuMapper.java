package cn.whaleride.mapper;

import cn.whaleride.entity.MenuEntity;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface MenuMapper {
    int deleteByPrimaryKey(Long menuId);

    int insert(MenuEntity record);

    int insertSelective(MenuEntity record);

    MenuEntity selectByPrimaryKey(Long menuId);

    int updateByPrimaryKeySelective(MenuEntity record);

    int updateByPrimaryKey(MenuEntity record);

    int deleteByPrimaryKeys(Long[] menuIds);

    List<MenuEntity> selectByMapSelective(Map<String,Object> map);

    List<MenuEntity> selectByUserId(Long userId);
}