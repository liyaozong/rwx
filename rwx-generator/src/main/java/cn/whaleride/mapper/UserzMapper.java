package cn.whaleride.mapper;

import cn.whaleride.entity.UserzEntity;

import java.util.List;

public interface UserzMapper extends IMapper<UserzEntity> {
    List<UserzEntity> selectUsers();
}