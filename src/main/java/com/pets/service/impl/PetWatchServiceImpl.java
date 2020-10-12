package com.pets.service.impl;

import com.pets.dao.PetWatchMapper;
import com.pets.pojo.PageBean;
import com.pets.pojo.PetWatch;
import com.pets.service.PetWatchService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * @author Binshao
 */
@Service
public class PetWatchServiceImpl implements PetWatchService {

    @Resource
    private PetWatchMapper petWatchMapper;


    public List<PetWatch> selectAll() {
        return petWatchMapper.selectAll();
    }

    public int selSum(Map map) {
        return petWatchMapper.selSum(map);
    }

    public PageBean<PetWatch> selectAllLimit(int currentPage,PetWatch petWatch,Integer a,Double b) {
        HashMap<String,Object> map = new HashMap<String,Object>();
        PageBean<PetWatch> pageBean = new PageBean<PetWatch>();
        if (petWatch != null){
            if (!"".equals(petWatch.getSection())){
                map.put("section",petWatch.getSection());
            }
            if (!"".equals(petWatch.getAdoptionStatus())){
                map.put("adoptionStatus",petWatch.getAdoptionStatus());
            }
            if (!"".equals(petWatch.getAge())){
                map.put("age",petWatch.getAge());
                map.put("a",a);
            }
            if (!"".equals(petWatch.getWeight())){
                map.put("weight",petWatch.getWeight());
                map.put("b",b);
            }
        }
        //封装当前页数
        pageBean.setCurrPage(currentPage);
        //每页显示的数据
        int pageSize=16;
        pageBean.setPageSize(pageSize);
        //封装总记录数
        int totalCount = petWatchMapper.selSum(map);
        pageBean.setTotalCount(totalCount);
        //封装总页数
        double tc = totalCount;
        //向上取整
        Double num =Math.ceil(tc/pageSize);
        pageBean.setTotalPage(num.intValue());

        map.put("start",(currentPage-1)*pageSize);
        map.put("size", pageBean.getPageSize());
        //封装每页显示的数据
        List<PetWatch> lists = petWatchMapper.selectAllLimit(map);
        pageBean.setLists(lists);
        return pageBean;
    }

    public PetWatch selectByPrimaryKey(Integer id) {
        return petWatchMapper.selectByPrimaryKey(id);
    }

    public int updateByNumber(PetWatch record) {
        return petWatchMapper.updateByNumber(record);
    }

    public int insert(PetWatch record) {
        return petWatchMapper.insert(record);
    }
}
