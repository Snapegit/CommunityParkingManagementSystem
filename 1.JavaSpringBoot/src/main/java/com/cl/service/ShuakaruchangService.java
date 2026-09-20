package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.ShuakaruchangEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ShuakaruchangView;


/**
 * 刷卡入场
 *
 * @author 
 * @email 
 * @date 2024-02-27 08:59:25
 */
public interface ShuakaruchangService extends IService<ShuakaruchangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShuakaruchangView> selectListView(Wrapper<ShuakaruchangEntity> wrapper);
   	
   	ShuakaruchangView selectView(@Param("ew") Wrapper<ShuakaruchangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShuakaruchangEntity> wrapper);
   	

}

