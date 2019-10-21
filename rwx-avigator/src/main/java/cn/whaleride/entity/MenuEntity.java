package cn.whaleride.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor
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
}