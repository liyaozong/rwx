package cn.whaleride.utils;

import cn.whaleride.entity.MenuEntity;
import cn.whaleride.entity.UserEntity;
import cn.whaleride.service.MenuService;
import cn.whaleride.service.UserService;
import cn.whaleride.vo.Tree;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.*;

public class ShiroUtils extends AuthorizingRealm {
    @Autowired
    private UserService userService;

    @Autowired
    private MenuService menuService;

    public static void login(AuthenticationToken token) {
        SecurityUtils.getSubject().login(token);
    }

    public static void logout() {
        SecurityUtils.getSubject().logout();
    }

    public static boolean isAuthenticated() {
        return SecurityUtils.getSubject().isAuthenticated();
    }

    public static UserEntity getUser() {
        Object object = SecurityUtils.getSubject().getPrincipal();
        return (UserEntity)object;
    }

    public static Session getSession() {
        return SecurityUtils.getSubject().getSession();
    }


    /**
     * 授权
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
//        UserEntity user = (UserEntity) principalCollection.getPrimaryPrincipal();
//        Long userId = user.getUserId();
        Long userId = ShiroUtils.getUser().getUserId();

        Set<String> perms = new HashSet<String>();
        //TODO
//        Set<String> perms = menuService.listPerms(userId);
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        info.setStringPermissions(perms);

        return info;
    }

    /**
     * 认证
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        String username = (String) authenticationToken.getPrincipal();
        String password = new String((char[]) authenticationToken.getCredentials());

        //查询用户信息
        UserEntity user = userService.get(username);

        //账号不存在，密码错误
        if (user == null || !password.equals(user.getPassword())) {
            throw new UnknownAccountException("账号或密码不正确");
        }

        //账号锁定
        if (user.getStatus() == 0) {
            throw new LockedAccountException("账号已被锁定,请联系管理员");
        }

        // 把当前用户的菜单树存入session
        List<MenuEntity> menuEntities = menuService.getByUserId(user.getUserId());
        List<Tree<MenuEntity>> tempList = new ArrayList<>();
        for (MenuEntity menuEntity : menuEntities) {
            Tree<MenuEntity> tree = new Tree<>();
            tree.setId(menuEntity.getMenuId().toString());
            tree.setParentId(menuEntity.getParentId().toString());
            tree.setText(menuEntity.getMenuName());
            Map<String, Object> attributes = new HashMap<>(2);
            attributes.put("url", menuEntity.getUrl());
            attributes.put("icon", menuEntity.getIcon());
            tree.setAttributes(attributes);

            tempList.add(tree);
        }
        SecurityUtils.getSubject().getSession().setAttribute(Constants.MENU_TREE, Tree.buildTree(tempList));

        return new SimpleAuthenticationInfo(user, password, getName());
    }
}
