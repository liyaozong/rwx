package cn.whaleride.service.impl;

import cn.whaleride.entity.UserzEntity;
import cn.whaleride.mapper.UserzMapper;
import cn.whaleride.mapper.impl.UserzDaoImpl;
import cn.whaleride.service.UserzService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserzServiceImpl extends BaseServiceImpl<UserzEntity, UserzMapper, UserzDaoImpl> implements UserzService {
    @Override
    public List<UserzEntity> selectUsers() {
        return this.dao.selectUsers();
    }
}
