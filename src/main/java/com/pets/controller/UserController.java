package com.pets.controller;

import com.pets.pojo.User;
import com.pets.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;


/**
 * @author Binshao
 */
@Controller
public class UserController {


    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;


    //响应登录
    @RequestMapping("/user/login")
    public String test(String number, String password, HttpSession session,Model model){
        User user = userService.selectOne(number);
        //判断是否查到用户
        if (user != null){
            //判断输入的密码是否正确
            if (password.equals(user.getPassword())){
                session.setAttribute("user",user);
                return "../index";
            }else {
                model.addAttribute("msg","密码输入错误");
                return "login";
            }
        }
        model.addAttribute("msg","该用户不存在，请进行注册");
        return "login";
    }

    //修改密码
    @RequestMapping("/user/updatePassword")
    public String updatePassword(String password, String number,HttpSession session,Model model){
        userService.updatePassword(password,number);
        session.invalidate();
        model.addAttribute("msg","密码修改成功，请重新登陆");
        return "login";
    }
    
    //响应注册
    @RequestMapping("/user/add")
    public String addUser(User user,Model model){
        userService.addUser(user);
        model.addAttribute("msg",user.getNumber());
        return "registerSuccess";
    }

    //更新个人信息
    @RequestMapping("/user/updateUser")
    public String updateUser(User user,HttpSession session){
        System.out.println(user);
        userService.updateUser(user);
        User user1 = userService.selectOne(user.getNumber());
        session.setAttribute("user",user1);
        return "Personal_Center";
    }

    //注销登录
    @RequestMapping("/outLogin")
    public String outLogin(HttpSession session){
        session.invalidate();
        return "../index";
    }

    //响应ajax 进行验证用户名的正确性
    @ResponseBody
    @RequestMapping("/verificationName")
    public String verificationName(String number) {
        //设置全局变量msg
        String msg = "";
        //首先判断 是否输入用户名 或者用户名是否是空字符串
        if (number != null && !"".equals(number)){
            System.out.println(1);
            //根据输入的用户名 在数据库中查询是否有同名用户
            //如果有的话回应用户名冲突  如果没有回应OK
            if (!number.equals(userService.selectOne(number).getNumber())){
                System.out.println(2);
                msg = "ok";
            }else {
                System.out.println(3);
                msg ="chongTu";
            }
        }else {//没有用户名的话回应  用户名不能为空
            System.out.println(5);
            msg = "null";
        }
        System.out.println(6);
        return msg;
    }
    //响应ajax  进行密码和确认密码的判断
    @ResponseBody
    @RequestMapping("/verificationPwd")
    public String verificationPwd(String password,String newPassword){
        //定义全局变量 msg
        String msg = "";
        //首先判断 密码是否填写
        if (password != null && !"".equals(password)){
            msg = "ok";
            //判断确认密码是否填写
            if (newPassword != null){
                //判断密码和确认密码是否相同
                if (password.equals(newPassword)){
                    msg = "ok";
                }else {
                    msg = "null";
                }
            }
        }else {
            msg = "no";
        }
        return msg;
    }

    @ResponseBody
    @RequestMapping("/verifyPassword")
    public String verifyPassword(String number,String oldPassword,String password,String newPassword){
        System.out.println("number=>" + number);
        System.out.println("oldPassword=>" + oldPassword);
        System.out.println("password=>" + password);
        System.out.println("newPassword=>" + newPassword);
        String msg = "";
        if (oldPassword != null && !"".equals(oldPassword)){
            User user = userService.selectOne(number);
            if (user.getPassword().equals(oldPassword)){
                System.out.println(1);
                msg = "ok";
            }else {
                System.out.println(2);
                msg = "no";
            }
        }

        if (password != null && !"".equals(password)){
            msg = "ok1";
        }

        if (newPassword != null && !"".equals(newPassword)){
            if (newPassword.equals(password)){
                msg = "ok2";
            }else {
                msg = "noo";
            }

        }

        return msg;
    }

}
