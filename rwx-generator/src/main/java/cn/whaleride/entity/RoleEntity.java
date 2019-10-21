package cn.whaleride.entity;

import java.util.Date;

public class RoleEntity {
    private Long roleId;

    private String roleName;

    private String remark;

    private Long creatorId;

    private Date createTime;

    private Date modifiedTime;

    public RoleEntity(Long roleId, String roleName, String remark, Long creatorId, Date createTime, Date modifiedTime) {
        this.roleId = roleId;
        this.roleName = roleName;
        this.remark = remark;
        this.creatorId = creatorId;
        this.createTime = createTime;
        this.modifiedTime = modifiedTime;
    }

    public Long getRoleId() {
        return roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public String getRemark() {
        return remark;
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