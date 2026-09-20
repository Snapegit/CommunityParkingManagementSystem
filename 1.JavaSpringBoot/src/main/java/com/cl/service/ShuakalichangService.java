package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.ShuakalichangEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ShuakalichangView;


/**
 * 刷卡离场
 *
 * @author 
 * @email 
 * @date 2024-02-27 08:59:25
 */
public interface ShuakalichangService extends IService<ShuakalichangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShuakalichangView> selectListView(Wrapper<ShuakalichangEntity> wrapper);
   	
   	ShuakalichangView selectView(@Param("ew") Wrapper<ShuakalichangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShuakalichangEntity> wrapper);
   	

}

