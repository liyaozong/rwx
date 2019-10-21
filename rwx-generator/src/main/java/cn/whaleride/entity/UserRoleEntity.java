package cn.whaleride.entity;

public class UserRoleEntity {
    private Long id;

    private Long userId;

    private Long roleId;

    public UserRoleEntity(Long id, Long userId, Long roleId) {
        this.id = id;
        this.userId = userId;
        this.roleId = roleId;
    }

    public Long getId() {
        return id;
    }

    public Long getUserId() {
        return userId;
    }

    public Long getRoleId() {
        return roleId;
    }
}