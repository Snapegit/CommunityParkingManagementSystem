package com.cl.dao;

import com.cl.entity.ShuakalichangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ShuakalichangView;


/**
 * 刷卡离场
 * 
 * @author 
 * @email 
 * @date 2024-02-27 08:59:25
 */
public interface ShuakalichangDao extends BaseMapper<ShuakalichangEntity> {
	
	List<ShuakalichangView> selectListView(@Param("ew") Wrapper<ShuakalichangEntity> wrapper);

	List<ShuakalichangView> selectListView(Pagination page,@Param("ew") Wrapper<ShuakalichangEntity> wrapper);
	
	ShuakalichangView selectView(@Param("ew") Wrapper<ShuakalichangEntity> wrapper);
	

}
