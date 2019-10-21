package cn.whaleride.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor
public class FileEntity {
    private Long id;

    private Integer type;

    private String filename;

    private String url;

    private Date createTime;
}