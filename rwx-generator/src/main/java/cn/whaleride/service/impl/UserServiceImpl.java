package cn.whaleride.service.impl;

import cn.whaleride.entity.UserEntity;
import cn.whaleride.mapper.UserMapper;
import cn.whaleride.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public UserEntity selectById(Long id) {
        return userMapper.selectByPrimaryKey(id);
    }
}
