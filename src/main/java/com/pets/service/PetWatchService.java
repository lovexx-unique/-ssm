package com.pets.service;

import com.pets.pojo.PageBean;
import com.pets.pojo.PetWatch;

import java.util.List;
import java.util.Map;


/**
 * @author Binshao
 */
public interface PetWatchService {

    //查询全部信息
    List<PetWatch> selectAll();

    //公有多少数据
    int selSum(Map map);

    //查询信息分页
    PageBean<PetWatch> selectAllLimit(int currentPage,PetWatch petWatch,Integer a,Double b);

    //根据id查询
    PetWatch selectByPrimaryKey(Integer id);

    //更新信息
    int updateByNumber(PetWatch record);

    //新增动物
    int insert(PetWatch record);
}
