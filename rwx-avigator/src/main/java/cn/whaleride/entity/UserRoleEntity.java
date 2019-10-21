package cn.whaleride.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class UserRoleEntity {
    private Long id;

    private Long userId;

    private Long roleId;
}