package cn.whaleride.controller;

import cn.whaleride.annotation.Log;
import cn.whaleride.entity.MenuEntity;
import cn.whaleride.service.MenuService;
import cn.whaleride.utils.Constants;
import cn.whaleride.utils.R;
import cn.whaleride.utils.ShiroUtils;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Api("菜单管理")
@RequestMapping("/sys/menu")
@Controller
public class MenuController {
    @Autowired
    MenuService menuService;

    @GetMapping()
    String menu(Model model) {
        model.addAttribute("menu_tree", ShiroUtils.getSession().getAttribute(Constants.MENU_TREE));
        model.addAttribute("username", ShiroUtils.getUser().getName());
        return "system/menu";
    }

//    @RequiresPermissions("sys:menu:tree")
    @GetMapping("/tree")
    @ResponseBody
    R tree() {
        Map<String, Object> data = new HashMap<>();
        data.put("data", ShiroUtils.getSession().getAttribute(Constants.MENU_TREE));
        return R.ok(data);
    }

//    @RequiresPermissions("sys:menu:list")
    @GetMapping("/list")
    @ResponseBody
    R list(@RequestParam Map<String, Object> params) {
        List<MenuEntity> menus = menuService.getMenus(params);
        Map<String, Object> data = new HashMap<>();
        data.put("data", menus);
        return R.ok(data);
    }

    @Log("添加菜单")
//    @RequiresPermissions("sys:menu:add")
    @PostMapping("/add")
    @ResponseBody
    R add(MenuEntity menu) {
        if (Constants.DEMO_ACCOUNT.equals(ShiroUtils.getUser().getUsername())) {
            return R.error(1, "演示系统不允许修改,完整体验请联系管理员");
        }
        if (menuService.add(menu) >= 0) {
            return R.ok();
        } else {
            return R.error(1, "添加失败");
        }
    }

    @Log("更新菜单")
//    @RequiresPermissions("sys:menu:edit")
    @PostMapping("/update")
    @ResponseBody
    R update(MenuEntity menu) {
        if (Constants.DEMO_ACCOUNT.equals(ShiroUtils.getUser().getUsername())) {
            return R.error(1, "演示系统不允许修改,完整体验请联系管理员");
        }
        if (menuService.update(menu) > 0) {
            return R.ok();
        } else {
            return R.error(1, "更新失败");
        }
    }

    @Log("删除菜单")
//    @RequiresPermissions("sys:menu:remove")
    @PostMapping("/remove")
    @ResponseBody
    R remove(Long id) {
        if (Constants.DEMO_ACCOUNT.equals(ShiroUtils.getUser().getUsername())) {
            return R.error(1, "演示系统不允许修改,完整体验请联系管理员");
        }
        if (menuService.remove(id) > 0) {
            return R.ok();
        } else {
            return R.error(1, "删除失败");
        }
    }
}
