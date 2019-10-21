package cn.whaleride.service.impl;

import cn.whaleride.entity.UserEntity;
import cn.whaleride.mapper.UserMapper;
import cn.whaleride.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public int add(UserEntity user) {
        return userMapper.insert(user);
    }

    @Override
    public UserEntity get(String username) {
        return userMapper.selectByUserName(username);
    }

    @Override
    public List<UserEntity> getAll() {
        return userMapper.selectAllUsers();
    }
}
