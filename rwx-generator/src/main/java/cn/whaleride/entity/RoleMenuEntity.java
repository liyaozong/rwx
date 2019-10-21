package cn.whaleride.entity;

public class RoleMenuEntity {
    private Long id;

    private Long roleId;

    private Long menuId;

    public RoleMenuEntity(Long id, Long roleId, Long menuId) {
        this.id = id;
        this.roleId = roleId;
        this.menuId = menuId;
    }

    public Long getId() {
        return id;
    }

    public Long getRoleId() {
        return roleId;
    }

    public Long getMenuId() {
        return menuId;
    }
}