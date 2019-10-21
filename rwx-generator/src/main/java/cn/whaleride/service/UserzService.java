package cn.whaleride.service;

import cn.whaleride.entity.UserzEntity;
import cn.whaleride.mapper.UserzMapper;
import cn.whaleride.mapper.impl.UserzDaoImpl;

import java.util.List;

public interface UserzService extends BaseService<UserzEntity, UserzMapper, UserzDaoImpl> {
    List<UserzEntity> selectUsers();
}
