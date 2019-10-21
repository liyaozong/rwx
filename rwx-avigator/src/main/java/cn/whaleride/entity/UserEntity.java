package cn.whaleride.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor
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
}