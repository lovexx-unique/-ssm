package com.pets.dao;
import org.apache.ibatis.annotations.Param;


import com.pets.pojo.PetWatch;

import java.util.List;
import java.util.Map;

/**
 * @author Binshao
 */
public interface PetWatchMapper {

    int insert(PetWatch record);

    PetWatch selectByPrimaryKey(Integer id);
    //更新信息
    int updateByNumber(PetWatch record);

    //查询全部信息
    List<PetWatch> selectAll();

    //公有多少数据
    int selSum(Map map);

    //查询信息分页
    List<PetWatch> selectAllLimit(Map map);

    PetWatch findAllByIdAndPetNumberAfter(@Param("id")Integer id,@Param("minPetNumber")Integer minPetNumber);

	;


}