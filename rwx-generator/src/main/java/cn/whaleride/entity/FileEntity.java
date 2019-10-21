package cn.whaleride.entity;

import java.util.Date;

public class FileEntity {
    private Long id;

    private Integer type;

    private String filename;

    private String url;

    private Date createTime;

    public FileEntity(Long id, Integer type, String filename, String url, Date createTime) {
        this.id = id;
        this.type = type;
        this.filename = filename;
        this.url = url;
        this.createTime = createTime;
    }

    public Long getId() {
        return id;
    }

    public Integer getType() {
        return type;
    }

    public String getFilename() {
        return filename;
    }

    public String getUrl() {
        return url;
    }

    public Date getCreateTime() {
        return createTime;
    }
}