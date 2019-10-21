package cn.whaleride.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor
public class DictEntity {
    private Long id;

    private String name;

    private String value;

    private String type;

    private String description;

    private Long sort;

    private Long parentId;

    private Long creatorId;

    private Date createTime;

    private Date updateTime;

    private Byte delFlag;
}