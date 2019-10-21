package cn.whaleride.controller;

import cn.whaleride.utils.Constants;
import cn.whaleride.utils.ShiroUtils;
import io.swagger.annotations.Api;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Api("仪表板控制器")
@Controller
public class DashboardController {
    @GetMapping("/sys/dashboard")
    String dashboard(Model model) {
        model.addAttribute("menu_tree", ShiroUtils.getSession().getAttribute(Constants.MENU_TREE));
        model.addAttribute("username", ShiroUtils.getUser().getName());
        return "system/dashboard";
    }

    @GetMapping("/sys/api")
    String api(Model model) {
        model.addAttribute("menu_tree", ShiroUtils.getSession().getAttribute(Constants.MENU_TREE));
        model.addAttribute("username", ShiroUtils.getUser().getName());
        model.addAttribute("title", "API文档");
        model.addAttribute("url", "/swagger-ui.html");
        return "frame";
    }

    @GetMapping("/sys/druid")
    String druid(Model model) {
        model.addAttribute("menu_tree", ShiroUtils.getSession().getAttribute(Constants.MENU_TREE));
        model.addAttribute("username", ShiroUtils.getUser().getName());
        model.addAttribute("title", "数据库监控");
        model.addAttribute("url", "/druid/index.html");
        return "frame";
    }
}
