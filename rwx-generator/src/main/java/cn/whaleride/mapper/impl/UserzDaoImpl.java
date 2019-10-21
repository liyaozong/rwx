package cn.whaleride.mapper.impl;

import cn.whaleride.entity.UserzEntity;
import cn.whaleride.mapper.UserzMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserzDaoImpl extends BaseDaoImpl<UserzMapper, UserzEntity> implements UserzMapper {
    @Override
    public List<UserzEntity> selectUsers() {
        return this.t.selectUsers();
    }
}
