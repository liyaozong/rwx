package cn.whaleride.entity;

import java.util.Date;

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

    public DictEntity(Long id, String name, String value, String type, String description, Long sort, Long parentId, Long creatorId, Date createTime, Date updateTime, Byte delFlag) {
        this.id = id;
        this.name = name;
        this.value = value;
        this.type = type;
        this.description = description;
        this.sort = sort;
        this.parentId = parentId;
        this.creatorId = creatorId;
        this.createTime = createTime;
        this.updateTime = updateTime;
        this.delFlag = delFlag;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getValue() {
        return value;
    }

    public String getType() {
        return type;
    }

    public String getDescription() {
        return description;
    }

    public Long getSort() {
        return sort;
    }

    public Long getParentId() {
        return parentId;
    }

    public Long getCreatorId() {
        return creatorId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public Byte getDelFlag() {
        return delFlag;
    }
}