package cn.whaleride.mapper;

import cn.whaleride.entity.IEntity;

public interface IMapper<M extends IEntity> {
    int deleteByPrimaryKey(Long id);

    int insert(M record);

    int insertSelective(M record);

    M selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(M record);

    int updateByPrimaryKey(M record);
}
