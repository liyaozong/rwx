package cn.whaleride.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor
public class RoleEntity {
    private Long roleId;

    private String roleName;

    private String remark;

    private Long creatorId;

    private Date createTime;

    private Date modifiedTime;
}