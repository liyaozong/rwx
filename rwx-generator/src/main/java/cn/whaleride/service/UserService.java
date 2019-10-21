package cn.whaleride.service;

import cn.whaleride.entity.UserEntity;

public interface UserService {
    UserEntity selectById(Long id);
}
