package com.hry.ssm.service.impl;

import com.hry.ssm.mapper.UserMapper;
import com.hry.ssm.pojo.User;
import com.hry.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    /**
     * 用户注册功能的实现
     * @param user
     */
    @Override
    public void userRegist(User user) {
        userMapper.insert(user);
    }

    @Override
    public User userLogin(long phone) {
        return userMapper.selectByPhoneKey(phone);
    }

}
