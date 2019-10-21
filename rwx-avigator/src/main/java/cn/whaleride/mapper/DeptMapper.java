package cn.whaleride.mapper;

import cn.whaleride.entity.DeptEntity;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DeptMapper {
    int deleteByPrimaryKey(Long deptId);

    int insert(DeptEntity record);

    int insertSelective(DeptEntity record);

    DeptEntity selectByPrimaryKey(Long deptId);

    int updateByPrimaryKeySelective(DeptEntity record);

    int updateByPrimaryKey(DeptEntity record);
}