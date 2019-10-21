package cn.whaleride.entity;

import java.util.Date;

public class RecordEntity {
    private Long id;

    private Long userId;

    private String username;

    private String operation;

    private Integer time;

    private String method;

    private String params;

    private String ip;

    private Date createTime;

    public RecordEntity(Long id, Long userId, String username, String operation, Integer time, String method, String params, String ip, Date createTime) {
        this.id = id;
        this.userId = userId;
        this.username = username;
        this.operation = operation;
        this.time = time;
        this.method = method;
        this.params = params;
        this.ip = ip;
        this.createTime = createTime;
    }

    public Long getId() {
        return id;
    }

    public Long getUserId() {
        return userId;
    }

    public String getUsername() {
        return username;
    }

    public String getOperation() {
        return operation;
    }

    public Integer getTime() {
        return time;
    }

    public String getMethod() {
        return method;
    }

    public String getParams() {
        return params;
    }

    public String getIp() {
        return ip;
    }

    public Date getCreateTime() {
        return createTime;
    }
}