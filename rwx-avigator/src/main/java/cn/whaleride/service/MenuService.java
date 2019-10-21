package cn.whaleride.service;

import cn.whaleride.entity.MenuEntity;

import java.util.List;
import java.util.Map;

public interface MenuService {
    MenuEntity get(Long id);

    List<MenuEntity> getByUserId(Long userId);

    List<MenuEntity> getMenus(Map<String,Object> map);

    int remove(Long id);

    int remove(Long[] ids);

    int add(MenuEntity menu);

    int update(MenuEntity menu);

}
