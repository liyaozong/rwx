package cn.whaleride.entity;

import java.util.Date;

public class UserzEntity implements IEntity {
    private Long userId;

    private String username;

    private String name;

    private String password;

    private String email;

    private String mobile;

    private Byte status;

    private Long creatorId;

    private Date createTime;

    private Date modifiedTime;

    private Long deptId;

    public UserzEntity(Long userId, String username, String name, String password, String email, String mobile, Byte status, Long creatorId, Date createTime, Date modifiedTime, Long deptId) {
        this.userId = userId;
        this.username = username;
        this.name = name;
        this.password = password;
        this.email = email;
        this.mobile = mobile;
        this.status = status;
        this.creatorId = creatorId;
        this.createTime = createTime;
        this.modifiedTime = modifiedTime;
        this.deptId = deptId;
    }

    public Long getUserId() {
        return userId;
    }

    public String getUsername() {
        return username;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public String getMobile() {
        return mobile;
    }

    public Byte getStatus() {
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

    public Long getDeptId() {
        return deptId;
    }
}