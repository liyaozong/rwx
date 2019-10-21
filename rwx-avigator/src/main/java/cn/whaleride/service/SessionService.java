package cn.whaleride.service;

import org.apache.shiro.session.Session;

import java.util.Collection;

public interface SessionService {
    Collection<Session> getActiveSessions();

    boolean forceLogout(String sessionId);
}
