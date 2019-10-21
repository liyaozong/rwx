package cn.whaleride.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class RoleMenuEntity {
    private Long id;

    private Long roleId;

    private Long menuId;
}