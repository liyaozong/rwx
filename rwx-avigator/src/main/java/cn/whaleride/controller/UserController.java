package cn.whaleride.controller;

import cn.whaleride.entity.UserEntity;
import cn.whaleride.service.UserService;
import cn.whaleride.utils.Constants;
import cn.whaleride.utils.R;
import cn.whaleride.utils.ShiroUtils;
import io.swagger.annotations.Api;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.SessionDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Api("用户管理")
@RequestMapping("/sys/user")
@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    ShiroUtils shiroUtils;

    @GetMapping()
    String user(Model model) {
        model.addAttribute("menu_tree", ShiroUtils.getSession().getAttribute(Constants.MENU_TREE));
        model.addAttribute("username", ShiroUtils.getUser().getName());
        return "system/user";
    }

    //    @RequiresPermissions("sys:user:list")
    @GetMapping("/list")
    @ResponseBody
    R getUsers() {
        List<UserEntity> users = userService.getAll();
        Map<String, Object> data = new HashMap<>();
        data.put("data", users);
        return R.ok(data);
    }
}
