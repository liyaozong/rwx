package cn.whaleride.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class DeptEntity {
    private Long deptId;

    private Long parentId;

    private String name;

    private Integer orderNum;

    private Byte delFlag;
}