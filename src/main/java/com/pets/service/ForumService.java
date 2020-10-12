package com.pets.service;

import com.pets.pojo.Forum;
import com.pets.pojo.PageBean;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author Binshao
 */
public interface ForumService {
    //查询全部留言
    List<Forum> SelectAll();
    //新增留言
    int addForum(Forum forum);
    //删除留言
    int delForum(int id);
    //公有多少数据
    int selSum();
    //分页查询
    PageBean<Forum> queryForum(int currentPage);
}
