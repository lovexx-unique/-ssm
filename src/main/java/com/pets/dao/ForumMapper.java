package com.pets.dao;


import com.pets.pojo.Forum;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

/**
 * @author Binshao
 */
public interface ForumMapper {

    //查询全部留言
    @Select("select id,number,content from forum")
    List<Forum> SelectAll();

    //新增留言
    @Insert("insert into forum (number, content) value (#{number},#{content})")
    int addForum(Forum forum);

    //删除留言
    @Delete("delete from forum where id = #{id}")
    int delForum(int id);

    //共有多少条数据
    @Select("select count(number) from forum")
    int selSum();

    //分页查询
    @Select("select id,number,content from forum order by id desc  limit #{start},#{size}")
    List<Forum> queryForum(Map map);
}
