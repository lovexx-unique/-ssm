package com.pets.controller;

import com.pets.pojo.Forum;
import com.pets.service.ForumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @author Binshao
 */
@Controller
@RequestMapping("/forum")
public class ForumController {

    @Autowired
    //@Qualifier("forumServiceImpl")
    private ForumService forumService;

    //查询所有留言
    @RequestMapping("/all")
    public String selectAll(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage, Model model){
        model.addAttribute("pagemsg", forumService.queryForum(currentPage));
        return "forum";
    }

    //添加留言
    @RequestMapping("/add")
    public String addForum(Forum forum,Model model){
        if ("".equals(forum.getNumber()) || forum.getNumber() == null ){
            model.addAttribute("msg","您还没有登录，无法评论，请登录后在评论");
            return "login";
        }
        System.out.println(forum);
        forumService.addForum(forum);
        return "redirect:/forum/all";
    }

    //删除留言
    @RequestMapping("/del")
    public String delForum(int id){
        forumService.delForum(id);
        return "redirect:/forum/all";
    }
}
