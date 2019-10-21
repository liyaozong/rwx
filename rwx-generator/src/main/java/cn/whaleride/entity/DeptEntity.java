package cn.whaleride.entity;

public class DeptEntity {
    private Long deptId;

    private Long parentId;

    private String name;

    private Integer orderNum;

    private Byte delFlag;

    public DeptEntity(Long deptId, Long parentId, String name, Integer orderNum, Byte delFlag) {
        this.deptId = deptId;
        this.parentId = parentId;
        this.name = name;
        this.orderNum = orderNum;
        this.delFlag = delFlag;
    }

    public Long getDeptId() {
        return deptId;
    }

    public Long getParentId() {
        return parentId;
    }

    public String getName() {
        return name;
    }

    public Integer getOrderNum() {
        return orderNum;
    }

    public Byte getDelFlag() {
        return delFlag;
    }
}