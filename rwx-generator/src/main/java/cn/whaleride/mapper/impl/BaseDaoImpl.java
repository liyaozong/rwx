package cn.whaleride.mapper.impl;

import cn.whaleride.entity.IEntity;
import cn.whaleride.mapper.IMapper;
import org.springframework.beans.factory.annotation.Autowired;

public class BaseDaoImpl<T extends IMapper<M>,M extends IEntity> implements IMapper<M> {
    @Autowired
    protected T t;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return t.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(M record) {
        return t.insert(record);
    }

    @Override
    public int insertSelective(M record) {
        return t.insertSelective(record);
    }

    @Override
    public M selectByPrimaryKey(Long id) {
        return t.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(M record) {
        return t.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(M record) {
        return t.updateByPrimaryKey(record);
    }
}
