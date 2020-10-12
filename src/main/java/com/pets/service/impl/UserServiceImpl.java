package com.pets.service.impl;

import com.pets.dao.UserMapper;
import com.pets.pojo.User;
import com.pets.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Binshao
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;


    //查询用户
    public User selectOne(String number) {
        System.out.println("service number=>"+number);
        User user = new User();
        if (userMapper.selectOne(number) != null){
            user = userMapper.selectOne(number);
        }
        return user;
    }

    //添加用户
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    //更新个人信息
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    //修改密码
    public int updatePassword(String password, String number) {
        return userMapper.updatePassword(password,number);
    }
}
