package com.pets.service.impl;

import com.pets.dao.ForumMapper;
import com.pets.pojo.Forum;
import com.pets.pojo.PageBean;
import com.pets.service.ForumService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

/**
 * @author Binshao
 */
@Service
public class ForumServiceImpl implements ForumService {

    @Resource
    private ForumMapper forumMapper;


    public List<Forum> SelectAll() {
        return forumMapper.SelectAll();
    }

    public int addForum(Forum forum) {
        return forumMapper.addForum(forum);
    }

    public int delForum(int id) {
        return forumMapper.delForum(id);
    }

    public int selSum() {
        return forumMapper.selSum();
    }

    public PageBean<Forum> queryForum(int currentPage) {
        HashMap<String,Object> map = new HashMap<String,Object>();
        PageBean<Forum> pageBean = new PageBean<Forum>();
        //封装当前页数
        pageBean.setCurrPage(currentPage);
        //每页显示的数据
        int pageSize=5;
        pageBean.setPageSize(pageSize);
        //封装总记录数
        int totalCount = forumMapper.selSum();
        pageBean.setTotalCount(totalCount);
        //封装总页数
        double tc = totalCount;
        //向上取整
        Double num =Math.ceil(tc/pageSize);
        pageBean.setTotalPage(num.intValue());
        map.put("start",(currentPage-1)*pageSize);
        map.put("size", pageBean.getPageSize());
        //封装每页显示的数据
        List<Forum> lists = forumMapper.queryForum(map);
        pageBean.setLists(lists);
        return pageBean;

    }


}
