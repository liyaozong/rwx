package cn.whaleride.service;

import cn.whaleride.entity.IEntity;
import cn.whaleride.mapper.IMapper;
import cn.whaleride.mapper.impl.BaseDaoImpl;

public interface BaseService<M extends IEntity,T extends IMapper<M>, D extends BaseDaoImpl<T,M>> {
    int insert(M model);

    int insertSelective(M model);

    int updateByPrimaryKeySelective(M model);

    int updateByPrimaryKey(M model);

    int deleteByPrimaryKey(Long id);

    M selectByPrimaryKey(Long id);
}
