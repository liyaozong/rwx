package cn.whaleride.controller;

import cn.whaleride.annotation.Log;
import cn.whaleride.entity.MenuEntity;
import cn.whaleride.service.MenuService;
import cn.whaleride.utils.Constants;
import cn.whaleride.utils.PasswordUtils;
import cn.whaleride.utils.R;
import cn.whaleride.utils.ShiroUtils;
import com.google.code.kaptcha.Producer;
import io.swagger.annotations.Api;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.InvalidSessionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;

@Api("登录控制器")
@Controller
public class LoginController {
    @Autowired
    private Producer producer;

    @GetMapping("/")
    String welcome() {
        return "redirect:/login";
    }

    @GetMapping("/login")
    String login() {
        if (ShiroUtils.isAuthenticated()) {
            return "redirect:/admin";
        }
        return "system/login";
    }

    @Log("登入")
    @PostMapping("/login")
    @ResponseBody
    R ajaxLogin(String username, String password, String captcha) {
        //取出验证码
        try {
            Object kaptcha = ShiroUtils.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
            if(kaptcha == null) {
                return R.error("验证码已失效");
            } else {
                ShiroUtils.getSession().removeAttribute(Constants.KAPTCHA_SESSION_KEY);
                if (!captcha.equalsIgnoreCase(kaptcha.toString())) {
                    return R.error("验证码不正确");
                }
            }
        } catch (InvalidSessionException e) {
            return R.error("当前会话已失效，请刷新");
        }

        password = PasswordUtils.encrypt(username, password);
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        try {
            ShiroUtils.login(token);
            return R.ok();
        } catch (AuthenticationException e) {
            return R.error("用户或密码错误");
        }
    }

    @Log("登出")
    @GetMapping("/logout")
    String logout() {
        ShiroUtils.logout();
        return "redirect:/login";
    }

    @GetMapping("captcha.jpg")
    public void captcha(HttpServletResponse response) throws IOException {
        response.setHeader("Cache-Control", "no-store, no-cache");
        response.setContentType("image/jpeg");

        String text = producer.createText();
        BufferedImage image = producer.createImage(text);
        //保存到shiro session
        ShiroUtils.getSession().setAttribute(Constants.KAPTCHA_SESSION_KEY, text);

        ServletOutputStream out = response.getOutputStream();
        ImageIO.write(image, "jpg", out);
    }
}