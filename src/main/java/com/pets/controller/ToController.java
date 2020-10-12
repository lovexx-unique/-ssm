package com.pets.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Binshao
 */
@Controller
public class ToController {
    //跳转到注册界面
    @RequestMapping("/toAddUser")
    public String to(){
        return "register";
    }

    //跳转到修改个人信息界面
    @RequestMapping("/toUpdate")
    public String toUpdate(){
        return "updateUser";
    }

    //显示个人信息
    @RequestMapping("/toPersonalCenter")
    public String toPersonalCenter(){
        return "Personal_Center";
    }

    //跳转到登录页面
    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }
}
