package cn.whaleride.service;

import cn.whaleride.entity.UserEntity;

import java.util.List;

public interface UserService {
    int add(UserEntity user);

    UserEntity get(String username);

    List<UserEntity> getAll();
}
