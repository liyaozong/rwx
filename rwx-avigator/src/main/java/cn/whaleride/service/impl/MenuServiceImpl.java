package cn.whaleride.service.impl;

import cn.whaleride.vo.Tree;
import cn.whaleride.entity.MenuEntity;
import cn.whaleride.mapper.MenuMapper;
import cn.whaleride.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MenuServiceImpl implements MenuService {
    @Autowired
    private MenuMapper menuMapper;

    @Override
    public MenuEntity get(Long id) {
        return menuMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<MenuEntity> getByUserId(Long userId) {
        return menuMapper.selectByUserId(userId);
    }

    @Override
    public List<MenuEntity> getMenus(Map<String,Object> map) {
        return menuMapper.selectByMapSelective(map);
    }

    @Override
    public int remove(Long id) {
        return menuMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int remove(Long[] ids) {
        return menuMapper.deleteByPrimaryKeys(ids);
    }

    @Override
    public int add(MenuEntity menu) {
        return menuMapper.insert(menu);
    }

    @Override
    public int update(MenuEntity menu) {
        return menuMapper.updateByPrimaryKey(menu);
    }
}
