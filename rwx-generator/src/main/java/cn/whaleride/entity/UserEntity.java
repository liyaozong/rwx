package cn.whaleride.entity;

import java.util.Date;

public class UserEntity {
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

    private Long sex;

    private Date birth;

    private String picUrl;

    private String province;

    private String city;

    private String district;

    private String address;

    public UserEntity(Long userId, String username, String name, String password, String email, String mobile, Byte status, Long creatorId, Date createTime, Date modifiedTime, Long deptId, Long sex, Date birth, String picUrl, String province, String city, String district, String address) {
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
        this.sex = sex;
        this.birth = birth;
        this.picUrl = picUrl;
        this.province = province;
        this.city = city;
        this.district = district;
        this.address = address;
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

    public Long getSex() {
        return sex;
    }

    public Date getBirth() {
        return birth;
    }

    public String getPicUrl() {
        return picUrl;
    }

    public String getProvince() {
        return province;
    }

    public String getCity() {
        return city;
    }

    public String getDistrict() {
        return district;
    }

    public String getAddress() {
        return address;
    }
}