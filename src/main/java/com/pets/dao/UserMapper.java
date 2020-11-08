package com.pets.dao;

import com.pets.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


/**
 * @author Binshao
 */
public interface  UserMapper {

    //登录时查询用户
    @Select("select * from user where number = #{number}")
    User selectOne(@Param("number") String number);

    //注册用户
    int addUser(User user);

    //更新用户信息
    int updateUser(User user);

    //修改密码
    @Update("update user set password = #{password} where number = #{number}")
    int updatePassword(@Param("password") String password,@Param("number") String number);

}
