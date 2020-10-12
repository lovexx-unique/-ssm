package com.pets.service;

import com.pets.pojo.User;

/**
 * @author Binshao
 */

public interface UserService {
    //根据账户查询用户
    User selectOne(String number);

    //注册用户
    int addUser(User user);

    //更新个人信息
    int updateUser(User user);

    //修改密码
    int updatePassword(String password,String number);

}
