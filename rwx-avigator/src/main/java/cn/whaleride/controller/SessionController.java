package cn.whaleride.controller;

import cn.whaleride.service.SessionService;
import cn.whaleride.utils.R;
import cn.whaleride.vo.Online;
import io.swagger.annotations.Api;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Api("会话管理")
@RequestMapping("/sys/session")
@Controller
public class SessionController {
    @Autowired
    SessionService sessionService;

    @GetMapping()
    String online() {
        return "system/session";
    }

    @GetMapping("/list")
    @ResponseBody
    R list() {
        Collection<Session> sessions = sessionService.getActiveSessions();
        List<Online> onlines = new ArrayList<>();
        for(Session session: sessions) {
            Online online = new Online();
            online.setId(session.getId().toString());
            online.setHost(session.getHost());
            online.setName((String) session.getAttribute(""));
            online.setLastAccessTime(session.getLastAccessTime());
            online.setStartTimestamp(session.getStartTimestamp());
            online.setTimeout(session.getTimeout());
            onlines.add(online);
        }
        Map<String, Object> data = new HashMap<>();
        data.put("data", onlines);
        return R.ok(data);
    }

    @GetMapping("/forceLogout/{sessionId}")
    @ResponseBody
    R forceLogout(@PathVariable("sessionId") String sessionId) {
        try {
            sessionService.forceLogout(sessionId);
            return R.ok();
        } catch (Exception e) {
            e.printStackTrace();
            return R.error();
        }
    }
}
