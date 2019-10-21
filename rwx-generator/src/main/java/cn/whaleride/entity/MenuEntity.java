package cn.whaleride.entity;

import java.util.Date;

public class MenuEntity {
    private Long menuId;

    private Long parentId;

    private String menuName;

    private String url;

    private String perms;

    private Integer type;

    private String icon;

    private Integer orderNum;

    private Integer status;

    private Long creatorId;

    private Date createTime;

    private Date modifiedTime;

    public MenuEntity(Long menuId, Long parentId, String menuName, String url, String perms, Integer type, String icon, Integer orderNum, Integer status, Long creatorId, Date createTime, Date modifiedTime) {
        this.menuId = menuId;
        this.parentId = parentId;
        this.menuName = menuName;
        this.url = url;
        this.perms = perms;
        this.type = type;
        this.icon = icon;
        this.orderNum = orderNum;
        this.status = status;
        this.creatorId = creatorId;
        this.createTime = createTime;
        this.modifiedTime = modifiedTime;
    }

    public Long getMenuId() {
        return menuId;
    }

    public Long getParentId() {
        return parentId;
    }

    public String getMenuName() {
        return menuName;
    }

    public String getUrl() {
        return url;
    }

    public String getPerms() {
        return perms;
    }

    public Integer getType() {
        return type;
    }

    public String getIcon() {
        return icon;
    }

    public Integer getOrderNum() {
        return orderNum;
    }

    public Integer getStatus() {
        return status;
    }

    public Long getCreatorId() {
        return creatorId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public Date getModifiedTime() {
        return modifiedTime;
    }
}