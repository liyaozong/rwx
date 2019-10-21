package cn.whaleride.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor
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
}