package cn.whaleride.service.impl;

import cn.whaleride.service.SessionService;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.SessionDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class SessionServiceImpl implements SessionService {
    @Autowired
    private SessionDAO sessionDAO;

    /**
     * 获取在线用户session
     * @return
     */
    @Override
    public Collection<Session> getActiveSessions() {
        return sessionDAO.getActiveSessions();
    }

    /**
     * 强制下线
     * @param sessionId
     * @return
     */
    @Override
    public boolean forceLogout(String sessionId) {
        Session session = sessionDAO.readSession(sessionId);
        session.setTimeout(0);
        return true;
    }
}
