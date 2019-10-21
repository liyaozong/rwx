package cn.whaleride.service.impl;

import cn.whaleride.entity.IEntity;
import cn.whaleride.mapper.IMapper;
import cn.whaleride.mapper.impl.BaseDaoImpl;
import cn.whaleride.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;

public class BaseServiceImpl<M extends IEntity,T extends IMapper<M>, D extends BaseDaoImpl<T,M>> implements BaseService<M, T, D> {
    @Autowired
    protected D dao;

    @Override
    public int insert(M model) {
        return dao.insert(model);
    }

    @Override
    public int insertSelective(M model) {
        return dao.insertSelective(model);
    }

    @Override
    public int updateByPrimaryKeySelective(M model) {
        return dao.updateByPrimaryKeySelective(model);
    }

    @Override
    public int updateByPrimaryKey(M model) {
        return dao.updateByPrimaryKey(model);
    }

    @Override
    public int deleteByPrimaryKey(Long id) {
        return dao.deleteByPrimaryKey(id);
    }

    @Override
    public M selectByPrimaryKey(Long id) {
        return dao.selectByPrimaryKey(id);
    }
}
