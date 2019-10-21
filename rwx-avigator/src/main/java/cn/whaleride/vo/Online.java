package cn.whaleride.vo;

import lombok.Data;

import java.util.Date;

/**
 * 在线用户
 */
@Data
public class Online {
    private String id;
    private String name;
    private String host;
    private Date startTimestamp;
    private Date lastAccessTime;
    private Long timeout;
}
