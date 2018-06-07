package com.hry.ssm.service;

import com.hry.ssm.pojo.User;

public interface UserService {
    // 用户注册方法
    void userRegist(User user);
    // 用户登录的方法
    User userLogin(long phone);
}
