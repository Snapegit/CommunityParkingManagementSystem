package com.cl.dao;

import com.cl.entity.ShuakaruchangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ShuakaruchangView;


/**
 * 刷卡入场
 * 
 * @author 
 * @email 
 * @date 2024-02-27 08:59:25
 */
public interface ShuakaruchangDao extends BaseMapper<ShuakaruchangEntity> {
	
	List<ShuakaruchangView> selectListView(@Param("ew") Wrapper<ShuakaruchangEntity> wrapper);

	List<ShuakaruchangView> selectListView(Pagination page,@Param("ew") Wrapper<ShuakaruchangEntity> wrapper);
	
	ShuakaruchangView selectView(@Param("ew") Wrapper<ShuakaruchangEntity> wrapper);
	

}
